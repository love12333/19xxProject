
-- [����]����
-- �׳� �ݱ� 101

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC= 14407; --NPC ��ȣ 


-- [����]���� ����Ʈ üũ  

if EVENT == 100 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4273, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          NpcMsg(UID, 4274, NPC)
      else--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 101 then -- �׳� �ݱ� 
    Ret = 1;
end


-----------------------------------------------------------
-- ��ũ�糪 ���� 

local savenum = 63;
local Level
local NATION
-----------------------------------------------------------

-- [����]����  63���� �Ӽ� 0�� 4���� ���

if EVENT == 105 then
Level = CheckLevel(UID)
    if Level > 29 and Level < 50 then -- 30~50���� 
    SelectMsg(UID, 4, savenum, 4277, NPC, 22, 106, 23, 107, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif Level > 50 then
    SelectMsg(UID, 2, savenum, 4278, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    SaveEvent(UID, 4174);
    else
    SelectMsg(UID, 2, savenum, 4278, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 106 then
    SaveEvent(UID,4173);
end

if EVENT == 107 then
    SaveEvent(UID,4176);
end

--[����]����  63���� �Ӽ� 1�� 3���� ���

   local ItemA = 0;


if EVENT == 110 then 
    SelectMsg(UID, 2, savenum, 4280, NPC, 4171, 120, 4063, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 120 then 
    ItemA = HowmuchItem(UID, 910084000);  
   if  ItemA == 0 then 
       SelectMsg(UID, 2, savenum, 4279, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
    SaveEvent(UID, 4174);
    RunExchange(UID, 468);
   end
end
-----------------------------------------------------------
-- ��ũ�糪 �� 
-----------------------------------------------------------

-----------------------------------------------------------
-- �糪 ���� 
local savenum = 64;
local Level
local NATION
-----------------------------------------------------------

-- [����]����  64���� �Ӽ� 0�� 4���� ���

if EVENT == 125 then
Level = CheckLevel(UID)
    if Level > 39 then -- 40 �̻��϶� 
    SelectMsg(UID, 4, savenum, 4283, NPC, 22, 126, 23, 127, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else
    SelectMsg(UID, 2, savenum, 4284, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 126 then
    SaveEvent(UID,4178);
end

if EVENT == 127 then
    SaveEvent(UID,4181);
end

--[����]���� 64���� �Ӽ� 1�� 3���� ���

   local ItemA = 0;


if EVENT == 130 then 
    SelectMsg(UID, 2, savenum, 4285, NPC, 4171, 131, 4063, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 131 then 
    ItemA = HowmuchItem(UID, 910085000);  
   if  ItemA == 0 then 
       SelectMsg(UID, 2, savenum, 4179, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
    SaveEvent(UID, 4168);
    RunExchange(UID, 469);
   end
end

-----------------------------------------------------------
-- �糪 �� 
-----------------------------------------------------------
