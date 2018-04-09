--Quartz OS Audio Driver
 
peripherals = peripheral.getNames()
speaker_names = {}
speakers = {}
available = true
 
for i = 1,#peripherals do
    if peripheral.getType(peripherals[i]) == "speaker" then
        table.insert(speaker_names, peripherals[i])
    end
end
 
for z = 1,#speaker_names do
    table.insert(speakers, peripheral.wrap(speaker_names[z]))
end
 
if #speakers == 0 then available = false end
 
function playSound(sResourceName, nVolume, nPitch)
    if available then
        for v = 1,#speakers do
            speakers[v].playSound(sResourceName, nVolume, nPitch)
        end
    end
end
 
function playNote(sInstrumentName, nVolume, nPitch)
    if available then
        for v = 1,#speakers do
            speakers[v].playNote(sInstrumentName, nVolume, nPitch)
        end
    end
end
