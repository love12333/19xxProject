--[������ ������]������
-- �׳� �ݱ� 168

-- EVENT �� 100�� �̻� ���� ���

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;


if EVENT == 168 then
	Ret = 1;
end

-- [������ ������]������ Ŭ���� ����Ʈ üũ  

local ItemA;
local NPC = 24420;
local savenum = 434;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910130000);  -- 3��° ��ǥ 
    if  ItemA == 0 then -- 3��° ��ǥ  ������
    SelectMsg(UID, 2, savenum, 4532, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- 3��° ��ǥ  ������ 
    SelectMsg(UID, 4, savenum, 4533, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4534, NPC, 4218, 102, 4219, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 103 then
   ChangePosition(UID)
   RunExchange(UID, 485);		 
   SaveEvent(UID, 4286);
end

if EVENT == 102 then
    ChangePosition(UID)
    RobItem(UID, 910130000, 1);
    SelectMsg(UID, 2, savenum, 4535, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
