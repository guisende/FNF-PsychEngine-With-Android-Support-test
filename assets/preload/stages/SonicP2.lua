function onCreate()
	-- get the fuck out
	
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');

	makeLuaSprite('YCR_sky', 'SonicP2/sky', -1000, -500);
	makeLuaSprite('YCR_Grass', 'SonicP2/Grass', -550, -150)
	makeLuaSprite('YCR_trees', 'SonicP2/trees', -550, -150)
	makeLuaSprite('YCR_TreesFront', 'SonicP2/TreesFront', -550, -150)
	makeLuaSprite('YCR_GrassBack', 'SonicP2/GrassBack', -550, -250)
	makeLuaSprite('YCR_TopOverlay', 'SonicP2/TopOverlay', -550, -150)
	scaleObject('YCR_sky', 2.0, 2.0);
	setScrollFactor('YCR_sky', 0.9, 0.9);
	setScrollFactor('YCR_backtrees', 1.05, 1.0);
	setScrollFactor('YCR_trees', 1.025, 1.0);
	setProperty('YCR_sky.antialiasing', true);
	setProperty('p3_Stats.antialiasing', true);
	setProperty('YCR_backtrees.antialiasing', true);
	setProperty('YCR_floor.antialiasing', true);
	setProperty('YCR_trees.antialiasing', true);
	
	addLuaSprite('YCR_sky', false)
	addLuaSprite('YCR_GrassBack', false)
	addLuaSprite('YCR_trees', false)
	addLuaSprite('YCR_Grass', false)
	addLuaSprite('YCR_TopOverlay', false)
	addLuaSprite('YCR_TreesFront', false)
end


function onBeatHit()

     if curBeat %1 == 0 then

        setProperty('timeBar.color', getColorFromHex('cc1100'))-- put the hex code for the color here
     end

     if curBeat %2 == 0 then

        setProperty('timeBar.color', getColorFromHex('cc1100'))-- put the hex code for the color here

     end

end

function onStepHit()
	if curStep == 528 then
		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'gf', 'gf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'pixelrunsonic');

		setCharacterX('boyfriend', 400);

		setCharacterY('boyfriend', -200);

		setCharacterX('dad', 800);

		setCharacterY('dad', 150);

		setCharacterX('gf', 44000);

		setCharacterY('gf', -200);

		setProperty('YCR_sky.visible', false);
		setProperty('YCR_Grass.visible', false);
		setProperty('YCR_trees.visible', false);
		setProperty('YCR_GrassBack.visible', false);
		setProperty('YCR_TopOverlay.visible', false);
		setProperty('YCR_TreesFront.visible', false);
		setProperty('defaultCamZoom',1.1)

		makeLuaSprite('thefrickinbg2', 'SonicP2/greenhillsbiggggg', -572, -426);
		setProperty('thefrickinbg2.antialiasing', false);
		
		makeLuaSprite('idklol', 'idkwatisdis', 0, 0);
		setObjectCamera('idklol', 'other');
		

		addLuaSprite('thefrickinbg2', false);

		addLuaSprite('idklol', true);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'PIXEL_NOTE_assets');
	
	end
	if curStep == 767 then
	setProperty('idklol.visible', false);
	end
	if curStep == 783 then
		triggerEvent('Change Character', 'bf', 'bf-encore');

		triggerEvent('Change Character', 'dad', 'ycr-mad');
		
		triggerEvent('Change Character', 'gf', 'gf');

		setCharacterX('boyfriend', 845);

		setCharacterY('boyfriend', 50);

		setCharacterX('dad', 60);

		setCharacterY('dad', -270);

		setCharacterX('gf', 325);

		setCharacterY('gf', 30);
		
		setProperty('YCR_sky.visible', true);
		setProperty('YCR_Grass.visible', true);
		setProperty('YCR_trees.visible', true);
		setProperty('YCR_GrassBack.visible', true);
		setProperty('YCR_TopOverlay.visible', true);
		setProperty('YCR_TreesFront.visible', true);
		setProperty('thefrickinbg2.visible', false);
		setProperty('defaultCamZoom',0.65)
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'NOTE_assets');

		setProperty('thefrickinbg2.visible', false);
    end
end