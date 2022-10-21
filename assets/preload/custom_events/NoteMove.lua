function onEvent(name, value1, value2)
	if name == 'NoteMove' then
		noteTweenY('A', 0, value2, value1, 'linear')
		noteTweenY('B', 1, -value2, value1, 'linear')
		noteTweenY('C', 2, value2, value1, 'linear')
		noteTweenY('D', 3, -value2, value1, 'linear')
		noteTweenY('E', 4, value2, value1, 'linear')

		noteTweenY('F', 5, -value2, value1, 'linear')
		noteTweenY('J', 6, value2, value1, 'linear')
		noteTweenY('H', 7, -value2, value1, 'linear')
		noteTweenY('I', 8, value2, value1, 'linear')
		if difficulty == 2 then
			noteTweenY('J', 9, value2, value1, 'linear')
			noteTweenY('K', 16, value2, value1, 'linear')
		end
	end
end