package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;

class GameOver extends FlxState
{
	var win:Bool; // if we won or lost
	var titleText:FlxText; // the title text
	var mainMenuButton:FlxButton; // button to go to main menu

	public function new(win:Bool)
	{
		super();
		this.win = win;
	}

	function switchToMainMenu():Void // void func: it returns nothing.
	{
		// anonymous callback func. that switches to MenuState() after done fading to black
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			FlxG.switchState(new MenuState());
		});
	}

	override public function create()
	{
		#if FLX_MOUSE
		FlxG.mouse.visible = true;
		#end

		titleText = new FlxText(0, 20, 0, if (win) "You Win!" else "Game Over!", 22);
		titleText.alignment = CENTER;
		titleText.screenCenter(FlxAxes.X);
		add(titleText);

		mainMenuButton = new FlxButton(0, FlxG.height - 32, "Main Menu", switchToMainMenu);
		mainMenuButton.screenCenter(FlxAxes.X);
		add(mainMenuButton);

		super.create();
	}
}
