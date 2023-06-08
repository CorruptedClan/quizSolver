local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local Main = Library:CreateTab("Ninja Simulator", "Functions", false)

Main:CreateToggle(

   "Auto Quiz Solver",

   function(kdss)

       _G.toggles1dss = kdss or false

       while _G.toggles1dss and wait(2) do

           for i, v in pairs(game:GetService("Workspace")["TimedEvent_Quiz"]:GetDescendants()) do

               if string.find(v.Name, "AnswerTarget") and v:FindFirstChild("OnDied") then

                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =

                       v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector * -1

               end

           end

           wait(0.4)

           plr = game.Players.LocalPlayer.Character

           game:GetService("Workspace")[plr.Name].Combat.Attack:FireServer()

           local N = game:GetService("VirtualInputManager")

           N:SendKeyEvent(true, "F", false, game)

       end

   end

)

Main:CreateToggle(

   "Auto Click",

   function(kd55fs)

       _G.toggle5fs21 = kd55fs or false

       game:GetService("RunService").Stepped:connect(

           function()

               if _G.toggle5fs21 then

                   fireclickdetector(

                       game.workspace["Zednov's Tycoon Kit"].Tycoons[game.Players.LocalPlayer.Team.Name].PurchasedObjects.Mine.Clicker.ClickDetector

                   )

               end

           end

       )

   end

)

Main:CreateButton(

   "Made By: Bebo Mods",

   function()

       setclipboard("https://discord.com/invite/sdUSPyY65T")

   end

)

Main:CreateButton(

   "Join My Discord",

   function()

       setclipboard("https://discord.com/invite/sdUSPyY65T")

   end

)

end)
