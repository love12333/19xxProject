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
local NPC = 14418;
local savenum = 432;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910128000);  -- 1��° ��ǥ 
    if  ItemA == 0 then -- 1��° ��ǥ  ������
    SelectMsg(UID, 2, savenum, 4554, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- 1��° ��ǥ  ������ 
    SelectMsg(UID, 4, savenum, 4555, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4556, NPC, 4214, 103, 4215, 102, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 102 then
   ChangePosition(UID)
   RunExchange(UID, 483);		 
   SaveEvent(UID, 4298);
end

if EVENT == 103 then
    ChangePosition(UID)
    RobItem(UID, 910128000, 1);
    SelectMsg(UID, 2, savenum, 4557, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
