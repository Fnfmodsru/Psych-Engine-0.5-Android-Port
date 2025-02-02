function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an bad pizza
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bad pizza' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BADPIZZANOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'bad pizza' then
		makeLuaSprite('pizza1','pizza1', 0, 0);
		setObjectCamera('pizza1', 'hud')
		addLuaSprite('pizza1', true);
		playSound('pizzasplash', 1);
	end
end