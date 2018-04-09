--Quartz OS Display Driver

peripherals = peripheral.getNames()
monitor_names = {}
monitors = {}
available = true
nterm = term.native()

for i = 1,#peripherals do
	if peripheral.getType(peripherals[i]) == "monitor" then
		table.insert(monitor_names, peripherals[i])
	end
end

for z = 1,#monitor_names do
	table.insert(monitors, peripheral.wrap(monitor_names[z]))
end

if #monitors == 0 then available = false end

function clear()
	nterm.clear()
	if available then
		for v = 1,#monitors do
			monitors[v].clear()
		end
	end
end

function setBackgroundColour(colour)--For the British
	nterm.setBackgroundColour(colour)
	if available then
		for v = 1,#monitors do
			monitors[v].setBackgroundColour(colour)
		end
	end
end

function setBackgroundColor(color)--For the Americans
	setBackgroundColour(color)
end

function setTextColour(colour)--For the British
	nterm.setTextColour(colour)
	if available then
		for v = 1,#monitors do
			monitors[v].setTextColour(colour)
		end
	end
end

function setTextColor(color)--For the Americans
	setTextColour(color)
end

function setCursorPos(x, y)
	nterm.setCursorPos(x, y)
	if available then
		for v = 1,#monitors do
			monitors[v].setCursorPos(x, y)
		end
	end
end

function setCursorBlink(blink)
	nterm.setCursorBlink(blink)
	if available then
		for v = 1,#monitors do
			monitors[v].setCursorBlink(blink)
		end
	end
end

function blit(text, textColour, backgroundColour)
	nterm.blit(text, textColour, backgroundColour)
	if available then
		for v = 1,#monitors do
			monitors[v].blit(text, textColour, backgroundColour)
		end
	end
end

function write(text)
	nterm.write(text)
	if available then
		for v = 1,#monitors do
			monitors[v].write(text)
		end
	end
end

function clearLine()
	nterm.clearLine()
	if available then
		for v = 1,#monitors do
			monitors[v].clearLine()
		end
	end
end

function getCursorPos()
	return nterm.getCursorPos()
end

function isColour()--For the British
	return nterm.isColour()
end

function isColor()--For the Americans
	return nterm.isColor()
end

function getSize()
	return nterm.getSize()
end

function scroll(lines)
	nterm.scroll(lines)
	if available then
		for v = 1,#monitors do
			monitors[v].scroll(lines)
		end
	end
end

function redirect(destination)--Nullify
	return nterm.redirect(destination)
end

function current()
	return nterm.current()
end

function native()
	return nterm.native()
end

function getTextColour()--For the British
	return nterm.getTextColour()
end

function getTextColor()--For the Americans
	return nterm.getTextColor()
end

function getBackgroundColour()--For the British
	return nterm.getBackgroundColour()
end

function getBackgroundColor()--For the Americans
	return nterm.getBackgroundColor()
end
