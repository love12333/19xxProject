
-- [����]�츣��
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
local NPC= 24407; --NPC ��ȣ 


-- [����]�츣�� ����Ʈ üũ  

if EVENT == 100 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4173, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          NpcMsg(UID, 4174, NPC)
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

if EVENT == 103 then
Level = CheckLevel(UID)
    if Level > 29 and Level < 50 then -- 30~50���� 
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SaveEvent(UID,4160);
        SelectMsg(UID, 1, savenum, 4175, NPC, 4080, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SaveEvent(UID,4172);
        SelectMsg(UID, 1, savenum, 4176, NPC, 4080, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else
     Ret = 1;
    end
end

-- [����]�츣��  63���� �Ӽ� 0�� 4���� ���

if EVENT == 105 then
Level = CheckLevel(UID)
    if Level > 29 and Level < 50 then -- 30~50���� 
    SelectMsg(UID, 4, savenum, 4177, NPC, 22, 106, 23, 107, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif Level > 50 then
    SelectMsg(UID, 2, savenum, 4178, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    SaveEvent(UID, 4162);
    else
    SelectMsg(UID, 2, savenum, 4178, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 106 then
    SaveEvent(UID,4161);
end

if EVENT == 107 then
    SaveEvent(UID,4164);
end

--[����]�츣��  63���� �Ӽ� 1�� 3���� ���

   local ItemA = 0;


if EVENT == 110 then 
    SelectMsg(UID, 2, savenum, 4180, NPC, 4171, 120, 4063, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 120 then 
    ItemA = HowmuchItem(UID, 910084000);  
   if ItemA == 0 then 
       SelectMsg(UID, 2, savenum, 4179, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
    SaveEvent(UID, 4162);
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


if EVENT == 123 then
Level = CheckLevel(UID)
    if Level > 39 then -- 40 �̻��϶� 
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SaveEvent(UID,4166);
        SelectMsg(UID, 1, savenum, 4181, NPC, 4080, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SaveEvent(UID,4177);
        SelectMsg(UID, 1, savenum, 4182, NPC, 4080, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else
     Ret = 1;
    end
end

-- [����]�츣��  64���� �Ӽ� 0�� 4���� ���

if EVENT == 125 then
Level = CheckLevel(UID)
    if Level > 39 then -- 40 �̻��϶� 
    SelectMsg(UID, 4, savenum, 4183, NPC, 22, 126, 23, 127, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else
    SelectMsg(UID, 2, savenum, 4184, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 126 then
    SaveEvent(UID,4167);
end

if EVENT == 127 then
    SaveEvent(UID,4170);
end

--[����]�츣��  64���� �Ӽ� 1�� 3���� ���

   local ItemA = 0;


if EVENT == 130 then 
    SelectMsg(UID, 2, savenum, 4185, NPC, 4171, 131, 4063, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 131 then 
    ItemA = HowmuchItem(UID, 910085000);  
   if  ItemA == 0 then 
       SelectMsg(UID, 2, savenum, 4186, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
    SaveEvent(UID, 4168);
    RunExchange(UID, 469);
   end
end

-----------------------------------------------------------
-- �糪 �� 
-----------------------------------------------------------
