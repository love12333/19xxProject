-- [��������]�ڸ޵�

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 24425;

-- [��������]�ڸ޵� Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4578, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          NpcMsg(UID, 4579, NPC)
      else --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end

--******************************************************--
-- �Ƹ��帲�� ��ȭ ���� 
--******************************************************--

local savenum = 438;

-- �õ�̼� ����

if EVENT == 530 then
    SaveEvent(UID, 4306);
    SelectMsg(UID, 1, savenum, 4580, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 438 ���� �Ӽ� 0�� 4���� ���

local MonsterSub = 0;

if EVENT == 532 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 3, savenum, 4582, NPC, 4228, 535, 4157, 520, 4063, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, savenum, 4583, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 535 then
    SelectMsg(UID, 4, savenum, 4646, NPC, 22, 533, 23, 534, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 520 then
    Status = CheckEventStatus(UID, 445)
       if Status == 2 then
       SelectMsg(UID, 2, savenum, 4643, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else
       SelectMsg(UID, 2, savenum, 4643, NPC, 10, 521, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end

end


if EVENT == 521 then
    RunExchange(UID, 505);
    SaveEvent(UID, 4398); --200 ȹ�� 
end


if EVENT == 533 then
   SaveEvent(UID, 4307); --������
end


if EVENT == 534 then
   SaveEvent(UID, 4310); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 180 then
    SaveEvent(UID, 4309);
    SelectMsg(UID, 1, savenum, 4585, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 438�� 1�� 3���� ��� 

local MonsterCount = 0;

if EVENT == 536 then
   MonsterCount  = CountMonsterQuestSub(UID, 1);
   if  MonsterCount < 30 then -- ����� ��������
      SelectMsg(UID, 2, savenum, 4587, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ����� �Ϸ� �Ǿ����� 
      SelectMsg(UID, 2, savenum, 4588, NPC, 4172, 537, 4173, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


local Check;

if EVENT == 537 then
  Check = CheckExchange(UID, 489)
   if  Check ==1 then
   RunExchange(UID, 489);
   SaveEvent(UID, 4308);
   SaveEvent(UID, 4315);
   else
  Ret = 1;	
  end	 
end


--******************************************************--
-- �Ƹ��帲�� ��ȭ �� 
--******************************************************--

return Ret;
