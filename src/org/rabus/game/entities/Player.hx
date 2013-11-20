package org.rabus.game.entities;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.particles.FlxEmitter;
import flixel.util.FlxAngle;
import flixel.group.FlxGroup;
import flixel.util.FlxPoint;
import flixel.util.FlxSpriteUtil;
import org.rabus.game.utils.Reg;
import flixel.ui.FlxVirtualPad;
import flixel.ui.FlxButton;

/**
 * ...
 * @author Adam Rabiega
 */
class Player extends Entity
{
	private var _isReadyToDuck:Bool = true;
	private var _isReadyToJump:Bool = true;
	
	private var _jumpPower:Int = 210;
	private var _maxHealth = 100;
	private var _pad:FlxVirtualPad;
	
	public var playerMidPoint:FlxPoint;
	
	private var _bullets:FlxGroup;
	private var _gibs:FlxEmitter;
	private var _restart:Float;
	private var _spawnPoint:FlxPoint;
	private var _reloadTimer:Float;
	private var _reloadMax:Float;
	
	private static var state:Int = Reg.NORMAL; // ACID = 0, ICE = 11, FIRE = 22;

	// This is the player object class.  Most of the comments I would put in here
	// would be near duplicates of the Enemy class, so if you're confused at all
	// I'd recommend checking that out for some ideas!
	public function new(X:Int, Y:Int, bullets:FlxGroup, gibs:FlxEmitter, pad:FlxVirtualPad)
	{
		super(X, Y);
		
		_pad = pad;
		
		this.loadGraphic("assets/player.png", true, true, 16, 20);
		
		// player setup		
		health = _maxHealth;
		_spawnPoint = new FlxPoint(X, Y);
		_bullets = bullets;
		_gibs = gibs;
		
		playerMidPoint = new FlxPoint();
		_restart = 0;
		_reloadTimer = 0;
		_reloadMax = 0.2;	
		
		//bounding box tweaks
		width = 14;
		height = 18;
		offset.x = 1;
		offset.y = 1;
		
		//basic player physics
		var runSpeed:Int = 80;
		drag.x = runSpeed * 8;
		acceleration.y = 420;
		maxVelocity.x = runSpeed;
		maxVelocity.y = _jumpPower;
		
		//animations
		animation.add("idle", [0 + state]);
		animation.add("run", [9 + state, 10 + state, 1 + state], 12);
		animation.add("jump", [2 + state]);
		animation.add("duck", [3 + state]);
	}
	
	override public function update():Void
	{
		// AIVE CHECK AND RESPAWN
		if (!alive) 
		{
			_restart += FlxG.elapsed;
			if (_restart > 2) 
			{
				respawn();
			}
			return;
		}
		
		getMidpoint(playerMidPoint);
		
		// MOVEMENT
		acceleration.x = 0;
		
		if (FlxG.keyboard.pressed("LEFT", "A") || _pad.buttonLeft.status == FlxButton.PRESSED)
		{
			facing = FlxObject.LEFT;
			acceleration.x -= drag.x;
		}
		else if (FlxG.keyboard.pressed("RIGHT", "D") || _pad.buttonRight.status == FlxButton.PRESSED)
		{
			facing = FlxObject.RIGHT;
			acceleration.x += drag.x;
		}
		
		if (((FlxG.keyboard.justPressed("UP", "W", "SPACE") || _pad.buttonUp.status == FlxButton.PRESSED) && _isReadyToJump) && velocity.y == 0)
		{
			velocity.y = -_jumpPower;
		}
		
		if ((FlxG.keyboard.pressed("DOWN", "S") || _pad.buttonDown.status == FlxButton.PRESSED) && _isReadyToDuck)
		{
			width = 14;
			height = 14;
			offset.x = 1;
			offset.y = 6;
		}
		else
		{
			width = 14;
			height = 18;
			offset.x = 1;
			offset.y = 1;
		}
		
		// SHOOTING
		_reloadTimer += FlxG.elapsed;
		var shotReady:Bool = false;
		if (_reloadTimer >= _reloadMax) 
		{
			_reloadTimer = 0;
			shotReady = true;
		}
		if (FlxG.mouse.justPressed || (shotReady && FlxG.mouse.pressed)) 
		{
			shoot(FlxAngle.angleBetweenMouse(this));
		}
		else if (FlxG.keyboard.justPressed("LEFT") || (shotReady && FlxG.keys.justPressed.LEFT)) 
		{
			shoot(Math.PI);
		}
		else if (FlxG.keyboard.justPressed("RIGHT") || (shotReady && FlxG.keys.justPressed.RIGHT)) 
		{
			shoot(0);
		}
		else if (FlxG.keyboard.justPressed("UP") || (shotReady && FlxG.keys.justPressed.UP)) 
		{
			shoot(Math.PI * 1.5);
		}
		else if (FlxG.keyboard.justPressed("DOWN") || (shotReady && FlxG.keys.justPressed.DOWN)) 
		{
			shoot(Math.PI * 0.5);
		}
		
		// STATE AND SKILLS CHANGING
		if (FlxG.keyboard.justPressed("J"))
		{
			setState(Reg.ACID);
		}
		if (FlxG.keyboard.justPressed("K"))
		{
			setState(Reg.ICE);
		}
		if (FlxG.keyboard.justPressed("L"))
		{
			setState(Reg.FIRE);
		}
			
		
		// ANIMATION
		if (FlxG.keyboard.pressed("DOWN", "S") || _pad.buttonDown.status == FlxButton.PRESSED)
		{
			_isReadyToJump = false; // Can't jump while ducking
			animation.play("duck");
			
			//_jumpPower = 250; // Jump higher after ducking
		}
		else
		{
			if (velocity.y != 0)
			{
				_isReadyToJump = false;
				animation.play("jump");
			}
			else if (velocity.x == 0)
			{
				_isReadyToJump = true;
				animation.play("idle");
			}
			else
			{
				_isReadyToJump = true;
				animation.play("run");
			}
		}
		
		// TESTING FEATURES
		if (FlxG.keyboard.justPressed("F1"))
		{
			FlxG.cameras.shake(0.005, 0.35);
			FlxG.cameras.flash(0xffDB3624, 0.35);
		}
		if (FlxG.keyboard.justPressed("F2"))
		{
			FlxSpriteUtil.flicker(this, 0.2);
		}
		if (FlxG.keyboard.justPressed("F3"))
		{
			_gibs.at(this);
			_gibs.start(true, 5, 0, 35);	
		}
		if (FlxG.keyboard.justPressed("F4"))
		{
			FlxG.camera.fade(0xff000000, 1, true);
		}
			
		super.update();
	}
	
	override public function hurt(damage:Float):Void
	{
		FlxSpriteUtil.flicker(this, 0.2);
		super.hurt(damage);
	}

	override public function kill():Void
	{
		if(!alive)
		{
			return;
		}

		super.kill();

		FlxSpriteUtil.flicker(this, 0);
		//FlxG.play('Explosion', 0.6);
		exists = true;
		visible = false;
		//velocity.make();
		acceleration.x = 0;

		_gibs.at(this);
		_gibs.start(true, 5, 0, 35);

		FlxG.camera.shake(0.05, 0.4);
	}



	private function respawn() 
	{
		reset(_spawnPoint.x, _spawnPoint.y);
		acceleration.x = 0;
		//velocity.make();
		_restart = 0;
		exists = true;
		visible = true;
		health = _maxHealth;
		_reloadTimer = 0;
		FlxSpriteUtil.flicker(this, 1);
	}

	private function shoot(angle:Float) 
	{
	_reloadTimer = 0;

	// Make the shoot sound.
	//var soundId:String = (FlxG.timeScale < 0.7) ? 'ShootSlow' : 'Shoot';
	//FlxG.play(soundId, 0.5);

	// Fire the bullet.
	var bullet:Bullet = cast(_bullets.recycle(Bullet), Bullet);
	bullet.speed = 350;
	bullet.shoot(playerMidPoint, angle);
	}	
	
	private function setState(newState:Int):Void
	{
		state = newState;
		animation.destroyAnimations();
		animation.add("idle", [0 + state]);
		animation.add("run", [9 + state, 10 + state, 1 + state], 12);
		animation.add("jump", [2 + state]);
		animation.add("duck", [3 + state]);
	}
	
	private function isPressed(key:String, once:Bool):Bool // Function for unification controls of various devices
	{
		if (once) // If was just pressed
		{
			if (FlxG.keyboard.justPressed(key))
			{
				
			}
		}
		else // If is still pressed
		{
			
		}
		
		return false; // False if key in question not pressed
	}
}