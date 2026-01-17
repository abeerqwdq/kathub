-- KAS SIMPLE LOADER

local KEY = getgenv().KAS_KEY or "NONE"

local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

local url = "https://kas-key-mrdlfubmg-abeerqwdqs-projects.vercel.app/api/check"
    .. "?key=" .. KEY
    .. "&hwid=" .. hwid

local res = game:HttpGet(url)
local data = game:GetService("HttpService"):JSONDecode(res)

if data.status ~= "ok" then
    warn("Invalid key")
    return
end

if data.admin then
    print("we making it out fr 😈")
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/abeerqwdq/kathub/main/main.lua"))()
