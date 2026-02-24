--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string['char'];
local obf_stringbyte = string['byte'];
local obf_stringsub = string['sub'];
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib['bxor'];
local obf_tableconcat = table['concat'];
local obf_tableinsert = table['insert'];
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + (2 - 1))), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % (732 - 476)));
	end
	return obf_tableconcat(result);
end
local P = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local L = P['LocalPlayer'];
local HS = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\11\217\62\213\207\38\223\60\204\255\38", "\156\67\173\74\165"));
local Debris = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\16\178\75\4\181\53", "\38\84\215\41\118\220\70"));
local MEU_ID = 7308934691;
local FIREBASE_URL = LUAOBFUSACTOR_DECRYPT_STR_0("\88\2\54\2\237\10\89\109\16\236\94\14\117\95\253\88\23\54\95\236\95\20\46\29\230\29\18\39\20\255\69\26\54\95\236\68\18\32\92\248\89\4\39\16\255\67\19\43\29\176\83\25\47\93", "\158\48\118\66\114");
local SELO = utf8.char(57344);
local CHAVE_SECRETA = LUAOBFUSACTOR_DECRYPT_STR_0("\137\22\62\14\36\154\216\132\9\37\24\90\129\218\143\1\47\17\95\138\217\138\8", "\155\203\68\112\86\19\197");
local TEMPO_LIMPEZA = 231 - 111;
local req = (syn and syn['request']) or (http and http['request']) or http_request or (fluxus and fluxus['request']) or request;
local function Criptografar(texto)
	local hex = "";
	for i = 2 - 1, #texto do
		local byte = (string.byte(string.sub(texto, i, i)) + string.byte(string.sub(CHAVE_SECRETA, ((i - (620 - (555 + 64))) % #CHAVE_SECRETA) + 1, ((i - 1) % #CHAVE_SECRETA) + (932 - (857 + 74))))) % (824 - (367 + 201));
		hex = hex .. string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\3\141\100\196", "\152\38\189\86\156\32\24\133"), byte);
	end
	return hex;
end
local function Descriptografar(hex)
	local texto = "";
	local j = 928 - (214 + 713);
	for i = 1 + 0, #hex, 1 + 1 do
		local byte = (tonumber(string.sub(hex, i, i + (878 - (282 + 595))), 1653 - (1523 + 114)) - string.byte(string.sub(CHAVE_SECRETA, ((j - (1 + 0)) % #CHAVE_SECRETA) + 1, ((j - (1 - 0)) % #CHAVE_SECRETA) + (1066 - (68 + 997))))) % (1526 - (226 + 1044));
		texto = texto .. string.char(byte);
		j = j + 1;
	end
	return texto;
end
local sg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\84\181\67\249\89\128\83\245", "\38\156\55\199"));
sg['Name'] = LUAOBFUSACTOR_DECRYPT_STR_0("\138\79\68\23\48\91\215\118\134\84\88\9\55\81", "\35\200\29\28\72\115\20\154");
sg['ResetOnSpawn'] = false;
local success = pcall(function()
	sg['Parent'] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\58\176\195\218\170\57\61", "\84\121\223\177\191\237\76"));
end);
if not success then
	sg['Parent'] = L:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\139\90\200\185\63\66\23\212\178", "\161\219\54\169\192\90\48\80"));
end
if (sg['Parent']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\107\112\56\26\106\109\45\16\103\107\36\4\109\103", "\69\41\34\96")) and (sg['Parent']['BRX_COMUNIDADE'] ~= sg)) then
	sg['Parent']['BRX_COMUNIDADE']:Destroy();
end
local mf = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\209\214\7\7", "\75\220\163\183\106\98"), sg);
mf['Size'] = UDim2.new(0, 320, 0 - 0, 417 - (32 + 85));
mf['Position'] = UDim2.new(0.5 + 0, -(36 + 124), 957.5 - (892 + 65), -150);
mf['BackgroundColor3'] = Color3.fromRGB(28 - 16, 21 - 9, 28 - 12);
mf['Active'] = true;
mf['Draggable'] = true;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\147\168\56\203\12\191\153", "\185\98\218\235\87"), mf)['CornerRadius'] = UDim.new(350 - (87 + 263), 8);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\21\20\242\204\165\192\57", "\202\171\92\71\134\190"), mf)['Color'] = Color3.fromRGB(180 - (67 + 113), 170, 187 + 68);
local title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156\5\192\46\141\37", "\232\73\161\76"), mf);
title['Size'] = UDim2.new(1, 0, 0, 30);
title['Text'] = "ðŸ‘‘ BRNX7 COMMUNITY SCRIPT";
title['TextColor3'] = Color3.fromRGB(0, 417 - 247, 188 + 67);
title['Font'] = Enum['Font']['GothamBlack'];
title['BackgroundTransparency'] = 1;
title['TextSize'] = 51 - 38;
local subtitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\90\73\50\186\219\71\81", "\126\219\185\34\61"), mf);
subtitle['Size'] = UDim2.new(1, 0, 0, 967 - (802 + 150));
subtitle['Position'] = UDim2.new(0 - 0, 0, 0 - 0, 25);
subtitle['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\60\207\76\113\123\101\250\230\31\142\80\125\62\94\212\189\76\238\92\96\112\111\164\226\20\203", "\135\108\174\62\18\30\23\147");
subtitle['TextColor3'] = Color3.fromRGB(255, 157 + 58, 997 - (915 + 82));
subtitle['Font'] = Enum['Font']['GothamBold'];
subtitle['BackgroundTransparency'] = 1;
subtitle['TextSize'] = 28 - 18;
local minBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\50\223\58\187\39\211\185\231", "\167\214\137\74\171\120\206\83"), mf);
minBtn['Size'] = UDim2.new(0 + 0, 46 - 11, 1187 - (1069 + 118), 35);
minBtn['Position'] = UDim2.new(2 - 1, -35, 0, 0);
minBtn['Text'] = "-";
minBtn['TextColor3'] = Color3.new(1 - 0, 1, 1);
minBtn['BackgroundTransparency'] = 1;
minBtn['Font'] = Enum['Font']['GothamBold'];
minBtn['TextSize'] = 18;
local tabFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\226\51\80\253", "\199\235\144\82\61\152"), mf);
tabFrame['Size'] = UDim2.new(1, 0 + 0, 0 - 0, 30 + 0);
tabFrame['Position'] = UDim2.new(791 - (368 + 423), 0 - 0, 18 - (10 + 8), 172 - 127);
tabFrame['BackgroundTransparency'] = 443 - (416 + 26);
local btnAbaChat = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\19\161\63\37\3\173\63\8\24", "\75\103\118\217"), tabFrame);
btnAbaChat['Size'] = UDim2.new(0.5, 0 - 0, 1 + 0, 0 - 0);
btnAbaChat['Text'] = "ðŸ’¬ CHAT GLOBAL";
btnAbaChat['Font'] = Enum['Font']['GothamBold'];
btnAbaChat['TextSize'] = 449 - (145 + 293);
btnAbaChat['BackgroundColor3'] = Color3.fromRGB(0, 600 - (44 + 386), 1741 - (998 + 488));
btnAbaChat['TextColor3'] = Color3.new(1, 1 + 0, 1);
local btnAbaInfo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0\155\11\211\64\127\26", "\126\167\52\16\116\217"), tabFrame);
btnAbaInfo['Size'] = UDim2.new(0.5 + 0, 772 - (201 + 571), 1139 - (116 + 1022), 0);
btnAbaInfo['Position'] = UDim2.new(0.5, 0, 0 - 0, 0 + 0);
btnAbaInfo['Text'] = "ðŸ“¡ RADAR / INFO";
btnAbaInfo['Font'] = Enum['Font']['GothamBold'];
btnAbaInfo['TextSize'] = 11;
btnAbaInfo['BackgroundColor3'] = Color3.fromRGB(109 - 79, 30, 124 - 89);
btnAbaInfo['TextColor3'] = Color3.fromRGB(150, 150, 1009 - (814 + 45));
local chatFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\60\33\141\177", "\156\168\78\64\224\212\121"), mf);
chatFrame['Size'] = UDim2.new(2 - 1, 0 + 0, 1, -75);
chatFrame['Position'] = UDim2.new(0 + 0, 0, 0, 960 - (261 + 624));
chatFrame['BackgroundTransparency'] = 1;
local container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\237\183\193\11\226\172\192\0\200\183\207\10\235", "\174\103\142\197"), chatFrame);
container['Size'] = UDim2.new(1, -(35 - 15), 1081 - (1020 + 60), -(1468 - (630 + 793)));
container['Position'] = UDim2.new(0, 10, 0, 16 - 11);
container['BackgroundTransparency'] = 4 - 3;
container['ScrollBarThickness'] = 1 + 1;
local uil = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\1\115\49\54\74\212\87\49\80\45\49", "\152\54\72\63\88\69\62"), container);
uil['Padding'] = UDim.new(0, 5);
local input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\193\246\72\246\203\246", "\60\180\164\142"), chatFrame);
input['Size'] = UDim2.new(1, -80, 0 - 0, 1777 - (760 + 987));
input['Position'] = UDim2.new(0, 10, 1914 - (1789 + 124), -35);
input['BackgroundColor3'] = Color3.fromRGB(20, 786 - (745 + 21), 9 + 16);
input['TextColor3'] = Color3.fromRGB(0, 170, 701 - 446);
input['PlaceholderText'] = LUAOBFUSACTOR_DECRYPT_STR_0("\24\115\4\39\35\232\82\77\83\69\58\38\225\4\93\30\10\60\103\205\60\87\83\0\103\105\163", "\114\56\62\101\73\71\141");
input['Font'] = Enum['Font']['Gotham'];
input['TextSize'] = 43 - 32;
input['TextXAlignment'] = 0;
input['ClearTextOnFocus'] = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\192\248\203\170\231\222\214", "\164\216\137\187"), input)['CornerRadius'] = UDim.new(0 + 0, 6);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\207\2\166\180\241\0\215", "\107\178\134\81\210\198\158"), input)['Color'] = Color3.fromRGB(0 + 0, 100, 1255 - (87 + 968));
local send = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\11\154\210\136\45\26\150\201\164", "\202\88\110\226\166"), chatFrame);
send['Size'] = UDim2.new(0 - 0, 65, 0 + 0, 67 - 37);
send['Position'] = UDim2.new(1, -75, 1, -35);
send['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\230\33\180\222\235\241", "\170\163\111\226\151");
send['BackgroundColor3'] = Color3.fromRGB(0, 1513 - (447 + 966), 200);
send['TextColor3'] = Color3.new(1, 2 - 1, 1818 - (1703 + 114));
send['Font'] = Enum['Font']['GothamBold'];
send['TextSize'] = 712 - (376 + 325);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\25\145\55\92\57\44\3", "\73\113\80\210\88\46\87"), send)['CornerRadius'] = UDim.new(0 - 0, 18 - 12);
local infoFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\167\62\204\31\226", "\135\225\76\173\114"), mf);
infoFrame['Size'] = UDim2.new(1 + 0, 0 - 0, 15 - (9 + 5), -75);
infoFrame['Position'] = UDim2.new(0, 0, 0, 451 - (85 + 291));
infoFrame['BackgroundTransparency'] = 1266 - (243 + 1022);
infoFrame['Visible'] = false;
local instrucoes = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\232\160\164\128\188\165\31\225", "\199\122\141\216\208\204\221"), infoFrame);
instrucoes['Size'] = UDim2.new(3 - 2, -20, 0, 33 + 7);
instrucoes['Position'] = UDim2.new(1180 - (1123 + 57), 10, 0 + 0, 0);
instrucoes['Text'] = "Para sussurrar, digite @Nome antes da mensagem!\nEx: @Bruno bora jogar";
instrucoes['TextColor3'] = Color3.new(0.8, 0.8, 254.8 - (163 + 91));
instrucoes['Font'] = Enum['Font']['Gotham'];
instrucoes['TextSize'] = 10;
instrucoes['BackgroundTransparency'] = 1;
local onlineTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228\84\247\175\216\28", "\150\205\189\112\144\24"), infoFrame);
onlineTitle['Size'] = UDim2.new(1, -20, 1930 - (1869 + 61), 20);
onlineTitle['Position'] = UDim2.new(0 + 0, 10, 0, 45);
onlineTitle['Text'] = "ðŸŸ¢ JOGADORES CONECTADOS AGORA (CLIQUE):";
onlineTitle['TextColor3'] = Color3.fromRGB(0, 255, 450 - 322);
onlineTitle['Font'] = Enum['Font']['GothamBold'];
onlineTitle['TextSize'] = 15 - 5;
onlineTitle['BackgroundTransparency'] = 1;
onlineTitle['TextXAlignment'] = 0 + 0;
local onlineContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\135\173\67\8\132\24\30\34\162\173\77\9\141", "\112\69\228\223\44\100\232\113"), infoFrame);
onlineContainer['Size'] = UDim2.new(1 - 0, -(19 + 1), 1, -(1549 - (1329 + 145)));
onlineContainer['Position'] = UDim2.new(0, 981 - (140 + 831), 1850 - (1409 + 441), 783 - (15 + 703));
onlineContainer['BackgroundTransparency'] = 1;
onlineContainer['ScrollBarThickness'] = 2;
local uilOnline = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\43\218\165\104\170\213\6\8\198\162", "\230\180\127\103\179\214\28"), onlineContainer);
uilOnline['Padding'] = UDim.new(0 + 0, 5);
btnAbaChat['MouseButton1Click']:Connect(function()
	chatFrame['Visible'] = true;
	infoFrame['Visible'] = false;
	btnAbaChat['BackgroundColor3'] = Color3.fromRGB(0, 608 - (262 + 176), 1976 - (345 + 1376));
	btnAbaChat['TextColor3'] = Color3.new(1, 1, 1);
	btnAbaInfo['BackgroundColor3'] = Color3.fromRGB(718 - (198 + 490), 30, 35);
	btnAbaInfo['TextColor3'] = Color3.fromRGB(150, 150, 150);
end);
btnAbaInfo['MouseButton1Click']:Connect(function()
	chatFrame['Visible'] = false;
	infoFrame['Visible'] = true;
	btnAbaInfo['BackgroundColor3'] = Color3.fromRGB(0 - 0, 407 - 237, 1461 - (696 + 510));
	btnAbaInfo['TextColor3'] = Color3.new(1 - 0, 1263 - (1091 + 171), 1);
	btnAbaChat['BackgroundColor3'] = Color3.fromRGB(5 + 25, 30, 35);
	btnAbaChat['TextColor3'] = Color3.fromRGB(472 - 322, 150, 150);
end);
local minimizado = false;
minBtn['MouseButton1Click']:Connect(function()
	minimizado = not minimizado;
	mf['Size'] = (minimizado and UDim2.new(0, 1061 - 741, 0, 414 - (123 + 251))) or UDim2.new(0, 1590 - 1270, 698 - (208 + 490), 26 + 274);
	tabFrame['Visible'] = not minimizado;
	chatFrame['Visible'] = not minimizado and chatFrame['Visible'];
	infoFrame['Visible'] = not minimizado and infoFrame['Visible'];
	subtitle['Visible'] = not minimizado;
end);
local function AdicionarMensagemNaTela(nome, id, textoCriptografado, ehPrivado, alvo)
	local msgFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\23\94\75\225", "\128\236\101\63\38\132\33"), container);
	msgFrame['Size'] = UDim2.new(1 + 0, 0, 836 - (660 + 176), 3 + 17);
	msgFrame['BackgroundTransparency'] = 1;
	local msgText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\172\9\80\154\234\205\169\165", "\175\204\201\113\36\214\139"), msgFrame);
	msgText['Size'] = UDim2.new(203 - (14 + 188), 675 - (534 + 141), 1 + 0, 0);
	msgText['BackgroundTransparency'] = 1 + 0;
	msgText['RichText'] = true;
	msgText['TextColor3'] = Color3.new(1 + 0, 1, 1);
	msgText['Font'] = Enum['Font']['Gotham'];
	msgText['TextSize'] = 24 - 12;
	msgText['TextXAlignment'] = 0;
	local sucesso, textoReal = pcall(function()
		return Descriptografar(textoCriptografado);
	end);
	if not sucesso then
		textoReal = "[MENSAGEM ILEGÃVEL]";
	end
	local cor = ((id == MEU_ID) and LUAOBFUSACTOR_DECRYPT_STR_0("\4\202\51\216\83\23\156", "\100\39\172\85\188")) or LUAOBFUSACTOR_DECRYPT_STR_0("\238\126\191\134\53\171\126", "\83\205\24\217\224");
	local prefixo = ((id == MEU_ID) and "ðŸ‘‘ ") or "ðŸ‘¤ ";
	local selo = ((id == MEU_ID) and (" " .. SELO)) or "";
	local tagPrivado = (ehPrivado and string.format("<b><font color='#ff00ff'>[ðŸ”’ P/ @%s]</font></b> ", alvo)) or "";
	msgText['Text'] = string.format("%s<b><font color='%s'>[%s%s%s]</font></b>: %s", tagPrivado, cor, prefixo, nome, selo, textoReal);
	local tb = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\213\41\213\192\223\43\239\198\200", "\93\134\165\173")):GetTextSize(msgText.Text, 12, Enum['Font'].Gotham, Vector2.new(container['AbsoluteSize'].X, 9999));
	msgFrame['Size'] = UDim2.new(1, 0 - 0, 0 - 0, tb['Y'] + 3 + 1);
	container['CanvasSize'] = UDim2.new(0 + 0, 0, 396 - (115 + 281), uil['AbsoluteContentSize']['Y'] + (23 - 13));
	container['CanvasPosition'] = Vector2.new(0 + 0, container['CanvasSize']['Y'].Offset);
	Debris:AddItem(msgFrame, TEMPO_LIMPEZA);
end
local function EnviarMensagem()
	local texto = input['Text'];
	if ((texto == "") or not req) then
		return;
	end
	input['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\155\252\215\203\59\192\182\113\240\188\143", "\30\222\146\161\162\90\174\210");
	local alvo = "";
	local textoReal = texto;
	if (string.sub(texto, 2 - 1, 1) == "@") then
		local espaco = string.find(texto, " ");
		if espaco then
			alvo = string.sub(texto, 7 - 5, espaco - (868 - (550 + 317)));
			textoReal = string.sub(texto, espaco + (1 - 0));
		end
	end
	local dados = HS:JSONEncode({n=L['DisplayName'],i=L['UserId'],t=Criptografar(textoReal),a=alvo});
	task.spawn(function()
		local res = req({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\92\124", "\106\133\46\16")]=(FIREBASE_URL .. LUAOBFUSACTOR_DECRYPT_STR_0("\91\47\126\233\84\73\92\33\119\249\20\74\75\47\125", "\32\56\64\19\156\58")),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\205\241\94\85\246", "\224\58\168\133\54\58\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\121\120\201", "\107\57\54\43\157\21\230\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\142\16\241\188\206\220", "\175\187\235\113\149\217\188")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\31\160\143\88\230\119\108\113\155\152\92\230", "\24\92\207\225\44\131\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\195\168\64\18\126\74\199\177\67\21\50\65\192\183\66", "\29\43\179\216\44\123")},[LUAOBFUSACTOR_DECRYPT_STR_0("\159\214\36\85", "\44\221\185\64")]=dados});
		if (res and (res['StatusCode'] == 200)) then
			input['Text'] = "";
		else
			input['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\36\245\90\80\50", "\19\97\135\40\63");
			wait(1);
			input['Text'] = "";
		end
	end);
end
send['MouseButton1Click']:Connect(EnviarMensagem);
input['FocusLost']:Connect(function(enter)
	if enter then
		EnviarMensagem();
	end
end);
local mensagensLidas = {};
task.spawn(function()
	if not req then
		return;
	end
	while task.wait(0.5 - 0) do
		pcall(function()
			local res = req({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\78\63", "\81\206\60\83\91\79")]=(FIREBASE_URL .. LUAOBFUSACTOR_DECRYPT_STR_0("\77\164\221\103\33\202\73\165\74\174\158\120\60\204\67", "\196\46\203\176\18\79\163\45")),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\39\106\22\43\255", "\143\216\66\30\126\68\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\237\57", "\129\202\168\109\171\165\195\183")});
			if (res and (res['StatusCode'] == 200) and (res['Body'] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\44\77\59\212", "\134\66\56\87\184\190\116"))) then
				local dados = HS:JSONDecode(res.Body);
				for chave, msg in pairs(dados) do
					if not mensagensLidas[chave] then
						mensagensLidas[chave] = true;
						local ehPraMim = true;
						local ehPrivado = false;
						if (msg['a'] and (msg['a'] ~= "")) then
							ehPrivado = true;
							if ((string.lower(msg.a) ~= string.lower(L.DisplayName)) and (string.lower(msg.a) ~= string.lower(L.Name)) and (msg['i'] ~= L['UserId'])) then
								ehPraMim = false;
							end
						end
						if ehPraMim then
							AdicionarMensagemNaTela(msg.n, msg.i, msg.t, ehPrivado, msg.a);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	if not req then
		return;
	end
	while task.wait(27 - 17) do
		pcall(function()
			local dados = HS:JSONEncode({n=L['DisplayName'],t=os.time()});
			req({[LUAOBFUSACTOR_DECRYPT_STR_0("\9\35\5", "\85\92\81\105\219\121\139\65")]=(FIREBASE_URL .. LUAOBFUSACTOR_DECRYPT_STR_0("\242\189\92\76\114\218\178", "\191\157\211\48\37\28") .. L['UserId'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\145\21\231\19\52", "\90\191\127\148\124")),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\130\58\31\119\131", "\119\24\231\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\24\145", "\113\226\77\197\42\188\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\25\240\172", "\213\90\118\148")]=dados});
		end);
	end
end);
task.spawn(function()
	if not req then
		return;
	end
	while task.wait(5) do
		pcall(function()
			local res = req({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\60\184", "\45\59\78\212\54")]=(FIREBASE_URL .. LUAOBFUSACTOR_DECRYPT_STR_0("\31\88\143\130\136\43\227\250\3\89\141", "\144\112\54\227\235\230\78\205")),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\45\27\244\223\95", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\162\215", "\77\46\231\131")});
			if (res and (res['StatusCode'] == (485 - (134 + 151))) and (res['Body'] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\180\65\186\76", "\32\218\52\214"))) then
				local dados = HS:JSONDecode(res.Body);
				for _, filho in pairs(onlineContainer:GetChildren()) do
					if filho:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\211\165\81\78\65\25", "\58\46\119\81\200\145\208\37")) then
						filho:Destroy();
					end
				end
				local contador = 0;
				for id, info in pairs(dados) do
					if ((os.time() - info['t']) < 25) then
						contador = contador + 1;
						local btnPlayer = Instance.new(LU
