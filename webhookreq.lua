function Webhook()
    local Link = ""
    local requestBody = [[
    {
        "content": "", 
        "embeds": [
            {
                "title": "",
                "description": "",
                "color": 9868950,
                "fields": [
                    {
                        "name": "",
                        "value": "",
                        "inline": false
                    }
                ]
            }
        ],
        "username": "",
        "avatar_url": "",
        "attachments": []
    }
    ]]
    MakeRequest(Link, "POST", {["Content-Type"] = "application/json"}, requestBody)
end

Webhook()