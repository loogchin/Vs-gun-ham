package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-gun-clone', [0, 1], 0, false, isPlayer);
		animation.add('bf-gun', [28, 29], 0, false, isPlayer);
		animation.add('bf-gun-p2', [30, 31], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-no', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('gun-yes-gun', [24, 25], 0, false, isPlayer);
		animation.add('gun-p2-yes-gun-p2', [26, 27], 0, false, isPlayer);
		animation.add('RedBlue-gun-p2-yes-gun-p2', [26, 27], 0, false, isPlayer);
		animation.add('RedBlue-gf-gun', [16], 0, false, isPlayer);
		animation.add('RedBlue-bf-gun-p2', [28, 29], 0, false, isPlayer);
		animation.add('gun-clone-yes-gun-clone', [32, 33], 0, false, isPlayer);
		animation.add('bf-gun-yes-gun', [24, 25], 0, false, isPlayer);
		animation.add('boss', [34, 35], 0, false, isPlayer);
		animation.add('dark', [36, 37], 0, false, isPlayer);
		animation.add('ham', [38, 39], 0, false, isPlayer);
		animation.add('murder-gun', [40, 41], 0, false, isPlayer);
		animation.add('murder-gun2', [40, 41], 0, false, isPlayer);
		animation.add('plam', [42, 43], 0, false, isPlayer);
		animation.add('red-eye', [44, 45], 0, false, isPlayer);
		animation.add('error-gun', [46, 47], 0, false, isPlayer);
		
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
