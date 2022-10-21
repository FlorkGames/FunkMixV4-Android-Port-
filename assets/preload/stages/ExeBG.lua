
local xx = 420.95;
local yy = 300;
local xx2 = 1100;
local yy2 = 690;
local ofs = 50;
local ofs2 = 32;
local followchars = true;
local del = 0;
local del2 = 0;
-- local allowCountdown = false

function onCreate()

    luaDebugMode = true
	
	setProperty('defaultCamZoom', 0.7);

	setProperty('cameraSpeed', 2.2);
	
	setProperty('health', 2.0);
	
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Disabled');

	makeLuaSprite('exeSky', 'sky', -600, -300);
	setScrollFactor('exeSky', 1, 1);
    addLuaSprite('exeSky', false);

	makeLuaSprite('backtree', 'backtrees', -600, -300);
	setScrollFactor('backtree', 1.1, 1);
    addLuaSprite('backtree', false);

	makeLuaSprite('tree', 'trees', -600, -300);
	setScrollFactor('tree', 1.2, 1);
	addLuaSprite('tree', false);

	makeLuaSprite('exeGround', 'ground', -600, -300);
	setScrollFactor('exeGround', 1.3, 1);
	addLuaSprite('exeGround', false);

	makeAnimatedLuaSprite('exeAnimated','ExeAnimatedBGAssets', -600, -300);
	setScrollFactor('exeAnimated', 1, 1);
	addAnimationByPrefix('exeAnimated', 'Animation', 'ExeBGAnim', 50, true);
	objectPlayAnimation('exeAnimated', 'Animation', false);
	addLuaSprite('exeAnimated', false);

	makeLuaSprite('tailsded','TailsCorpse', 382, 524);
	addLuaSprite('tailsded', false);

	makeLuaSprite('LMAOTENTACLES', 'tentaclesblack', 0, 0);
	setProperty('LMAOTENTACLES.alpha', 0);
	setObjectCamera('LMAOTENTACLES', 'other')
	addLuaSprite('LMAOTENTACLES', true);

    makeLuaSprite('vignette', 'blackvignette', 0, 0);
	setProperty('vignette.alpha', 0);
	setObjectCamera('vignette', 'other')
	addLuaSprite('vignette', true);

    makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

end

function onSongStart()
	setProperty('readthefiletitlelol.visible', false)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
        setProperty('defaultCamZoom',1.1);
	elseif focus == 'dad' then
        setProperty('defaultCamZoom',0.7);
	end
end

function onUpdate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BloodSplash');
	
	end
	
	health = getProperty('health')

	if getProperty('health') < 0.2 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 1, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 1, 0.8, 'quintOut');
		cameraShake("hud", 0.005, 0.4);
	elseif getProperty('health') < 0.5 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.8, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 0.8, 0.8, 'quintOut');
		cameraShake("hud", 0.002, 0.2);
	elseif getProperty('health') < 1.0 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.6, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 0.6, 0.8, 'quintOut');
	elseif getProperty('health') < 1.5 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.2, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 0.2, 0.8, 'quintOut');
	end
	
	if del > 0 then
		del = del - 1
	end
	
	if del2 > 0 then
		del2 = del2 - 1
	end
    
	if followchars == true then
		
        if mustHitSection == false then
           
			setProperty('defaultCamZoom', 0.7)

			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
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
