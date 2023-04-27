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
	// BULLETS
	public var bullets:FlxTypedGroup<FlxSprite>;

	var _sheep:Shooter;
	var _vsBullets:FlxGroup;

	var _orcs:FlxTypedGroup<Orc>;

	// INSTANTIATE ALL OUR STUFF HERE:
	override public function create()
	{
		FlxG.mouse.visible = false;

		// Instantiate player bullets, then initialize the array containing the player bullets
		var numBullets:Int = 8;
		bullets = new FlxTypedGroup(numBullets);
		var sprite:FlxSprite;

		// Create 8 bullets for the player to recycle
		for (i in 0...numBullets)
		{
			// Instantiate a new sprite offscreen
			sprite = new FlxSprite(-100, -100);
			sprite.makeGraphic(2, 8);
			sprite.exists = false;
			// Add it to the group of player bullets sprites
			bullets.add(sprite);
		}
		add(bullets);

		// add the orcs:
		var numOrcs:Int = 20;
		_orcs = new FlxTypedGroup(numOrcs);
		var o:Orc;

		for (i in 0...numOrcs)
		{
			// Orc() args: (x, y)
			// i need to position them off-screen to the right, at three different heights (2 air, 1 ground)
			// o = new Orc(240 + (i % 10) * 32, 100 + Std.int(i / 10) * 32);
			o = new Orc();
			_orcs.add(o);
		}
		add(_orcs);

		_sheep = new Shooter(30, 130);
		add(_sheep);

		// This "meta-group" stores the things the player bullets can shoot.
		_vsBullets = new FlxGroup();
		_vsBullets.add(_orcs);

		super.create();
	}

	// MAIN GAME LOOP, where all the logic itself is done.
	override public function update(elapsed:Float)
	{
		// if bullets hit enemy, kill it.
		FlxG.overlap(bullets, _vsBullets, stuffHitStuff);
		super.update(elapsed);
	}

	// func kills both the enemy and the bullet that hit it.
	function stuffHitStuff(Object1:FlxObject, Object2:FlxObject):Void
	{
		Object1.kill();
		Object2.kill();
	}
}
