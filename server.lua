local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPmd = {}

vRP = Proxy.getInterface("vRP")


function tebexAddMoney(_, arg)
	local userId = arg[1]
	local addMoney = arg[2]
	vRP.giveMoney({userId,addMoney})
	
	print("Added $"..addMoney.." to user "..userId)
end
RegisterCommand("addMoney", tebexAddMoney, true)