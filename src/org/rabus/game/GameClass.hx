package org.rabus.game;

import flash.Lib;
import flixel.FlxGame;
import org.rabus.game.states.MenuState;
import org.rabus.game.states.GameState;
import org.rabus.game.utils.Reg;
	
class GameClass extends FlxGame
{	
	public function new()
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;
		
		var ratioX:Float = stageWidth / (Reg.screenWidth / Reg.screenZoom);
		var ratioY:Float = stageHeight / (Reg.screenHeight / Reg.screenZoom);
		var ratio:Float = Math.min(ratioX, ratioY);
		
		var fps:Int = 60;
		
		super(Math.ceil(stageWidth / ratio), Math.ceil(stageHeight / ratio), GameState, ratio, fps, fps);
	}
}
