RegisterNetEvent('sv-notify:notify')
AddEventHandler('sv-notify:notify', function(type, text, length, sound)
	Notify(type, text, length, sound)
end)

function Notify(type, text, length, sound)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = nil,
		playSound = (sound ~= 'off')
	})
end

