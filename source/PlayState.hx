package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	public var bullets:FlxTypedGroup<FlxSprite>;

	var _sheep:Shooter;
	var _vsBullets:FlxGroup;

	var _orcs:FlxTypedGroup<Orc>;

	override public function create()
	{
		FlxG.mouse.visible = false;

		var numBullets:Int = 8;
		bullets = new FlxTypedGroup(numBullets);
		var sprite:FlxSprite;

		for (i in 0...numBullets)
		{
			sprite = new FlxSprite(-100, -100);
			sprite.makeGraphic(2, 8);
			sprite.exists = false;

			bullets.add(sprite);
		}
		add(bullets);

		// ORC SPAWN STUFF:
		var numOrcs:Int = 20;
		_orcs = new FlxTypedGroup(numOrcs);
		var o:Orc;

		for (i in 0...numOrcs)
		{
			o = new Orc(240 + (i % 10) * 32, 100 + Std.int(i / 10) * 32);

			_orcs.add(o);
		}
		add(_orcs);

		_sheep = new Shooter(30, 130);
		add(_sheep);

		_vsBullets = new FlxGroup();
		_vsBullets.add(_orcs);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		FlxG.overlap(bullets, _vsBullets, stuffHitStuff);
		super.update(elapsed);
	}

	function stuffHitStuff(Object1:FlxObject, Object2:FlxObject):Void
	{
		Object1.kill();
		Object2.kill();
	}
}
