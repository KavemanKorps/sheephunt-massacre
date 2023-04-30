package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

enum OrcType
{
	GROUND,
	CRAWL,
	FLY
}

class Orc extends FlxSprite
{
	public var type(default, null):EnemyType;

	public function new(x:Float = 0, y:Float = 0, type:EnemyType)
	{
		super(x, y);
		this.type = type;

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
