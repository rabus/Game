package org.rabus.game.states;

import flixel.group.FlxGroup;
import openfl.Assets;
import flash.events.Event;
import flash.Lib;
import flixel.addons.tile.FlxCaveGenerator;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.ui.FlxSlider;
import flixel.util.FlxColor;
import flixel.util.FlxMath;
import flixel.util.FlxPoint;
import flixel.util.FlxRandom;
import flixel.util.FlxSave;
import flixel.util.FlxSpriteUtil;
import haxe.Timer;
import org.rabus.game.entities.Player;
import org.rabus.game.utils.Reg;
import flixel.effects.particles.FlxEmitter;
import flixel.ui.FlxVirtualPad;
import flixel.ui.FlxButton;
//import flixel.ui.FlxAnalog;

class GameState extends FlxState
{
	private var _player:Player;
	private var _map:FlxTilemap;
	private var _bg:FlxSprite;
	private var _playerGibs:FlxEmitter;
	private var _enemies:FlxGroup;
	private var _enemyBullets:FlxGroup;
	private var _bullets:FlxGroup;
	private var _darkness:FlxSprite;
	
	private var _pad:FlxVirtualPad;
	//private var _analog:FlxAnalog;
	
	// Collision groups
	private var _hazards:FlxGroup;
	private var _objects:FlxGroup;
	private var _playerStructures:FlxGroup;
	
	private var _playerSpawn:FlxPoint;
	private var _spawnPoints:Array<FlxPoint>;
	
	override public function create():Void 
	{
		FlxG.cameras.bgColor = 0xff131c1b;
		//FlxG.mouse.useSystemCursor = true;
		
		#if !FLX_NO_MOUSE
        FlxG.mouse.show();
        #end
		
		//_analog = new FlxAnalog(200, 200);
		//add(_analog);
		_pad = new FlxVirtualPad(FlxVirtualPad.DPAD_FULL, FlxVirtualPad.ACTION_NONE);
		
		// background
		_bg = new FlxSprite(0, 0, "assets/bg_cave.png");
		_bg.scale.set(4.0, 4.0);
		_bg.scrollFactor.set(0.6, 0.6);
		add(_bg);
		
		_darkness = new FlxSprite(0,0);
		_darkness.makeGraphic(FlxG.width, FlxG.height, 0x00000000);
		_darkness.scrollFactor.set();
		_darkness.blend = flash.display.BlendMode.MULTIPLY;
		add(_darkness);

		_playerSpawn = new FlxPoint();
		_spawnPoints = [];
		
		// setup gibs
		_playerGibs = new FlxEmitter();
		_playerGibs.setXSpeed(-150, 150);
		_playerGibs.setYSpeed(-200, 0);
		_playerGibs.setRotation( -720, -720);
		_playerGibs.gravity = 360;
		_playerGibs.bounce = 0.5;
		_playerGibs.makeParticles('assets/player_gibs.png', 70, 16, true, 0.5);
		add(_playerGibs);
		
		// setup groups
		_bullets = new FlxGroup(20);  //TODO: Test how big this pool should be.
		//_enemyBullets = new FlxGroup(100);
		add(_bullets);
		
		
		// load up the _map
        _map = new FlxTilemap();
		_map.loadMap(Assets.getText("assets/map.txt"), "assets/tiles.png");
		add(_map);
		
		// add _player to stage
		_player = new Player(16, 16, _bullets, _playerGibs, _pad);
		add(_player);
		
		// Collision groups
		_objects = new FlxGroup();
		_objects.add(_player);
		_objects.add(_playerGibs);
		//_objects.add(_enemies);
		_objects.add(_bullets);
		
		// Camera setup
		FlxG.camera.setBounds(0, 0, _map.width, _map.height);
		FlxG.worldBounds.set(0, 0, _map.width, _map.height);
		FlxG.camera.follow(_player, FlxCamera.STYLE_PLATFORMER);
		
		//add(_pad); // Add virtual pad
		
		super.create();
		
		FlxG.camera.fade(0xff000000, 1, true); // Fade in game scene
	}
	
	override public function update():Void
	{
		FlxG.collide(_map, _objects);
		//FlxG.collide(_map, _gibsGroup);
		
		//FlxSpriteUtil.screenWrap(_player);
		
		super.update();
	}
}