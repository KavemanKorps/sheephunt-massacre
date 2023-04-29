package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class House extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		makeGraphic(15, 160, FlxColor.PURPLE);
	}
}
