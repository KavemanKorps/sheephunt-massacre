import flixel.FlxState;
import flixel.text.FlxText;

class NextWaveState extends FlxState
{
	var titleText:FlxText;

	override public function create()
	{
		titleText = new FlxText(20, 0, 0, "Wave Complete\n ", 22);
		titleText.alignment = CENTER;
		titleText.screenCenter(X);
		add(titleText);

		super.create();
	}
}
