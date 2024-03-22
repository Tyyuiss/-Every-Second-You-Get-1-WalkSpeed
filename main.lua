--Every Second You Get +1 WalkSpeed | Auto Farmer & Auto Rebirther
--Game Link: https://www.roblox.com/games/12742233841/Every-Second-You-Get-1-WalkSpeed 

_G.config = {   
    ['Farm'] = true, -- Enable/Disable the Farm
    ['AutoRebirth'] = true, -- Whether or not it rebirths automatically for you 🔄️
    ['Win_POS'] = Vector3.new(13890, 6, -18553), -- 600th Rebirth Teleporter | You can change manually but it will take work

    ['PlaceId'] = 12742233841
}

--[[


▓█████▄ ▓█████ ██▒   █▓ ██▀███  ▓█████  ███▄    █  ██▓▒██   ██▒
▒██▀ ██▌▓█   ▀▓██░   █▒▓██ ▒ ██▒▓█   ▀  ██ ▀█   █ ▓██▒▒▒ █ █ ▒░
░██   █▌▒███   ▓██  █▒░▓██ ░▄█ ▒▒███   ▓██  ▀█ ██▒▒██▒░░  █   ░
░▓█▄   ▌▒▓█  ▄  ▒██ █░░▒██▀▀█▄  ▒▓█  ▄ ▓██▒  ▐▌██▒░██░ ░ █ █ ▒ 
░▒████▓ ░▒████▒  ▒▀█░  ░██▓ ▒██▒░▒████▒▒██░   ▓██░░██░▒██▒ ▒██▒
 ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  ░ ▒▓ ░▒▓░░░ ▒░ ░░ ▒░   ▒ ▒ ░▓  ▒▒ ░ ░▓ ░
 ░ ▒  ▒  ░ ░  ░  ░ ░░    ░▒ ░ ▒░ ░ ░  ░░ ░░   ░ ▒░ ▒ ░░░   ░▒ ░
 ░ ░  ░    ░       ░░    ░░   ░    ░      ░   ░ ░  ▒ ░ ░    ░  
   ░       ░  ░     ░     ░        ░  ░         ░  ░   ░    ░  
 ░                 ░                                           
 
]]

-- DO NOT EDIT THIS CODE OR IT WILL BREAK MOST LIKELY

local Player = game:GetService('Players').LocalPlayer

if (game.PlaceId == _G.config['PlaceId']) then
    if _G.config['Farm'] then
        while task.wait(0.5) do
            if _G.config['Farm'] == false then
                break
            else 
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(_G.config['Win_POS'])
                
                if _G.config['AutoRebirth'] then
                    game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
                end
            end
        end
    end
else
    Player:Kick('Wrong game!')
end
