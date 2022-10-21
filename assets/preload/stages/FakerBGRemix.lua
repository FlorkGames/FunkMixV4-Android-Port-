
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