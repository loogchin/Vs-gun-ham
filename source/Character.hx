package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxColor;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';
	public var playerColor:String = "31B0D1";

	public var holdTimer:Float = 0;

	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
			case 'gf':
				// GIRLFRIEND CODE
				playerColor = "a5004d";
				tex = Paths.getSparrowAtlas('characters/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -21);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');
			case 'gf-no':
				// GIRLFRIEND CODE
				playerColor = "a5004d";
				tex = Paths.getSparrowAtlas('characters/GF_No');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -21);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'dad':
				// DAD ANIMATION LOADING CODE
				playerColor = "AF66CE";
				tex = Paths.getSparrowAtlas('characters/DADDY_DEAREST', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');
			case 'bf':
				playerColor = "31b0d1";
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;
			case 'bf-gun-yes-gun':
				playerColor = "FFFFFF";
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND-gun', 'shared');
				frames = tex;

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);

				playAnim('idle');

				flipX = true;
			case 'gun-yes-gun':
				// GUN ANIMATION LOADING CODE
				playerColor = "FFFFFF";
				tex = Paths.getSparrowAtlas('characters/Gun_Assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Gun idle dance', 24);
				animation.addByPrefix('singUP', 'Gun Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Gun Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Gun Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Gun Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 0, 15 );
				addOffset("singRIGHT", 0, 10);
				addOffset("singLEFT", 30, 10);
				addOffset("singDOWN", 0 ,-20);

				setGraphicSize(Std.int(width * 1.2));
				updateHitbox();

				antialiasing = true;

				playAnim('idle');
			case 'gun-p2-yes-gun-p2':
				// GUN ANIMATION LOADING CODE
				playerColor = "FFFFFF";
				tex = Paths.getSparrowAtlas('characters/Gun_Phase_2_Assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Gun idle dance', 24);
				animation.addByPrefix('singUP', 'Gun Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Gun Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Gun Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Gun Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 0, 17);
				addOffset("singRIGHT", -24, 7);
				addOffset("singLEFT", 40, 14);
				addOffset("singDOWN", -6 ,-18);

				setGraphicSize(Std.int(width * 1.2));
				updateHitbox();

				antialiasing = true;

				playAnim('idle');
			case 'gun-clone-yes-gun-clone':
				// GUN ANIMATION LOADING CODE
				playerColor = "DFE3FF";
				tex = Paths.getSparrowAtlas('characters/GUN_clone', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Gun idle dance', 24);
				animation.addByPrefix('singUP', 'Gun Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Gun Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Gun Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Gun Sing Note LEFT', 24);
				animation.addByPrefix('broken-ear', 'Gun talk0', 24);

				addOffset('idle');
				addOffset("singUP", 10, 85 );
				addOffset("singRIGHT", 75, 0);
				addOffset("singLEFT", 131, -54);
				addOffset("singDOWN", 20 ,-52);
				addOffset('broken-ear', -40, -60);

				setGraphicSize(Std.int(width * 1.2));
				updateHitbox();

				antialiasing = true;

				playAnim('idle');
			case 'bf-gun':
				playerColor = "31b0d1";
				var tex = Paths.getSparrowAtlas('characters/BoyFriend_GUN', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);
				animation.addByPrefix('hit', 'BF hit0', 24, false);
				

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);
				addOffset('hit',40, 20);
				

				playAnim('idle');

				flipX = true;
			case 'bf-gun-p2':
				playerColor = "31b0d1";
				var tex = Paths.getSparrowAtlas('characters/BoyFriend_SusGun', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);
				animation.addByPrefix('hit', 'BF hit0', 24, false);
				

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -30);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -1);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);
				addOffset('hit',40, 20);
				

				playAnim('idle');

				flipX = true;
			case 'RedBlue-bf-gun-p2':
				playerColor = "31b0d1";
				var tex = Paths.getSparrowAtlas('characters/RedBlue_BoyFriend_SusGun', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);
				animation.addByPrefix('hit', 'BF hit0', 24, false);
				

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -30);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -1);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);
				addOffset('hit',40, 20);
				

				playAnim('idle');

				flipX = true;
			case 'RedBlue-gun-p2-yes-gun-p2':
				// GUN ANIMATION LOADING CODE
				playerColor = "FFFFFF";
				tex = Paths.getSparrowAtlas('characters/RedBlue_Gun_Phase_2_Assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Gun idle dance', 24);
				animation.addByPrefix('singUP', 'Gun Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Gun Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Gun Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Gun Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 0, 17);
				addOffset("singRIGHT", -24, 7);
				addOffset("singLEFT", 40, 14);
				addOffset("singDOWN", -6 ,-18);

				setGraphicSize(Std.int(width * 1.2));
				updateHitbox();

				antialiasing = true;

				playAnim('idle');
			case 'gf-gun':
				// GIRLFRIEND CODE
				playerColor = "a5004d";
				tex = Paths.getSparrowAtlas('characters/GF_GUN');
				frames = tex;
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('sad', -2, -21);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);
				addOffset('scared', -2, -17);

				playAnim('danceRight');
			case 'RedBlue-gf-gun':
				// GIRLFRIEND CODE
				playerColor = "a5004d";
				tex = Paths.getSparrowAtlas('characters/RedBlue_GF_GUN');
				frames = tex;
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('sad', -2, -21);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);
				addOffset('scared', -2, -17);

				playAnim('danceRight');
			case 'bf-gun-clone':
				playerColor = "31b0d1";
				var tex = Paths.getSparrowAtlas('characters/BoyFriend_GunClone', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', 0, 10);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;
			case 'boss':
				// DAD ANIMATION LOADING CODE
				playerColor = "131313";
				tex = Paths.getSparrowAtlas('characters/Boss_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'boss idle dance', 24);
				animation.addByPrefix('singUP', 'boss Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'boss Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'boss Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'boss Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 24, 10);
				addOffset("singRIGHT", -10, -13);
				addOffset("singLEFT", 60, 0);
				addOffset("singDOWN", 0, -52);

				playAnim('idle');
			case 'dark':
				// DAD ANIMATION LOADING CODE
				playerColor = "D0EEFF";
				tex = Paths.getSparrowAtlas('characters/Dark_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dark idle dance', 24);
				animation.addByPrefix('singUP', 'Dark Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dark Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dark Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dark Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -16, 10);
				addOffset("singRIGHT", -10, 7);
				addOffset("singLEFT", 80, -10);
				addOffset("singDOWN", 0, -52);

				playAnim('idle');
			case 'ham':
				// DAD ANIMATION LOADING CODE
				playerColor = "D0EEFF";
				tex = Paths.getSparrowAtlas('characters/HAM_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Ham idle dance', 24);
				animation.addByPrefix('singUP', 'Ham Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Ham Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Ham Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Ham Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 4, 0);
				addOffset("singRIGHT", -30, 7);
				addOffset("singLEFT", 45, 10);
				addOffset("singDOWN", -10, -10);

				playAnim('idle');
			case 'error-gun':
				// GUN ANIMATION LOADING CODE
				playerColor = "ABB5E5";
				tex = Paths.getSparrowAtlas('characters/ERRORGUN', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Error idle dance', 24);
				animation.addByPrefix('singUP', 'Error Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Error Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Error Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Error Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP",20);
				addOffset("singRIGHT",-35,-10);
				addOffset("singLEFT",70,-10);
				addOffset("singDOWN",-5,-7);

				playAnim('idle');
			case 'murder-gun':
				// GUN ANIMATION LOADING CODE
				playerColor = "949AC1";
				tex = Paths.getSparrowAtlas('characters/GUNMurder', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Gun idle dance', 24);
				animation.addByPrefix('singUP', 'Gun Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Gun Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Gun Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Gun Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT",135,80);
				addOffset("singLEFT",30,30);
				addOffset("singDOWN",145,70);

				setGraphicSize(Std.int(width * 1.2));
				updateHitbox();

				playAnim('idle');
			case 'murder-gun2':
				// GUN ANIMATION LOADING CODE
				playerColor = "949AC1";
				tex = Paths.getSparrowAtlas('murder/GUNMurder2', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Gun idle dance', 24);
				animation.addByPrefix('singUP', 'Gun Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Gun Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Gun Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Gun Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT",135,80);
				addOffset("singLEFT",30,30);
				addOffset("singDOWN",145,70);

				setGraphicSize(Std.int(width * 1.2));
				updateHitbox();

				playAnim('idle');
			case 'murder-gun-bf':
				playerColor = "31b0d1";
				var tex = Paths.getSparrowAtlas('murder/BoyFriendMurder2', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;
		}

		dance();

		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				trace('dance');
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-no':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-gun':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'RedBlue-gf-gun':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-christmas':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-car':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-pixel':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'spooky':
					danced = !danced;

					if (danced)
						playAnim('danceRight');
					else
						playAnim('danceLeft');
				default:
					playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
