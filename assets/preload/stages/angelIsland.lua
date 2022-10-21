local squish = 100
local squish2 = 30
function onCreate()
    precacheImage('exe/exe1')
    precacheImage('exe/exe2')
    precacheImage('exe/exe3')
    precacheImage('exe/exe4')
    precacheImage('exe/exe5')
    precacheImage('fire/floor')
    precacheImage('fire/hell')


    makeLuaText('misses', 'Misses:', 400, 0, 700)
    makeLuaText('misses2', getProperty('songMisses'), 400, 50, 700)

    makeLuaSprite('ground', 'angel/ground', 0, 550)
    makeLuaSprite('shadow', 'angel/shadow', 780, 740)
    makeLuaSprite('trees', 'angel/trees', 100, 250)
    makeLuaSprite('leaves', 'angel/leavesoverlay', 270, 300)
    makeLuaSprite('treetop', 'angel/treeoverlay', 200, -100)
    makeLuaSprite('jump1', 'exe/exe1', 151, 0)
    makeLuaSprite('jump2', 'exe/exe2', 160.5, 0)
    makeLuaSprite('jump3', 'exe/exe3', 160, 0)
    makeLuaSprite('jump4', 'exe/exe4', 161, 0)
    makeLuaSprite('jump5', 'exe/exe5', 160, 0)

    makeAnimatedLuaSprite('fire', 'angel/angelfire', -150, -100)
    addAnimationByPrefix('fire', 'burn', 'angelfire', 24, true)

    makeAnimatedLuaSprite('fire2', 'fire/hell', -300, -100)
    addAnimationByPrefix('fire2', 'burn', 'hell', 24, true)

    makeLuaSprite('floor', 'fire/floor', -750, 650)
    makeLuaSprite('floor2', 'fire/floor', 1150, 650)

    scaleObject('floor', 2, 2)
    scaleObject('floor2', 2, 2)
    scaleObject('trees', 0.8, 0.8)
    scaleObject('treetop', 0.8, 0.8)
    scaleObject('leaves', 0.87, 0.87)
    scaleObject('jump1', 0.76, 0.76)
    scaleObject('jump2', 0.75, 0.75)
    scaleObject('jump3', 0.75, 0.75)
    scaleObject('jump4', 0.75, 0.75)
    scaleObject('jump5', 0.75, 0.75)


    setObjectCamera('jump1', 'camHUD')
    setObjectCamera('jump2', 'camHUD')
    setObjectCamera('jump3', 'camHUD')
    setObjectCamera('jump4', 'camHUD')
    setObjectCamera('jump5', 'camHUD')
    setObjectCamera('misses', 'other')
    setObjectCamera('misses2', 'other')

    setScrollFactor('fire2', 0.2, 0.2)

    addLuaSprite('fire', false)
    addLuaSprite('trees', false)
    addLuaSprite('ground', false)
    addLuaSprite('shadow', false)
    addLuaSprite('leaves', true)
    addLuaSprite('treetop', true)
    addLuaSprite('jump1', false)
    addLuaSprite('jump2', false)
    addLuaSprite('jump3', false)
    addLuaSprite('jump4', false)
    addLuaSprite('jump5', false)


    addLuaText('misses', true)
    addLuaText('misses2', true)

    setPropertyFromClass('ClientPrefs', 'hideHud', true)

    doTweenAlpha('jump1', 'jump1', 0, -1, 'linear')
    doTweenAlpha('jump2', 'jump2', 0, -1, 'linear')
    doTweenAlpha('jump3', 'jump3', 0, -1, 'linear')
    doTweenAlpha('jump4', 'jump4', 0, -1, 'linear')
    doTweenAlpha('jump5', 'jump5', 0, -1, 'linear')
end

function onStartCountdown()
    doTweenAlpha('gf', 'gf', 0, -1, 'linear')
    doTweenAlpha('dad', 'dad', 0, -1, 'linear')
    setCameraTarget('boyfriend')
end

function onUpdate(elapsed)
    if curStep == 224 then
        doTweenAlpha('jump1', 'jump1', 1, -1, 'linear')
        doTweenAlpha('dad', 'dad', 1, -1, 'linear')
        doTweenX('exemove', 'dad', -700, -1, 'linear')
        runTimer('remove', 2)
        removeLuaSprite('ground')
        removeLuaSprite('fire')
        removeLuaSprite('treetop')
        removeLuaSprite('leaves')
        removeLuaSprite('shadow')
    end

    if curStep == 226 then
        addLuaSprite('fire2', false)
        addLuaSprite('floor', false)
        addLuaSprite('floor2', false)
    end

    if curStep == 992 then
        doTweenAlpha('jump2', 'jump2', 1, -1, 'linear')
        runTimer('remove1', 2)
    end
    if curStep == 2016 then
        doTweenAlpha('jump3', 'jump3', 1, -1, 'linear')
        runTimer('remove2', 2)
    end
    if curStep == 2560 then
        doTweenAlpha('jump4', 'jump4', 1, -1, 'linear')
        runTimer('remove3', 2)
        doTweenX('move', 'dad', 50, 18, 'linear')
    end
    if curStep == 2848 then
        doTweenAlpha('jump5', 'jump5', 1, -1, 'linear')
    end

    if not middlescroll then
		noteTweenX('0', 0, defaultOpponentStrumX0+squish, -1, 'linear')
		noteTweenX('1', 1, defaultOpponentStrumX1+squish, -1, 'linear')
		noteTweenX('2', 2, defaultOpponentStrumX2+squish, -1, 'linear')
		noteTweenX('3', 3, defaultOpponentStrumX3+squish, -1, 'linear')
        noteTweenX('4', 4, defaultPlayerStrumX0-squish2, -1, 'linear')
		noteTweenX('5', 5, defaultPlayerStrumX1-squish2, -1, 'linear')
		noteTweenX('6', 6, defaultPlayerStrumX2-squish2, -1, 'linear')
		noteTweenX('7', 7, defaultPlayerStrumX3-squish2, -1, 'linear')
	end

    setTextString('misses2', getProperty('songMisses'))
end

function onTimerCompleted(tag)
    if tag == 'remove' then
        removeLuaSprite('jump1')
        doTweenX('floor1', 'floor', -2200, 0.54, 'linear')
        doTweenX('floor2', 'floor2', -800, 0.54, 'linear')
        runTimer('1', 0.56)
    end

    if tag == 'remove1' then
        removeLuaSprite('jump2')
    end

    if tag == 'remove2' then
        removeLuaSprite('jump3')
    end

    if tag == 'remove3' then
        removeLuaSprite('jump4')
    end

    if tag == '1' then
        doTweenX('floor1', 'floor', -800, -1, 'linear')
        doTweenX('floor2', 'floor2', 1200, -1, 'linear')
        runTimer('2', 0)
    end
    if tag == '2' then
        doTweenX('floor1', 'floor', -2200, 0.54, 'linear')
        doTweenX('floor2', 'floor2', -800, 0.54, 'linear')
        runTimer('1', 0.56)
    end
end