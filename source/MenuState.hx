package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	var titleText:FlxText;
	var playButton:FlxButton;

	override public function create()
	{
		titleText = new FlxText(20, 0, 0, "Sheephunt:\nMassacre", 22);
		titleText.alignment = CENTER;
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxButton(0, 0, "Play", clickPlay);
		playButton.x = (FlxG.width / 2) - (playButton.width / 2);
		playButton.y = FlxG.height - playButton.height - 10;
		add(playButton);

		super.create();
	}

	function clickPlay()
	{
		// WHAT DOES THIS DO? fade out when switching states.
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			FlxG.switchState(new PlayState());
		});
	}
}
