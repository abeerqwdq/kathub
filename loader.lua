local HttpService = game:GetService("HttpService")
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

local KEY = getgenv().KEY
if not KEY then
    game.Players.LocalPlayer:Kick("No key provided")
end

local API = "https://kas-key-mrdlfubmg-abeerqwdqs-projects.vercel.app/api/check"
local url = API.."?key="..KEY.."&hwid="..HWID

local res = game:HttpGet(url)
local data = HttpService:JSONDecode(res)

if data.status == "ok" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/abeerqwdq/kathub/refs/heads/main/main.lua"))()
else
    game.Players.LocalPlayer:Kick(data.msg or "Access denied")
end

