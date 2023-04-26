package;

import flixel.FlxG;
import flixel.FlxGame;
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

		addChild(new FlxGame(320, 240, MenuState, false)); // what does false do again?
	}
}
