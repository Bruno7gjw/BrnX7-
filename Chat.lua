-- [[ BRX-7 COMMUNITY: ESTRUTURA CORRIGIDA ]]
-- @brnx7exe

local _1,_2,_3,_4=game:GetService("Players"),game:GetService("HttpService"),game:GetService("Debris"),7308934691;
local _5,_6 = _1.LocalPlayer, "\104\116\116\112\115\58\47\47\98\114\110\120\55\45\99\104\97\116\45\114\111\98\108\111\120\45\100\101\102\97\117\108\116\45\114\116\100\98\46\102\105\114\101\98\97\115\101\105\111\46\99\111\109\47"
local _R = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;

-- ARMADILHA ANTI-MEXIDA
if _4 ~= 7308934691 then while true do end end

-- INTERFACE
local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
local mf = Instance.new("Frame", sg)
mf.Size = UDim2.new(0, 320, 0, 300)
mf.Position = UDim2.new(0.5, -160, 0.5, -150)
mf.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Instance.new("UICorner", mf)

local title = Instance.new("TextLabel", mf)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "👑 BRNX7 COMMUNITY"
title.TextColor3 = Color3.fromRGB(0, 170, 255)
title.Font = Enum.Font.GothamBold
title.BackgroundTransparency = 1

local sub = Instance.new("TextLabel", mf)
sub.Size = UDim2.new(1, 0, 0, 20)
sub.Position = UDim2.new(0, 0, 0, 30)
sub.Text = "@brnx7exe"
sub.TextColor3 = Color3.fromRGB(255, 200, 0)
sub.Font = Enum.Font.Gotham
sub.TextSize = 12
sub.BackgroundTransparency = 1

-- ÁREA DE MENSAGENS (Para não ficar vazio)
local holder = Instance.new("ScrollingFrame", mf)
holder.Size = UDim2.new(0.9, 0, 0.6, 0)
holder.Position = UDim2.new(0.05, 0, 0.25, 0)
holder.BackgroundTransparency = 0.9
holder.CanvasSize = UDim2.new(0, 0, 2, 0)

-- CONEXÃO RADAR
task.spawn(function()
    while task.wait(5) do
        pcall(function()
            _R({
                Url = _6 .. "online/" .. _5.UserId .. ".json",
                Method = "PUT",
                Body = _2:JSONEncode({n = _5.DisplayName, t = os.time()})
            })
        end)
    end
end)

print("BRX-7 CARREGADO COM SUCESSO!")
