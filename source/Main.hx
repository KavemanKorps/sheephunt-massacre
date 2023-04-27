package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.ui.FlxButton;
import flixel.util.FlxSave;
import openfl.display.Sprite;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		// PARAMS: new(gameWidth:Int = 0, gameHeight:Int = 0, ?initialState:Class<FlxState>, updateFramerate:Int = 60,
		// drawFramerate:Int = 60, skipSplash:Bool = false, startFullscreen:Bool = false)
		addChild(new FlxGame(320, 240, MenuState, false)); // what does false do again?
	}
}
