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
local NPC = 14417;
local savenum = 431;

if EVENT == 100 then
ItemA = HowmuchItem(UID, 910127000);  -- ��ɼ� 
    if  ItemA == 0 then -- ��ɼ� ������
    SelectMsg(UID, 2, savenum, 4550, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else-- ��ɼ� ������ 
    SelectMsg(UID, 4, savenum, 4551, NPC, 22, 101, 23, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 101 then
    SelectMsg(UID, 2, savenum, 4552, NPC, 4212, 102, 4213, 103, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 102 then
   ChangePosition(UID)
   RunExchange(UID, 482);		 
   SaveEvent(UID, 4297);
end

if EVENT == 103 then
    ChangePosition(UID)
    RobItem(UID, 910127000, 1);
    SelectMsg(UID, 2, savenum, 4553, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
