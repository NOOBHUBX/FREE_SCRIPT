local url = ""

game.Players.PlayerAdded:Connect(function()

Player = #game.Players:GetPlayers()
local NameGame = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local GameID = game.PlaceId
local JobId = game.JobId
local data = {
  username = "Noob hub",
  avatar_url = "https://cdn.discordapp.com/emojis/932252435102175254.webp?size=80",
  content = nil,
  embeds = {
    {
      title = "Check Players added",
      description = ("**All Players | %s**"):format(Player),
      color = 60415,
      fields = {
        {
          name = "Game Name",
          value = ("```%s```"):format(NameGame),
          inline = false
        },
        {
          name = "Game Id",
          value =  ("```%d```"):format(GameID),
          inline = false
        },
        {
          name = "Job Id",
          value =  ("```%s```"):format(JobId),
          inline = false
        }
    },
      author = {
        name = NameGame,
        icon_url = "https://cdn.discordapp.com/attachments/1292294049591726121/1370308775688278087/d66a4d3fd270e1e07d9fe5b76e9ae97b.jpg?ex=681f06ff&is=681db57f&hm=a7b1a44ded375cf1eee2a6d4eaed57e49beec814d041b878bf6f055a554341ac&"
      },
      footer = {
        text = "Powered by NOOB HUB",
        icon_url =  "https://cdn.discordapp.com/emojis/932252435102175254.webp?size=80"
      },
      timestamp = DateTime.now():ToIsoDate(),
      image = {
        url = "https://cdn.discordapp.com/attachments/1292294049591726121/1370308596373651536/1412b5574be430e81a2724ef65883984.jpg?ex=681f06d4&is=681db554&hm=607fd9b237bd0faabcc9eb1537c31003b1fb422741f6e370981fb4f54ddb6507&"
      },
      thumbnail = {
        url = "https://cdn.discordapp.com/attachments/1292294049591726121/1370308596658602124/78d37e57d9bdb07eecbc3372afcf2230.jpg?ex=681f06d4&is=681db554&hm=a838082d9d04b489fa27a2948283552c7c85bdb9303b18518be86aa64021f4ab&"
      }
    }
  },
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {["content-type"] = "application/json"}

request = http_request or request or HttpPost
local Hee = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(Hee)

end)
-- DateTime.now():ToIsoDate()
