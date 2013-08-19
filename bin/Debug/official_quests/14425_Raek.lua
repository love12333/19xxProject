-- [��������]��ũ

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14425;

-- [��������]��ũ Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4589, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          NpcMsg(UID, 4590, NPC)
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

local savenum = 442;

-- �õ�̼� ����

if EVENT == 530 then
    SaveEvent(UID, 4313);
    SelectMsg(UID, 1, savenum, 4591, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 438 ���� �Ӽ� 0�� 4���� ���

local MonsterSub = 0;

if EVENT == 532 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 3, savenum, 4592, NPC, 4228, 535, 4157, 520, 4063, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, savenum, 4593, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


if EVENT == 520 then
    Status = CheckEventStatus(UID, 445)
       if Status == 2 then
       SelectMsg(UID, 2, savenum, 4644, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else
       SelectMsg(UID, 2, savenum, 4644, NPC, 10, 521, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end

end


if EVENT == 535 then
    SelectMsg(UID, 4, savenum, 4647, NPC, 22, 533, 23, 534, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end



if EVENT == 521 then
    RunExchange(UID, 505);
    SaveEvent(UID, 4397); --200 ȹ�� 
end


if EVENT == 533 then
   SaveEvent(UID, 4314); --������
end


if EVENT == 534 then
   SaveEvent(UID, 4317); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 180 then
    SaveEvent(UID, 4316);
    SelectMsg(UID, 1, savenum, 4594, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 438�� 1�� 3���� ��� 

local MonsterCount = 0;

if EVENT == 536 then
   MonsterCount  = CountMonsterQuestSub(UID, 1);
   if  MonsterCount < 30 then -- ����� ��������
      SelectMsg(UID, 2, savenum, 4595, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ����� �Ϸ� �Ǿ����� 
      SelectMsg(UID, 2, savenum, 4596, NPC, 4172, 537, 4173, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


local Check;

if EVENT == 537 then
  Check = CheckExchange(UID, 490)
   if  Check ==1 then
   RunExchange(UID, 490);
   SaveEvent(UID, 4315);
   SaveEvent(UID, 4308);
   else
  Ret = 1;	
  end	 
end


--******************************************************--
-- �Ƹ��帲�� ��ȭ �� 
--******************************************************--

return Ret;
