function onCreate()
	-- background shit
	makeLuaSprite('PolishedP1/BGSky','PolishedP1/BGSky', -800,-550);
    scaleObject('PolishedP1/BGSky', 1.305,1.305);
    setScrollFactor('PolishedP1/BGSky', 0.9,0.9);
	
	makeLuaSprite('PolishedP1/TreesMidBack','PolishedP1/TreesMidBack', -800,-450);
    scaleObject('PolishedP1/TreesMidBack', 1.25,1.25);
    setScrollFactor('PolishedP1/TreesMidBack', 0.75,0.75);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	   makeLuaSprite('PolishedP1/Trees','PolishedP1/Trees', -650,-350);
       setScrollFactor('PolishedP1/Trees', 0.75,0.75);
       scaleObject('PolishedP1/Trees', 1.25,1.25);

	   makeLuaSprite('PolishedP1/TreesOuterMid','PolishedP1/TreesOuterMid', -850,-550);
       setScrollFactor('PolishedP1/TreesOuterMid', 0.85,0.85);
       scaleObject('PolishedP1/TreesOuterMid', 1.25,1.25);
    end

	makeLuaSprite('PolishedP1/OuterBush','PolishedP1/OuterBush', -920,-400);
    scaleObject('PolishedP1/OuterBush', 1.45,1.45);

	makeLuaSprite('PolishedP1/Grass','PolishedP1/Grass', -1000,-350);
    scaleObject('PolishedP1/Grass', 1.405,1.405);

	makeLuaSprite('PolishedP1/DeadKnux','PolishedP1/DeadKnux', -1015,-315);
    scaleObject('PolishedP1/DeadKnux', 1.2,1.2);

    makeLuaSprite('PolishedP1/DeadEgg','PolishedP1/DeadEgg', -825,-315);
    scaleObject('PolishedP1/DeadEgg', 1.2, 1.2);

	makeAnimatedLuaSprite('TailsFuckingDied', 'PolishedP1/DeadTailz', -835,-300)
    addAnimationByPrefix('TailsFuckingDied', 'a', 'deadtailz BlackStatic', 24, true)
	objectPlayAnimation('TailsFuckingDied', 'a', true)
	scaleObject('TailsFuckingDied', 1.2,1.2);
    setScrollFactor('TailsFuckingDied', 1,1);

	makeLuaSprite('PolishedP1/TreesFG','PolishedP1/TreesFG',-875,-250);
    scaleObject('PolishedP1/TreesFG',1.35,1.35);
	setScrollFactor('PolishedP1/TreesFG',1.1,1);


	addLuaSprite('PolishedP1/BGSky', false);
	addLuaSprite('PolishedP1/TreesMidBack', false);
	addLuaSprite('PolishedP1/OuterBushUp', false);
	addLuaSprite('PolishedP1/Trees', false);
	addLuaSprite('PolishedP1/TreesOuterMid', false);
	addLuaSprite('PolishedP1/OuterBush', false);
	addLuaSprite('PolishedP1/Grass', false);
	addLuaSprite('PolishedP1/DeadKnux', false);
	addLuaSprite('PolishedP1/DeadEgg', false);
	addLuaSprite('TailsFuckingDied', false);
	addLuaSprite('PolishedP1/TreesFG', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end