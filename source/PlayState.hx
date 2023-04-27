package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 32);
		text.screenCenter();
		add(text);
	}
}
