function onEvent(n,v1,v2)
	if n == "TooSlowStatic" then
		runTimer("simplestatic",0.20,1)
		addLuaSprite('spookystatic',true)
		objectPlayAnimation('spookystatic','spookything')
		playSound('staticBUZZ')
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'simplestatic' then
		removeLuaSprite('spookystatic',false)
    end
end
