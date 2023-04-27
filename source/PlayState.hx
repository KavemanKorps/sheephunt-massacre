package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tile.FlxTilemap;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var _sheep:Shooter;

	// var _orcs:FlxTypedGroup<Orc>;
	// INSTANTIATE ALL OUR STUFF HERE:
	override public function create()
	{
		// i will probably need to instantiate my bullets and add them to the state first.
		FlxG.mouse.visible = false;
		// REMEMBER: res is 240x160. Put him in bottom left corner:
		_sheep = new Shooter(30, 130);
		add(_sheep);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
