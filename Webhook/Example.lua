local url = ""

game.Players.PlayerAdded:Connect(function(players)
print("คนเข้าใหม่ | "..players.Name)

local Playernumber = #game.Players:GetPlayers()
local NameGame = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local GameID = game.PlaceId
local JobId = game.JobId

local data = {
  username = "Noob hub",
  avatar_url = "https://cdn.discordapp.com/emojis/932252435102175254.webp?size=80",
  content = nil,
  embeds = {
    {
      title =  "Check Players Addad",
      description =  ("Players | %s "):format(Playernumber),
      color = 4768250,
      fields = {
        {
          name = "Name Game",
          value =  ("```%s```"):format(NameGame)
        },
        {
          name =  "Game ID",
          value = ("```%d```"):format(GameID)
        },
        {
          name =  "Job Id",
          value = ("```%s```"):format(JobId)
        },
        {
          name =  "New Players Enter",
          value = ("```%s```"):format(players.Name)
        },
        {
          name =  "UserId",
          value = ("```%s```"):format(players.UserId)
        },
        {
          name =  "Profile",
          value = ("```https://www.roblox.com/users/%d/profile```"):format(players.UserId)
        },

      },
      author = {
        name = NameGame,
        icon_url = "https://cdn.discordapp.com/attachments/1292294049591726121/1370421046842232862/d66a4d3fd270e1e07d9fe5b76e9ae97b.jpg?ex=681f6f8e&is=681e1e0e&hm=bff3b7c3f51c52fc36b8e501375124049feb0b2c9247bbef14c2f3c3edbfde3e&"
      },
      footer = {
        text = "Powered by Noob hub",
        icon_url = "https://cdn.discordapp.com/emojis/932252435102175254.webp?size=80"
      },
      timestamp =  DateTime.now():ToIsoDate(),
      image = {
        url = "https://cdn.discordapp.com/attachments/1292294049591726121/1370421047081566289/1412b5574be430e81a2724ef65883984.jpg?ex=681f6f8e&is=681e1e0e&hm=3afe58b8b4022253bd2a24ce8b391c3e6865213d6b82f515f00ad0bddd0c0f74&"
      },
      thumbnail = {
        url = "https://cdn.discordapp.com/attachments/1292294049591726121/1370421047379230760/78d37e57d9bdb07eecbc3372afcf2230.jpg?ex=681f6f8e&is=681e1e0e&hm=85e0ac87a157fb2ade1d91acbc32b9e2c18f184c9116d6ce79ae5ed2cab8a33f&"
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
