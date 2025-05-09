local url = ""

local data = {}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost
local Hee = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(Hee)

-- DateTime.now():ToIsoDate()
