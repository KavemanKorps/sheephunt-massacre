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

// TODO: IF SHOOTER GETS TOUCHED BY ENEMY, DIE. DONE
class PlayState extends FlxState
{
	public var enemiesToSpawn:Int = 0;

	public var bullets:FlxTypedGroup<FlxSprite>;

	var _sheep:Shooter; // WE ARE SIMPLY INITIALIZING OUR VAR. THE ARGS PASSED BELOW v
	var _vsBullets:FlxGroup;

	var _orcs:FlxTypedGroup<Orc>;

	var _house:House;

	// TO SHOW AT THE END OF EVERY ROUND:
	var won:Bool;
	var ending:Bool;

	override public function create()
	{
		FlxG.mouse.visible = false;

		_house = new House(0, 0);
		add(_house);

		var numBullets:Int = 8;
		bullets = new FlxTypedGroup(numBullets);
		var sprite:FlxSprite;

		for (i in 0...numBullets)
		{
			sprite = new FlxSprite(-100, -100);

			// HERE IS WHERE THE BULLET IS FORMED
			sprite.makeGraphic(2, 2, FlxColor.WHITE);
			sprite.exists = false;

			bullets.add(sprite);
		}
		add(bullets);

		// ORC SPAWN STUFF:
		var heights:Array<Int> = [200, 240];
		var spawns:Array<Int> = [10, 15, 35, 50];

		var numOrcs:Int = 30;
		_orcs = new FlxTypedGroup(numOrcs);
		var o:Orc;

		for (i in 0...numOrcs)
		{
			// ORIGINAL:
			// a = new Alien(8 + (i % 10) * 32, 24 + Std.int(i / 10) * 32, colors[Std.int(i / 10)], alienBullets);

			o = new Orc(240 + (i * FlxG.random.int(10, 20)), 100 + Std.int(i / 10) * 32);

			_orcs.add(o);
		}
		add(_orcs);

		_sheep = new Shooter(30, 135); // 130 HEIGHT
		add(_sheep);

		_vsBullets = new FlxGroup();
		_vsBullets.add(_orcs); // kill orcs when touched by bullets

		super.create();
	}

	function stuffHitStuff(Object1:FlxObject, Object2:FlxObject):Void
	{
		Object1.kill();
		Object2.kill();
	}

	function doneFadeOut()
	{
		FlxG.switchState(new GameOver(false));
	}

	function orcTouchSheep(_sheep:Shooter, enemy:Orc)
	{
		// if (player.alive && player.exists && enemy.alive && enemy.exists && !enemy.isFlickering())
		// {
		// 	startCombat(enemy);
		// }
		_sheep.kill();
		doneFadeOut();
	}

	function orcTouchHouse(_house:House, enemy:Orc)
	{
		// if (player.alive && player.exists && enemy.alive && enemy.exists && !enemy.isFlickering())
		// {
		// 	startCombat(enemy);
		// }
		doneFadeOut();
	}

	// function placeOrcs(enemy:Orc)
	// {
	// 	var x = entity.x;
	// 	var y = entity.y;
	// 	switch (entity.name)
	// 	{
	// 		case "GROUND":
	// 			player.setPosition(x, y);
	// 		case "CRAWL":
	// 			coins.add(new Coin(x + 4, y + 4));
	// 		case "FLY":
	// 			enemies.add(new Enemy(x + 4, y, REGULAR));
	// 	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		FlxG.overlap(bullets, _vsBullets, stuffHitStuff);
		FlxG.overlap(_sheep, _orcs, orcTouchSheep);
		FlxG.overlap(_house, _orcs, orcTouchHouse);

		// if (_orcs.x < 0)
		// {
		// 	doneFadeOut();
		// }
	}
}
