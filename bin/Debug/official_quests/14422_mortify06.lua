--[������ ������]ǻ��
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

-- [������ ������]ǻ�� Ŭ���� ����Ʈ üũ  

local ItemA;
local NPC = 14422;
local savenum = 436;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910132000);   -- 5��° ��ǥ
    if  ItemA == 0 then  -- 5��° ��ǥ ������
    SelectMsg(UID, 2, savenum, 4570, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- 5��° ��ǥ ������ 
    SelectMsg(UID, 4, savenum, 4571, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4572, NPC, 4222, 102, 4223, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 102 then
   ChangePosition(UID)
   RunExchange(UID, 487);		 
   SaveEvent(UID, 4302);
end

if EVENT == 103 then
    ChangePosition(UID)
    RobItem(UID, 910132000, 1);
    SelectMsg(UID, 2, savenum, 4573, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
