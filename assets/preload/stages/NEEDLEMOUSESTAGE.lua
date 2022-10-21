function onCreate()
	
	makeLuaSprite('BACKGROUND','BACKGROUNDMOUTAINS', -400,-300)
	addLuaSprite('BACKGROUND', false)
	setLuaSpriteScrollFactor('BACKGROUND',0,0)

	makeLuaSprite('BACKGHILLS','BGHILLS', -600,700)
	addLuaSprite('BACKGHILLS', false)

	makeLuaSprite('TREESBACKNM','TREESNMBACK', -300,-0)
	addLuaSprite('TREESBACKNM', false)
	setLuaSpriteScrollFactor('TREESBG',4,7)
	
	makeLuaSprite('FORGROUND','FGGROUNDNM', -650,800)
	addLuaSprite('FORGROUND',false)

	makeLuaSprite('TREESFG','TREESNMFRONT', 0,0)
	addLuaSprite('TREENMFRONT', true)
	end