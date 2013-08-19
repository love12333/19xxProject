
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 16085;

if EVENT == 165 then
	SelectMsg(UID, 3, -1, 4131, NPC, 17097, 200, 17096, 600, 17095, 300, 17094, 700, 4192, 400, 17093, 500, 10, 168);
end

if EVENT == 168 then
    Ret = 1;
end

local savenum = 426;

if EVENT == 200 then
   ITEM_COUNTA = HowmuchItem(UID, 800032000);
    if ITEM_COUNTA > 0 then
    SendNameChange(UID)
    else
    SelectMsg(UID, 2, savenum, 4454, NPC, 10, 168);
    end
end

local savenum = 450;

if EVENT == 600 then
   ITEM_COUNTA = HowmuchItem(UID, 800086000);
    if ITEM_COUNTA > 0 then
        Check = isClanLeader(UID)
        if Check then 
        SendClanNameChange(UID) --Lua Fonksiyonu Eksik
        else
        SelectMsg(UID, 2, savenum, 4671, NPC, 10, 168);
        end
    else
    SelectMsg(UID, 2, savenum, 4670, NPC, 10, 168);
    end
end

local savenum = 427;

if EVENT == 300 then -- Skill ve Stat Point Sýfýrlama Redisbition Item ile
   ITEM_COUNTA = HowmuchItem(UID, 700001000);
    if ITEM_COUNTA > 0 then
    SelectMsg(UID, 2, savenum, 4456, NPC, 4189, 301, 4190, 302);
    else
    SelectMsg(UID, 2, savenum, 4455, NPC, 10, 168);
    end
end

if EVENT == 301 then
    Check1 = CheckSkillPoint(UID)
    if Check1 > 0 then    
    RobItem(UID, 700001000, 1);
    SelectMsg(UID, 2, savenum, 4473, NPC, 10, 168);   
    else
    Ret = 1;
    end
end

if EVENT == 302 then
    GetStat = CheckStatPoint(UID)
    if GetStat > 0 then    
    RobItem(UID, 700001000, 1);
    SelectMsg(UID, 2, savenum, 4474, NPC, 10, 168);
    else
    Ret = 1;
    end
end

local savenum = 451;

if EVENT == 700 then -- Skill ve Stat Point Sýfýrlama Redisbition Item ile (Middle Class)
    Level = CheckLevel(UID)
    if Level > 59 then
    SelectMsg(UID, 2, savenum, 4674, NPC, 10, 168);
    else 
        ITEM_COUNTA = HowmuchItem(UID, 700008000);
        if ITEM_COUNTA > 0 then
        SelectMsg(UID, 2, savenum, 4673, NPC, 4189, 701, 4190, 702);
        else
        SelectMsg(UID, 2, savenum, 4672, NPC, 10, 168);
        end
    end
end

local Skill
local Stat

if EVENT == 701 then
    Skill = SkillPointFree(UID)
    if Skill == 1 then    
    RobItem(UID, 700008000, 1);
    SelectMsg(UID, 2, savenum, 4473, NPC, 10, 168);   
    else
    Ret = 1;
    end
end

if EVENT == 702 then
    Stat = StatPointFree(UID)
    if Stat == 1 then    
    RobItem(UID, 700008000, 1);
    SelectMsg(UID, 2, savenum, 4474, NPC, 10, 168);
    else
    Ret = 1;
    end
end

local savenum = 428;

if EVENT == 400 then
    SelectMsg(UID, 2, savenum, 4457, NPC, 4192, 401, 4191, 168);
end

if EVENT == 401 then  
OpenEditBox(UID, 4459, 402, 403)
end

if EVENT == 402 then 
    SelectMsg(UID, 2, savenum, 4460, NPC, 10, 168);
end

if EVENT == 403 then
Serial=CheckPPCardSerial(UID)
    if Serial == 1 then
    Slot = CheckGiveSlot(UID) 
        if Slot > 0 then
        GivePPCardItem(UID)
        else
        SelectMsg(UID, 2, savenum, 4645, NPC, 10, 168);
        end
    else
    SelectMsg(UID, 2, savenum, 4472, NPC, 10, 168);
    end
end

local savenum = 429;

if EVENT == 500 then -- Lotto
    CheckPCBangOwner(UID, 504, 505)
end

if EVENT == 504 then
    SelectMsg(UID, 2, savenum, 4462, NPC, 10, 168);
end

if EVENT == 505 then
    SelectMsg(UID, 3, savenum, 4461, NPC, 4193, 501, 4194, 502, 4195, 503, 4196, 168);
end

if EVENT == 501 then 
CheckPCBangItem(UID, 379095000, 506, 507)
end

if EVENT == 506 then  
    SelectMsg(UID, 2, savenum, 4463, NPC, 10, 168);
end

if EVENT == 507 then 
    SelectMsg(UID, 2, savenum, 4466, NPC, 4197, 508, 4199, 168);
end

if EVENT == 508 then
    Check = CheckGiveSlot(UID)
    if  Check > 1 then   
    GivePCBangItem(UID,379095000) 
    SelectMsg(UID, 2, savenum, 4468, NPC, 10, 168);
    else
    Ret = 1; 
    end  
end

if EVENT == 502 then
    CheckPCBangItem(UID, -1, 509, 510)
end

if EVENT == 509 then 
    SelectMsg(UID, 2, savenum, 4465, NPC, 10, 168);
end

if EVENT == 510 then 
    SelectMsg(UID, 2, savenum, 4467, NPC, 4198, 511, 4199, 168);
end

if EVENT == 511 then 
    Check = CheckGiveSlot(UID, -1)
    if  Check > 1 then   
    GivePCBangItem(UID,-1)  
    SelectMsg(UID, 2, savenum, 4469, NPC, 10, 168);
    else
    Ret = 1; 
    end  
end

if EVENT == 503 then 
ShowPCBangItem(UID, 379095000) 
end

if EVENT == 520 then
	SelectMsg(UID, 4, 556, 6390, NPC, 4161, 116, 4162, 241);
end
