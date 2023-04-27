package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Shooter extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		// This initializes this sprite object with the graphic of the ship and
		// positions it where I want it. ARGS: (x, y, image)
		// super(FlxG.width / 2 - 6, FlxG.height - 12, "assets/ship.png");

		super(x, y);
		makeGraphic(10, 10, FlxColor.BLUE);
	}
}
