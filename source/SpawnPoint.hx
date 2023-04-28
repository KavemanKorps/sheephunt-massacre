// package game.char;
// import flixel.FlxSprite;
// import flixel.group.FlxGroup.FlxTypedGroup;
// import flixel.math.FlxPoint;
// import flixel.util.FlxColor;
// class SpawnPoint extends FlxSprite
// {
// 	public var monsterPath:Array<FlxPoint>;
// 	public var enemyGrp:FlxTypedGroup<Orc>;
// 	public var spawnTimer:Float;
// 	public var canSpawn:Bool;
// 	// this long ol declaration is simply a decimal: 2.5
// 	public static inline var SPAWN_TIME:Float = 2.5;
// 	// guessing to instantiate the spawn point:
// 	public function new(x:Float, y:Float, enemyGrp:FlxTypedGroup<Orc>, path:Array<FlxPoint>)
// 	{
// 		super(x, y);
// 		spawnTimer = SPAWN_TIME; // 2.5 (seconds?)
// 		this.enemyGrp = enemyGrp;
// 		canSpawn = false;
// 		monsterPath = path;
// 		// this.loadGraphic(AssetPaths.monster_gate__png, false, 16, 16);
// 		this.makeGraphic(10, 10, FlxColor.YELLOW);
// 	}
// 	// UPDATE STUFF:
// 	override public function update(elapsed:Float)
// 	{
// 		super.update(elapsed);
// 		processMonsterSpawn(elapsed);
// 	}
// 	// what this do? if the spawnTimer is less than/equal to 0 & canSpawn, spawn enemy:
// 	public function processMonsterSpawn(elapsed:Float)
// 	{
// 		if (spawnTimer <= 0 && canSpawn)
// 		{
// 			spawnMonster();
// 			spawnTimer = SPAWN_TIME;
// 		}
// 		else
// 		{
// 			// sub. from spawnTimer until it reaches zero (what does it count down by?)
// 			spawnTimer -= elapsed;
// 			// spawnTimer.clampf(0, SPAWN_TIME); // what is clampf? guessing it's a range (0, 2.5)
// 			spawnTimer.clampf(0, SPAWN_TIME);
// 		}
// 	}
// 	//
// 	public function spawnMonster()
// 	{
// 		// Create Basic Grunt
// 		var spawnPoint = new FlxPoint(x - 16, y);
// 		// CREATE A DIFFERENT RANDOMINDEX:
// 		var randomIndex = Math.round(100 * Math.random());
// 		// var randomIndex = Math.round((DepotData.Enemies.lines.length - 1) * Math.random());
// 		var enemy = new Orc(spawnPoint.x, spawnPoint.y, monsterPath);
// 		enemyGrp.add(enemy);
// 	}
// }
