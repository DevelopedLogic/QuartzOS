--Quartz OS Program Compatibility Layer

args = {...}

arguments = ""

if #args < 1 then
	error("Usage: compat <program> [argument] [argument] ...", 0)
end

if #args > 1 then
	for i = 2,#args do
		arguments = arguments.." "..args[i]
	end
end

if not fs.exists(args[1]) then
	error("No such program: "..args[1], 0)
end

os.loadAPI("/system/drivers/display.lua")
term.redirect(display)
shell.run(args[1], arguments)
term.redirect(term.native())
