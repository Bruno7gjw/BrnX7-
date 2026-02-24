-- [[ BRX-7 COMMUNITY: FULL PROTECTED VERSION ]]
-- @brnx7exe

local _1,_2,_3,_4=game:GetService("\80\108\97\121\101\114\115"),game:GetService("\72\116\116\112\83\101\114\118\105\99\101"),game:GetService("\68\101\98\114\105\115"),7308934691;local _5,_6,_7,_8=_1.LocalPlayer,"\104\116\116\112\115\58\47\47\98\114\110\120\55\45\99\104\97\116\45\114\111\98\108\111\120\45\100\101\102\97\117\108\116\45\114\116\100\98\46\102\105\114\101\98\97\115\101\105\111\46\99\111\109\47","\66\82\78\88\55\95\67\79\77\85\78\73\68\65\68\69\95\71\76\79\66\65\76",utf8.char(0xE000);local _R=(syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;

-- [[ MOTOR DE SEGURANÇA ]]
local function _D(h) local t="" local j=1 for i=1,#h,2 do local b=(tonumber(string.sub(h,i,i+1),16)-string.byte(string.sub(_7,((j-1)%#_7)+1,((j-1)%#_7)+1)))%256 t=t..string.char(b) j=j+1 end return t end;local function _TRAP() if _4 ~= 7308934691 or not string.find(_6, "\98\114\110\120\55") then while true do end end end; _TRAP();

-- [[ TELA DE CARREGAMENTO ]]
local ls = Instance.new("ScreenGui", game:GetService("CoreGui")); local lf = Instance.new("Frame", ls); lf.Size = UDim2.new(0,300,0,100); lf.Position = UDim2.new(0.5,-150,0.5,-50); lf.BackgroundColor3 = Color3.fromRGB(10,10,10); Instance.new("UICorner", lf); local lt = Instance.new("TextLabel", lf); lt.Size = UDim2.new(1,0,1,0); lt.BackgroundTransparency = 1; lt.TextColor3 = Color3.new(1,1,1); lt.Font = Enum.Font.GothamBold; lt.Text = "CARREGANDO BRX-7..."; task.wait(2); ls:Destroy();

-- [[ INTERFACE PRINCIPAL BLINDADA ]]
local sg=Instance.new("ScreenGui",game:GetService("CoreGui"));sg.Name="\66\82\88\95\72\85\66";local mf=Instance.new("Frame",sg);mf.Size=UDim2.new(0,320,0,300);mf.Position=UDim2.new(0.5,-160,0.5,-150);mf.BackgroundColor3=Color3.fromRGB(12,12,16);mf.Active=true;mf.Draggable=true;Instance.new("UICorner",mf);

local title=Instance.new("TextLabel",mf);title.Size=UDim2.new(1,0,0,30);title.BackgroundTransparency=1;title.TextColor3=Color3.fromRGB(0,170,255);title.Font=Enum.Font.GothamBlack;
title.Text = "\240\159\145\145\32\66\82\78\88\55\32\67\79\77\77\85\78\73\84\89" -- Nome blindado

local sub=Instance.new("TextLabel",mf);sub.Size=UDim2.new(1,0,0,15);sub.Position=UDim2.new(0,0,0,25);sub.BackgroundTransparency=1;sub.TextColor3=Color3.new(1,0.8,0);sub.Font=Enum.Font.GothamBold;sub.TextSize=10;
sub.Text = "\64\98\114\110\120\55\101\120\101" -- @brnx7exe blindado

-- [[ RADAR E CHAT ]]
task.spawn(function() while task.wait(10) do pcall(function() _R({Url=_6.."\111\110\108\105\110\101\47".._5.UserId.."\46\106\115\111\110",Method="\80\85\84",Body=_2:JSONEncode({n=_5.DisplayName,t=os.time()})}) end) end end)

print("\91\66\82\88\45\55\93\32\83\67\82\73\80\84\32\65\84\73\86\65\68\79")
