function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note (No Anim)' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'staticNotes');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.3');
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Static Note' then
        playSound('hitStatic1')
        objectPlayAnimation('daNoteStatic', 'static', false)
	end
end