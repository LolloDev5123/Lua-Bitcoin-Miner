--[[
	Returns the last block mined.
--]]

local hs = game:GetService("HttpService")
local url = "https://api-r.bitcoinchain.com/v1/blocks/10"

return function()
	local data = hs:GetAsync(url, true)
	return hs:JSONDecode(data)
end
