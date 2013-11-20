package org.rabus.game.states;

import openfl.Assets;
import flash.geom.Rectangle;
import flash.net.SharedObject;
import flixel.ui.FlxButton;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxPath;
import flixel.util.FlxSave;
import flixel.text.FlxText;
import flixel.util.FlxMath;

class MenuState extends FlxState
{
    /**
     * Function that is called up when to state is created to set it up.
     */
    override public function create():Void
    {
        // Set a background color
        FlxG.cameras.bgColor = 0xff131c1b;
        // Show the mouse (in case it hasn't been disabled)
        #if !FLX_NO_MOUSE
        FlxG.mouse.show();
        #end
 
        //Lets say Hello by using add with a new FlxText :)
        add(new FlxText(FlxG.width/2,0,100,"Menu!"));
         
        super.create();
    }
     
    /**
     * Function that is called when this state is destroyed - you might want to
     * consider setting all objects this state uses to null to help garbage collection.
     */
    override public function destroy():Void
    {
        super.destroy();
    }
 
    /**
     * Function that is called once every frame.
     */
    override public function update():Void
    {
		if (FlxG.mouse.justPressed)
		{
			FlxG.switchState(new GameState());
		}
        super.update();
    }  
}