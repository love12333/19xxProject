--[������ ������]���ٵ�
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

-- [������ ������]���ٵ� Ŭ���� ����Ʈ üũ  

local ItemA;
local NPC = 24423;
local savenum = 437;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910133000);  -- 6��° ��ǥ
    if  ItemA == 0 then -- 6��° ��ǥ ������
    SelectMsg(UID, 2, savenum, 4544, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- 6��° ��ǥ ������ 
    SelectMsg(UID, 4, savenum, 4545, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4546, NPC, 4224, 102, 4225, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 103 then
   ChangePosition(UID)
   RunExchange(UID, 488);		 
   SaveEvent(UID, 4289);
end

if EVENT == 102 then
    ChangePosition(UID)
    RobItem(UID, 910133000, 1);
    SelectMsg(UID, 2, savenum, 4547, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
