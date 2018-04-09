--Quartz OS Sound Alerts
 
os.loadAPI("/system/drivers/audio.lua")
 
function normal()
    audio.playNote("harp", 20, 100)
    sleep(2)
    audio.playNote("harp", 40, 100)
end
