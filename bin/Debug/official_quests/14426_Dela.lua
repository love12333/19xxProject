-- [������������]����

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14426;

-- [������������]���� Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4605, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          NpcMsg(UID, 4606, NPC)
      else --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end

--******************************************************--
-- �γ�ũ ������ ��ȭ ���� 
--******************************************************--

local savenum = 443;

-- �õ�̼� ����

if EVENT == 530 then
    SaveEvent(UID, 4327);
    SelectMsg(UID, 1, savenum, 4607, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 438 ���� �Ӽ� 0�� 4���� ���

local MonsterSub = 0;

if EVENT == 532 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 4, savenum, 4608, NPC, 22, 533, 23, 534, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, savenum, 4609, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 533 then
   SaveEvent(UID, 4328); --������
end


if EVENT == 534 then
   SaveEvent(UID, 4331); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 180 then
    SaveEvent(UID, 4330);
    SelectMsg(UID, 1, savenum, 4610, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 438�� 1�� 3���� ��� 

local MonsterCount = 0;

if EVENT == 536 then
   MonsterCount  = CountMonsterQuestSub(UID, 1);
   if  MonsterCount < 100 then -- ����� ��������
      SelectMsg(UID, 2, savenum, 4611, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ����� �Ϸ� �Ǿ����� 
      SelectMsg(UID, 2, savenum, 4612, NPC, 4172, 537, 4173, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


local Check;

if EVENT == 537 then
  Check = CheckExchange(UID, 492)
   if  Check ==1 then
   RunExchange(UID, 492);
   SaveEvent(UID, 4329);
   SaveEvent(UID, 4322);
   else
  Ret = 1;	
  end	 
end


--******************************************************--
-- �γ�ũ ������ ��ȭ �� 
--******************************************************--

return Ret;
