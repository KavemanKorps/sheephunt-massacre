package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Shooter extends FlxSprite
{
	var isForward:Bool;
	var isUp:Bool;
	var isDown:Bool;

	public function new(x:Float = 0, y:Float = 0)
	{
		// This initializes this sprite object with the graphic of the ship and
		// positions it where I want it. ARGS: (x, y, image)
		// super(FlxG.width / 2 - 6, FlxG.height - 12, "assets/ship.png");

		super(x, y);
		isForward = true;
		makeGraphic(10, 10, FlxColor.BLUE);
	}

	// basic game loop
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		if (FlxG.keys.justPressed.SPACE)
		{
			// Space bar was pressed! FIRE A BULLET
			var playState:PlayState = cast FlxG.state; // what this do?
			var bullet:FlxSprite = playState.bullets.recycle();

			if (FlxG.keys.anyPressed([DOWN, S]))
			{
				// TODO
				bullet.reset(x + width / 2 - bullet.width / 2, y + 10);
				bullet.velocity.x = 140;
			}
			// If the player is pressing right, then right 100
			else if (FlxG.keys.anyPressed([UP, W]) && FlxG.keys.anyPressed([RIGHT, D]))
			{
				// TODO
				bullet.reset(x + width / 2 - bullet.width / 2, y);
				bullet.velocity.x = 140;
				bullet.velocity.y = -110;
			}
			else if (FlxG.keys.anyPressed([UP, W]))
			{
				// TODO
				bullet.reset(x + width / 2 - bullet.width / 2, y);
				bullet.velocity.y = -130;
			}
			else
			{
				bullet.reset(x + width / 2 - bullet.width / 2, y);
				bullet.velocity.x = 140;
			}
		}
		super.update(elapsed); // why do we need this twice?
	}
}
