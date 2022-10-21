function onCreate()
	-- background shit 
    makeAnimatedLuaSprite('matate', 'StageUltraLow', -650, -200)
    addAnimationByPrefix('matate', 'idle', 'XD', 24, true)
	objectPlayAnimation('matate', 'idle', false)
	scaleObject('matate', 2.2, 2.2);
    addLuaSprite('matate', false);

    if not lowQuality then

	makeAnimatedLuaSprite('Bg', 'Bg', -600, -300)
    addAnimationByPrefix('Bg', 'idle', 'Bg', 20, true)
	objectPlayAnimation('Bg', 'idle', false)
    scaleObject('Bg', 2, 2);
	setScrollFactor('Bg', 0.7, 1);

	makeAnimatedLuaSprite('Mountains', 'Mountains', -600, -300)
    addAnimationByPrefix('Mountains', 'idle', 'Mountains', 24, true)
	objectPlayAnimation('Mountains', 'idle', false)
    scaleObject('Mountains', 2, 2);
	setScrollFactor('Mountains', 0.7, 1);
	
	makeAnimatedLuaSprite('Floor', 'Floor', -650, -200)
    addAnimationByPrefix('Floor', 'idle', 'Floor', 24, true)
	objectPlayAnimation('Floor', 'idle', false)
	scaleObject('Floor', 2.2, 2.2);
	
	addLuaSprite('Bg', false);
	addLuaSprite('Mountains', false);
	addLuaSprite('Floor', false);
end
end

function onUpdate(elapsed)
     if hideHud then
     setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
     setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
     setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
     setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
     setProperty('judgementCounter.visible', false)
     setProperty('healthCounter.visible', false)
     setProperty('healthBar.visible', false)
     setProperty('healthBarBG.visible', false)
     setProperty('healthBarTxt.visible', false)
     end
end