-- ���� ķ�� ����Ʈ
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
local NPC =10305;


-- ���� ķ�� ����Ʈ Ŭ���� ����Ʈ üũ  

if EVENT == 500 then
NpcMsg(UID, 4706,19006)
end

if EVENT == 168 then -- �׳� �ݱ� 
    Ret = 1;
end

if EVENT == 169 then -- �̵� 
    MoveMiddleStatue(UID)
end

