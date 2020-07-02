--Exploit Check
local requiredfunctions = debug.getupvalues or debug.getupvalue or getgc or getreg or debug.getregistry
if requiredfunctions then
    loadstring(game:Httpget("https://raw.githubusercontent.com/NathanJoe/PRISONHUB/master/loader2.lua"))()
else game:GetService("Players").LocalPlayer:Kick("bro your exploit doesnt support the functions needed sry")
end
if KRNL_LOADED then
    game:GetService("Players").LocalPlayer:Kick("oho krnl detected, stop being gay")
end