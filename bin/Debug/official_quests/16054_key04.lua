
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 16054;


if EVENT == 168 then
	Ret = 1;
end

local ItemA;
local savenum = 419;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910053000);
    if  ItemA == 0 then
    SelectMsg(UID, 2, savenum, 4312, NPC, 10, 168);
    else
    SelectMsg(UID, 4, savenum, 4313, NPC, 22, 101, 23, 168);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4314, NPC, 4180, 102, 4181, 103);
end


if EVENT == 103 then
   --ChangePosition(UID)
   RobItem(UID, 910053000, 1)
   GiveItem(UID, 910054000, 1)
   SaveEvent(UID, 4239);   
end

if EVENT == 102 then
    --ChangePosition(UID)
    RobItem(UID, 910053000, 1)
    SelectMsg(UID, 2, savenum, 4315, NPC, 10, 168);
end
