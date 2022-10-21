
local xx = 460;
local yy = 680;
local xx2 = 820;
local yy2 = 720;
local ofs = 16;
local ofs2 = 20;
local followchars = true;
local del = 0;
local del2 = 0;
-- local allowCountdown = false

function onCreate()

    luaDebugMode = true

	setProperty('cameraSpeed', 1.8);

	makeLuaSprite('fakerSky', 'fakersky', -600, -300);
	setScrollFactor('fakerSky', 1, 1);
    addLuaSprite('fakerSky', false);

	makeLuaSprite('yepMountains', 'mountains', -600, -300);
	setScrollFactor('yepMountains', 1.1, 1);
    addLuaSprite('yepMountains', false);

	makeLuaSprite('g r a s s', 'grass', -600, -300);
	setScrollFactor('g r a s s', 1.2, 1);
    addLuaSprite('g r a s s', false);

	makeLuaSprite('treeTwo', 'tree2', -600, -300);
	setScrollFactor('treeTwo', 1.225, 1);
    addLuaSprite('treeTwo', false);

	makeLuaSprite('pillarTwo', 'pillar2', -600, -300);
	setScrollFactor('pillarTwo', 1.25, 1);
    addLuaSprite('pillarTwo', false);

	makeLuaSprite('plant?', 'plant', -600, -300);
	setScrollFactor('plant?', 1.25, 1);
    addLuaSprite('plant?', false);

	makeLuaSprite('treeOne', 'tree1', -600, -300);
	setScrollFactor('treeOne', 1.25, 1);
    addLuaSprite('treeOne', false);

	makeLuaSprite('pillarOne', 'pillar1', -600, -300);
	setScrollFactor('pillarOne', 1.25, 1);
    addLuaSprite('pillarOne', false);

	makeLuaSprite('flowerOne', 'flower1', -600, -300);
	setScrollFactor('flowerOne', 1.25, 1);
    addLuaSprite('flowerOne', false);

	makeLuaSprite('flowerTwo', 'flower2', -600, -300);
	setScrollFactor('flowerTwo', 1.25, 1);
    addLuaSprite('flowerTwo', false);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

	makeLuaSprite('introcircle', 'CircleFaker', 100, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);

	makeLuaSprite('introtext', 'TextFaker', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);

	makeAnimatedLuaSprite('Static', 'screenstatic', 0, 0);
	setObjectCamera('Static', 'other');
	addAnimationByPrefix('Static', 'tssssssss', 'screenSTATIC', 24, true)
	objectPlayAnimation('Static', 'tssssssss', false)
	setProperty('Static.visible', false)
	addLuaSprite('Static',true)

end

function onStartCountdown()
	doTweenX('circleTween', 'introcircle', -100, 2, 'quintOut')
	doTweenX('textTween', 'introtext', 100, 2, 'quintOut')
    return Function_Continue
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 0.2, 'quintOut');
	doTweenAlpha('circleAlpha', 'introcircle', 0, 0.2, 'quintOut');
	doTweenAlpha('textAlpha', 'introtext', 0, 0.2, 'quintOut');

end

function onBeatHit()

	if getProperty('curBeat') > 191 then
		doTweenAlpha('hudAlpha', 'camHUD', 0, 0.8, 'linear');
	end

	if getProperty('curBeat') == 200 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuh')
	end

	if getProperty('curBeat') == 201 then
		setProperty('Static.visible', false)
		stopSound('bruuh')
	end

	if getProperty('curBeat') == 204 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuuh')
	end

	if getProperty('curBeat') == 205 then
		setProperty('Static.visible', false)
		stopSound('bruuuh')
	end

	if getProperty('curBeat') == 208 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuuuh')
	end

	if getProperty('curBeat') == 209 then
		setProperty('Static.visible', false)
		stopSound('bruuuuh')
	end

	if getProperty('curBeat') == 212 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'bruuuuuh')
	end

	if getProperty('curBeat') == 213 then
		setProperty('Static.visible', false)
		stopSound('bruuuuuh')
	end

	if getProperty('curBeat') >= 216 then
		setProperty('Static.visible', true)
		playSound('staticBUZZ', 1, 'longbruh')
	end

	if getProperty('curBeat') >= 221 then
		setProperty('Static.visible', false)
		doTweenAlpha('graphicAlpha2', 'readthefiletitlelol', 1, 0.000001, 'quintOut');
		stopSound('longbruh')
	end

end

function onUpdate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BloodSplash');
	
	end
	
	health = getProperty('health')
	
	if del > 0 then
		del = del - 1
	end
	
	if del2 > 0 then
		del2 = del2 - 1
	end
    
	if followchars == true then
		
        if mustHitSection == false then
           
			setProperty('defaultCamZoom', 0.9)

			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
		
        else
           
			setProperty('defaultCamZoom', 1.1)
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
    
        triggerEvent('Camera Follow Pos','','')
    
	end
    
end