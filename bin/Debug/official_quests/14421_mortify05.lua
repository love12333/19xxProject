--[������ ������]����
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

-- [������ ������]���� Ŭ���� ����Ʈ üũ  

local ItemA;
local NPC = 14421;
local savenum = 435;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910131000);  -- 4��° ��ǥ
    if  ItemA == 0 then  -- 4��° ��ǥ ������
    SelectMsg(UID, 2, savenum, 4566, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- 4��° ��ǥ ������ 
    SelectMsg(UID, 4, savenum, 4567, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4568, NPC, 4220, 102, 4221, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 102 then
   ChangePosition(UID)
   RunExchange(UID, 486);		 
   SaveEvent(UID, 4301);
end

if EVENT == 103 then
    ChangePosition(UID)
    RobItem(UID, 910131000, 1);
    SelectMsg(UID, 2, savenum, 4569, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
