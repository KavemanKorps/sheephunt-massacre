package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Orc extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
		makeGraphic(10, 10, FlxColor.BLUE);

		// FlxG.random.int(dists);

		velocity.x = -70;
	}

	public function init(x:Float, y:Float)
	{
		reset(x, y);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
