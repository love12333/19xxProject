--[������ ������]ī��
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

-- [������ ������]ī�� Ŭ���� ����Ʈ üũ  

local ItemA;
local NPC = 14419;
local savenum = 433;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910129000);  -- 2��° ��ǥ 
    if  ItemA == 0 then -- 2��° ��ǥ ������
    SelectMsg(UID, 2, savenum, 4558, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- 2��° ��ǥ  ������ 
    SelectMsg(UID, 4, savenum, 4559, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4560, NPC, 4216, 102, 4217, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 102 then
   ChangePosition(UID)
   RunExchange(UID, 484);		 
   SaveEvent(UID, 4299);
end

if EVENT == 103 then
    ChangePosition(UID)
    RobItem(UID, 910129000, 1);
    SelectMsg(UID, 2, savenum, 4561, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
