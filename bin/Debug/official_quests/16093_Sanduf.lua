-- EVENT �� 100�� �̻� ���� ���

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC =16093;

-- �߱��� �̵� 


if EVENT == 190 then
    SelectMsg(UID, 2, -1, 4631, NPC, 4226, 191, 4227, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);        
end

if EVENT == 191 then
Level = CheckLevel(UID)
Nation = CheckNation(UID)
    if Level < 60 then
    SelectMsg(UID, 2, -1, 4705, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);        
    else
        if Nation == 1 then
        RobItem(UID, 900000000, 6000)
        ZoneChange(UID, 85, 235, 489)
        else
        RobItem(UID, 900000000, 6000)
        ZoneChange(UID, 86, 235, 489)
        end
    end
end

if EVENT == 168 then -- �׳� �ݱ� 
    Ret = 1;
end

