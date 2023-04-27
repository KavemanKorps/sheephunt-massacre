package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Orc extends FlxSprite
{
	var _originalX:Int;

	public function new(x:Int, y:Int)
	{
		super(x, y);
		makeGraphic(10, 10, FlxColor.BLUE);

		_originalX = x;
		velocity.x = -10;
		// This initializes this sprite object with the graphic of the ship and
		// positions it where I want it. ARGS: (x, y, image)
		// super(FlxG.width / 2 - 6, FlxG.height - 12, "assets/ship.png");
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
