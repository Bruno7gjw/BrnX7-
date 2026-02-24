-- [[ BRX-7: REDE DA COMUNIDADE + RADAR ONLINE + CRÉDITOS ]]
local P = game:GetService("Players")
local L = P.LocalPlayer
local HS = game:GetService("HttpService")
local Debris = game:GetService("Debris")

-- CONFIGURAÇÕES MESTRES
local MEU_ID = 7308934691 
local FIREBASE_URL = "https://brnx7-chat-roblox-default-rtdb.firebaseio.com/" 
local SELO = utf8.char(0xE000)
local CHAVE_SECRETA = "BRNX7_COMUNIDADE_GLOBAL"
local TEMPO_LIMPEZA = 120 

local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

-- [[ 1. MOTOR DE CRIPTOGRAFIA ]]
local function Criptografar(texto)
    local hex = ""
    for i = 1, #texto do
        local byte = (string.byte(string.sub(texto, i, i)) + string.byte(string.sub(CHAVE_SECRETA, ((i - 1) % #CHAVE_SECRETA) + 1, ((i - 1) % #CHAVE_SECRETA) + 1))) % 256
        hex = hex .. string.format("%02X", byte)
    end
    return hex
end
local function Descriptografar(hex)
    local texto = ""; local j = 1
    for i = 1, #hex, 2 do
        local byte = (tonumber(string.sub(hex, i, i+1), 16) - string.byte(string.sub(CHAVE_SECRETA, ((j - 1) % #CHAVE_SECRETA) + 1, ((j - 1) % #CHAVE_SECRETA) + 1))) % 256
        texto = texto .. string.char(byte); j = j + 1
    end
    return texto
end

-- [[ 2. INTERFACE COM ABAS ]]
local sg = Instance.new("ScreenGui"); sg.Name = "BRX_COMUNIDADE"; sg.ResetOnSpawn = false
local success = pcall(function() sg.Parent = game:GetService("CoreGui") end)
if not success then sg.Parent = L:WaitForChild("PlayerGui") end
if sg.Parent:FindFirstChild("BRX_COMUNIDADE") and sg.Parent.BRX_COMUNIDADE ~= sg then sg.Parent.BRX_COMUNIDADE:Destroy() end

local mf = Instance.new("Frame", sg)
mf.Size = UDim2.new(0, 320, 0, 300); mf.Position = UDim2.new(0.5, -160, 0.5, -150)
mf.BackgroundColor3 = Color3.fromRGB(12, 12, 16); mf.Active = true; mf.Draggable = true
Instance.new("UICorner", mf).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", mf).Color = Color3.fromRGB(0, 170, 255)

-- TÍTULO E CRÉDITOS
local title = Instance.new("TextLabel", mf)
title.Size = UDim2.new(1, 0, 0, 30); title.Text = "👑 BRNX7 COMMUNITY SCRIPT"
title.TextColor3 = Color3.fromRGB(0, 170, 255); title.Font = Enum.Font.GothamBlack
title.BackgroundTransparency = 1; title.TextSize = 13

local subtitle = Instance.new("TextLabel", mf)
subtitle.Size = UDim2.new(1, 0, 0, 15); subtitle.Position = UDim2.new(0, 0, 0, 25)
subtitle.Text = "Parcerias no IG: @brnx7exe"; subtitle.TextColor3 = Color3.fromRGB(255, 215, 0)
subtitle.Font = Enum.Font.GothamBold; subtitle.BackgroundTransparency = 1; subtitle.TextSize = 10

local minBtn = Instance.new("TextButton", mf)
minBtn.Size = UDim2.new(0, 35, 0, 35); minBtn.Position = UDim2.new(1, -35, 0, 0)
minBtn.Text = "-"; minBtn.TextColor3 = Color3.new(1,1,1); minBtn.BackgroundTransparency = 1
minBtn.Font = Enum.Font.GothamBold; minBtn.TextSize = 18

-- ABAS (CHAT / INSTRUÇÕES)
local tabFrame = Instance.new("Frame", mf)
tabFrame.Size = UDim2.new(1, 0, 0, 30); tabFrame.Position = UDim2.new(0, 0, 0, 45)
tabFrame.BackgroundTransparency = 1

local btnAbaChat = Instance.new("TextButton", tabFrame)
btnAbaChat.Size = UDim2.new(0.5, 0, 1, 0); btnAbaChat.Text = "💬 CHAT GLOBAL"; btnAbaChat.Font = Enum.Font.GothamBold; btnAbaChat.TextSize = 11
btnAbaChat.BackgroundColor3 = Color3.fromRGB(0, 170, 255); btnAbaChat.TextColor3 = Color3.new(1,1,1)

local btnAbaInfo = Instance.new("TextButton", tabFrame)
btnAbaInfo.Size = UDim2.new(0.5, 0, 1, 0); btnAbaInfo.Position = UDim2.new(0.5, 0, 0, 0)
btnAbaInfo.Text = "📡 RADAR / INFO"; btnAbaInfo.Font = Enum.Font.GothamBold; btnAbaInfo.TextSize = 11
btnAbaInfo.BackgroundColor3 = Color3.fromRGB(30, 30, 35); btnAbaInfo.TextColor3 = Color3.fromRGB(150, 150, 150)

-- ABA 1: CHAT
local chatFrame = Instance.new("Frame", mf)
chatFrame.Size = UDim2.new(1, 0, 1, -75); chatFrame.Position = UDim2.new(0, 0, 0, 75)
chatFrame.BackgroundTransparency = 1

local container = Instance.new("ScrollingFrame", chatFrame)
container.Size = UDim2.new(1, -20, 1, -45); container.Position = UDim2.new(0, 10, 0, 5)
container.BackgroundTransparency = 1; container.ScrollBarThickness = 2
local uil = Instance.new("UIListLayout", container); uil.Padding = UDim.new(0, 5)

local input = Instance.new("TextBox", chatFrame)
input.Size = UDim2.new(1, -80, 0, 30); input.Position = UDim2.new(0, 10, 1, -35)
input.BackgroundColor3 = Color3.fromRGB(20, 20, 25); input.TextColor3 = Color3.fromRGB(0, 170, 255)
input.PlaceholderText = " Mande um salve ou @Nome..."
input.Font = Enum.Font.Gotham; input.TextSize = 11; input.TextXAlignment = 0; input.ClearTextOnFocus = false
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", input).Color = Color3.fromRGB(0, 100, 200)

local send = Instance.new("TextButton", chatFrame)
send.Size = UDim2.new(0, 65, 0, 30); send.Position = UDim2.new(1, -75, 1, -35)
send.Text = "ENVIAR"; send.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
send.TextColor3 = Color3.new(1,1,1); send.Font = Enum.Font.GothamBold; send.TextSize = 11
Instance.new("UICorner", send).CornerRadius = UDim.new(0, 6)

-- ABA 2: INSTRUÇÕES E RADAR ONLINE
local infoFrame = Instance.new("Frame", mf)
infoFrame.Size = UDim2.new(1, 0, 1, -75); infoFrame.Position = UDim2.new(0, 0, 0, 75)
infoFrame.BackgroundTransparency = 1; infoFrame.Visible = false

local instrucoes = Instance.new("TextLabel", infoFrame)
instrucoes.Size = UDim2.new(1, -20, 0, 40); instrucoes.Position = UDim2.new(0, 10, 0, 0)
instrucoes.Text = "Para sussurrar, digite @Nome antes da mensagem!\nEx: @Bruno bora jogar"; instrucoes.TextColor3 = Color3.new(0.8,0.8,0.8)
instrucoes.Font = Enum.Font.Gotham; instrucoes.TextSize = 10; instrucoes.BackgroundTransparency = 1

local onlineTitle = Instance.new("TextLabel", infoFrame)
onlineTitle.Size = UDim2.new(1, -20, 0, 20); onlineTitle.Position = UDim2.new(0, 10, 0, 45)
onlineTitle.Text = "🟢 JOGADORES CONECTADOS AGORA (CLIQUE):"; onlineTitle.TextColor3 = Color3.fromRGB(0, 255, 128)
onlineTitle.Font = Enum.Font.GothamBold; onlineTitle.TextSize = 10; onlineTitle.BackgroundTransparency = 1; onlineTitle.TextXAlignment = 0

local onlineContainer = Instance.new("ScrollingFrame", infoFrame)
onlineContainer.Size = UDim2.new(1, -20, 1, -75); onlineContainer.Position = UDim2.new(0, 10, 0, 65)
onlineContainer.BackgroundTransparency = 1; onlineContainer.ScrollBarThickness = 2
local uilOnline = Instance.new("UIListLayout", onlineContainer); uilOnline.Padding = UDim.new(0, 5)

-- TROCAR ABAS
btnAbaChat.MouseButton1Click:Connect(function()
    chatFrame.Visible = true; infoFrame.Visible = false
    btnAbaChat.BackgroundColor3 = Color3.fromRGB(0, 170, 255); btnAbaChat.TextColor3 = Color3.new(1,1,1)
    btnAbaInfo.BackgroundColor3 = Color3.fromRGB(30, 30, 35); btnAbaInfo.TextColor3 = Color3.fromRGB(150, 150, 150)
end)
btnAbaInfo.MouseButton1Click:Connect(function()
    chatFrame.Visible = false; infoFrame.Visible = true
    btnAbaInfo.BackgroundColor3 = Color3.fromRGB(0, 170, 255); btnAbaInfo.TextColor3 = Color3.new(1,1,1)
    btnAbaChat.BackgroundColor3 = Color3.fromRGB(30, 30, 35); btnAbaChat.TextColor3 = Color3.fromRGB(150, 150, 150)
end)

local minimizado = false
minBtn.MouseButton1Click:Connect(function()
    minimizado = not minimizado
    mf.Size = minimizado and UDim2.new(0, 320, 0, 40) or UDim2.new(0, 320, 0, 300)
    tabFrame.Visible = not minimizado; chatFrame.Visible = (not minimizado and chatFrame.Visible)
    infoFrame.Visible = (not minimizado and infoFrame.Visible)
    subtitle.Visible = not minimizado
end)

-- [[ 3. LÓGICA DO RADAR E CHAT ]]
local function AdicionarMensagemNaTela(nome, id, textoCriptografado, ehPrivado, alvo)
    local msgFrame = Instance.new("Frame", container)
    msgFrame.Size = UDim2.new(1, 0, 0, 20); msgFrame.BackgroundTransparency = 1
    local msgText = Instance.new("TextLabel", msgFrame)
    msgText.Size = UDim2.new(1, 0, 1, 0); msgText.BackgroundTransparency = 1; msgText.RichText = true
    msgText.TextColor3 = Color3.new(1,1,1); msgText.Font = Enum.Font.Gotham; msgText.TextSize = 12; msgText.TextXAlignment = 0
    
    local sucesso, textoReal = pcall(function() return Descriptografar(textoCriptografado) end)
    if not sucesso then textoReal = "[MENSAGEM ILEGÍVEL]" end

    local cor = (id == MEU_ID) and "#ffd700" or "#ffffff"
    local prefixo = (id == MEU_ID) and "👑 " or "👤 "
    local selo = (id == MEU_ID) and " " .. SELO or ""
    local tagPrivado = ehPrivado and string.format("<b><font color='#ff00ff'>[🔒 P/ @%s]</font></b> ", alvo) or ""
    
    msgText.Text = string.format("%s<b><font color='%s'>[%s%s%s]</font></b>: %s", tagPrivado, cor, prefixo, nome, selo, textoReal)
    
    local tb = game:GetService("TextService"):GetTextSize(msgText.Text, 12, Enum.Font.Gotham, Vector2.new(container.AbsoluteSize.X, 9999))
    msgFrame.Size = UDim2.new(1, 0, 0, tb.Y + 4)
    container.CanvasSize = UDim2.new(0, 0, 0, uil.AbsoluteContentSize.Y + 10)
    container.CanvasPosition = Vector2.new(0, container.CanvasSize.Y.Offset)
    Debris:AddItem(msgFrame, TEMPO_LIMPEZA)
end

local function EnviarMensagem()
    local texto = input.Text; if texto == "" or not req then return end
    input.Text = "Enviando..."; local alvo = ""; local textoReal = texto
    if string.sub(texto, 1, 1) == "@" then
        local espaco = string.find(texto, " ")
        if espaco then alvo = string.sub(texto, 2, espaco - 1); textoReal = string.sub(texto, espaco + 1) end
    end
    local dados = HS:JSONEncode({ n = L.DisplayName, i = L.UserId, t = Criptografar(textoReal), a = alvo })
    task.spawn(function()
        local res = req({Url = FIREBASE_URL .. "comunidade.json", Method = "POST", Headers = {["Content-Type"]="application/json"}, Body = dados})
        if res and res.StatusCode == 200 then input.Text = "" else input.Text = "Erro!"; wait(1); input.Text = "" end
    end)
end

send.MouseButton1Click:Connect(EnviarMensagem)
input.FocusLost:Connect(function(enter) if enter then EnviarMensagem() end end)

local mensagensLidas = {}
task.spawn(function()
    if not req then return end
    while task.wait(0.5) do
        pcall(function()
            local res = req({Url = FIREBASE_URL .. "comunidade.json", Method = "GET"})
            if res and res.StatusCode == 200 and res.Body ~= "null" then
                local dados = HS:JSONDecode(res.Body)
                for chave, msg in pairs(dados) do
                    if not mensagensLidas[chave] then
                        mensagensLidas[chave] = true
                        local ehPraMim = true; local ehPrivado = false
                        if msg.a and msg.a ~= "" then
                            ehPrivado = true
                            if string.lower(msg.a) ~= string.lower(L.DisplayName) and string.lower(msg.a) ~= string.lower(L.Name) and msg.i ~= L.UserId then
                                ehPraMim = false
                            end
                        end
                        if ehPraMim then AdicionarMensagemNaTela(msg.n, msg.i, msg.t, ehPrivado, msg.a) end
                    end
                end
            end
        end)
    end
end)

-- [[ 4. SISTEMA DE PRESENÇA (RADAR ONLINE) ]]
task.spawn(function()
    if not req then return end
    while task.wait(10) do -- A cada 10 segs, envia um sinal de vida
        pcall(function()
            local dados = HS:JSONEncode({ n = L.DisplayName, t = os.time() })
            req({Url = FIREBASE_URL .. "online/" .. L.UserId .. ".json", Method = "PUT", Body = dados})
        end)
    end
end)

task.spawn(function()
    if not req then return end
    while task.wait(5) do -- A cada 5 segs, atualiza a lista de quem tá online
        pcall(function()
            local res = req({Url = FIREBASE_URL .. "online.json", Method = "GET"})
            if res and res.StatusCode == 200 and res.Body ~= "null" then
                local dados = HS:JSONDecode(res.Body)
                for _, filho in pairs(onlineContainer:GetChildren()) do if filho:IsA("TextButton") then filho:Destroy() end end
                
                local contador = 0
                for id, info in pairs(dados) do
                    if os.time() - info.t < 25 then -- Se deu sinal de vida nos últimos 25 segundos
                        contador = contador + 1
                        local btnPlayer = Instance.new("TextButton", onlineContainer)
                        btnPlayer.Size = UDim2.new(1, 0, 0, 25); btnPlayer.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
                        btnPlayer.Text = "🟢 " .. info.n; btnPlayer.TextColor3 = Color3.new(1,1,1)
                        btnPlayer.Font = Enum.Font.Gotham; btnPlayer.TextSize = 11; btnPlayer.TextXAlignment = 0
                        Instance.new("UICorner", btnPlayer).CornerRadius = UDim.new(0, 4)
                        
                        -- Clicou no nome? Puxa ele pro chat com o @
                        btnPlayer.MouseButton1Click:Connect(function()
                            btnAbaChat.BackgroundColor3 = Color3.fromRGB(0, 170, 255); btnAbaChat.TextColor3 = Color3.new(1,1,1)
                            btnAbaInfo.BackgroundColor3 = Color3.fromRGB(30, 30, 35); btnAbaInfo.TextColor3 = Color3.fromRGB(150, 150, 150)
                            infoFrame.Visible = false; chatFrame.Visible = true
                            input.Text = "@" .. info.n .. " "
                            input:CaptureFocus()
                        end)
                    end
                end
                onlineTitle.Text = "🟢 JOGADORES CONECTADOS AGORA: " .. contador
                onlineContainer.CanvasSize = UDim2.new(0, 0, 0, uilOnline.AbsoluteContentSize.Y + 5)
            end
        end)
    end
end)

