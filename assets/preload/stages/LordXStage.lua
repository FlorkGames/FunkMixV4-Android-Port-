	-- Port By Lechan (Jos), Bubcraft19, Enginer Gaming

function onCreate()

    makeLuaSprite('sky','SonicSus/LordXStage/sky',-1200,-600)
    setLuaSpriteScrollFactor('sky',1,1)
    scaleObject('sky',0.7,0.7)
    addLuaSprite('sky',false)

    makeLuaSprite('hills1','Sonicsus/LordXStage/hills1',-730,-80)
    setLuaSpriteScrollFactor('hills1',1,1)
    scaleObject('hills1',0.58,0.45)
    addLuaSprite('hills1',false)

    makeLuaSprite('ground','Sonicsus/LordXStage/floor',-1300,-200)
    setLuaSpriteScrollFactor('ground',1,1)
    scaleObject('ground',0.9,0.6)
    addLuaSprite('ground',false)

    makeLuaSprite('tree','Sonicsus/LordXStage/tree',-600,-230)
    setLuaSpriteScrollFactor('tree',1,1)
    scaleObject('tree',0.6,0.6)
    addLuaSprite('tree',false)

    makeAnimatedLuaSprite('bg', 'SonicSus/LordXStage/NotKnuckles_Assets', 150, -20)
    addAnimationByPrefix('bg','bgthing','Notknuckles',24,true)
    addLuaSprite('bg',false)
    objectPlayAnimation('bg','bgthing',true)
    scaleObject('bg', 1, 1)

    makeLuaSprite('flower3','Sonicsus/LordXStage/smallflower',-430,-160)
    setLuaSpriteScrollFactor('flower',1,1)
    scaleObject('flower3',0.53,0.52)
    addLuaSprite('flower3',false)

    makeAnimatedLuaSprite('bgflower', 'Sonicsus/LordXStage/WeirdAssFlower_Assets', -400, 120)
    addAnimationByPrefix('bgflower','SonicSus/bgthing','flower',24,true)
    addLuaSprite('bgflower',false)
    objectPlayAnimation('bgflower','SonicSus/bgthing',true)
    scaleObject('bgflower', 0.75, 0.76)

    makeLuaSprite('flower','Sonicsus/LordXStage/smallflower',-923,-40)
    setLuaSpriteScrollFactor('flower',1,1)
    scaleObject('flower',0.55,0.55)
    addLuaSprite('flower',false)

    makeLuaSprite('flower2','Sonicsus/LordXStage/smallflowe2',1100,-300)
    setLuaSpriteScrollFactor('flower2',1,1)
    scaleObject('flower2',0.53,0.54)
    addLuaSprite('flower2',false)
end