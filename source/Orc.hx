package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Orc extends FlxSprite
{
	// public function new(x:Float = 0, y:Float = 0, string:EnemyType)
	override public function new(x:Int = 0, y:Int = 0) // public function new(x:Int = 0, y:Int = 0)
	{
		// super(x, y, Reg.enemyImage);
		// what is super() again? so that the FlxSprite can actually be drawn lol, easy.
		super(x, y);
	}

	// public function initBitch(x:Int, y:Int)
	// {
	// 	reset(x, y);
	// }

	function updateMovement()
	{
		velocity.x = -70;
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		updateMovement();
	}

	public function initBitch(arg0:Int, arg1:Int)
	{
		reset(arg0, arg1);
	}
}
