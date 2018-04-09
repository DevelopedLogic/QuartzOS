--Quartz OS Startup Script

--Load Drivers
os.loadAPI("/system/drivers/display.lua")
os.loadAPI("/system/drivers/audio.lua")

--Set aliases
shell.setAlias("qupdate", "/system/updater.lua")
shell.setAlias("compat", "/system/compatibility/compat.lua")

--Initialise Displays
display.clear()
display.setCursorPos(1,1)
