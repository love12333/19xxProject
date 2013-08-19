-- [������]Ÿ����

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14424;

-- [������]Ÿ���� Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4515, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          NpcMsg(UID, 4516, NPC)
      else --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end

--******************************************************--
-- �ϰ� ��ǥ�� ��ȣ�� ���� 
--******************************************************--

local savenum = 430;

-- 430���� �Ӽ� 0�� 4���� ���

if EVENT == 532 then   
    SelectMsg(UID, 4, savenum, 4509, NPC, 22, 533, 23, 534, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 533 then
   SaveEvent(UID, 4272); --������
   GiveItem(UID, 910127000, 1);
end

if EVENT == 534 then
   SaveEvent(UID, 4275); -- ������ 
end

-- 9���� �Ӽ� 1�� 3���� ���

local ItemA
local ItemB

if EVENT == 536 then
ItemA = HowmuchItem(UID, 910134000); --7��° ��ǥ 
ItemB = HowmuchItem(UID, 910127000); -- ��ɼ�
    if  ItemA == 0 then -- ��ᰡ ������
       if ItemB == 0 then -- ��ɼ���  ������
       GiveItem(UID, 910127000, 1);
       SelectMsg(UID, 2, savenum, 4511, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- B ��� ������ 
       SelectMsg(UID, 2, savenum, 4512, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
    else --7��° ���� ������ 
    SelectMsg(UID, 2, savenum, 4510, NPC, 4172, 537, 4173, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 537 then
    Check = CheckExchange(UID, 481)
        if  Check ==1 then
        SaveEvent(UID, 4273);
        RunExchange(UID, 481);
        else
        Ret = 1; 
        end  
end


--******************************************************--
-- �ϰ� ��ǥ�� ��ȣ�� �� 
--******************************************************--

--******************************************************--
-- ���ͷ� ������ ���� ���� 
--******************************************************--

local savenum = 441;

-- �õ�̼� ����

if EVENT == 630 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 4354);
    EVENT = 631
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 4354);
    EVENT = 631
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 4354);
    EVENT = 631
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 4354);
     EVENT = 631
   end
end

if EVENT == 631 then
    SelectMsg(UID, 1, savenum, 4622, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


-- 440 ���� �Ӽ� 0�� 4���� ���

local MonsterSub = 0;

if EVENT == 632 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 4, savenum, 4623, NPC, 22, 633, 23, 634, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, savenum, 4624, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 633 then --������
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 4355);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 4360);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 4365);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 4370);
   end
end


if EVENT == 634 then
   SaveEvent(UID, 4358); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 
    
if EVENT == 280 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 4357);
    EVENT = 281
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 4362);
    EVENT = 281
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 4367);
    EVENT = 281
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 4372);
     EVENT = 281
   end
end

if EVENT == 281 then
    SelectMsg(UID, 1, savenum, 4625, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


-- 440�� 1�� 3���� ��� 

local MonsterCount01
local MonsterCount02
local MonsterCount03
local MonsterCount04


if EVENT == 636 then
   MonsterCount01  = CountMonsterQuestSub(UID, 1);
   MonsterCount02  = CountMonsterQuestSub(UID, 2);
   MonsterCount03  = CountMonsterQuestSub(UID, 3);
   MonsterCount04  = CountMonsterQuestSub(UID, 4);  
    if  MonsterCount01  > 0 and  MonsterCount02  > 0 and  MonsterCount03  > 0 and  MonsterCount04  > 0 then -- ����� �Ϸ� �Ǿ����� 
      SelectMsg(UID, 5, savenum, 4630, NPC, 4161, 637, 4162, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ����� ��������
       if MonsterCount01 <= 0 then -- A ����� ��������
       SelectMsg(UID, 2, savenum, 4626, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  MonsterCount02 <= 0 then -- B ����� ��������
       SelectMsg(UID, 2, savenum, 4627, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  MonsterCount03 <= 0 then -- C ����� ��������
       SelectMsg(UID, 2, savenum, 4628, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- D ����� ��������
       SelectMsg(UID, 2, savenum, 4629, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
   end
end

local Check;

if EVENT == 637 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then    
    Check = CheckExchange(UID, 497)
        if  Check ==1 then
        RunSelectExchange(UID, 497);
        SaveEvent(UID, 4356);
        SaveEvent(UID, 4335);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 498)
        if  Check ==1 then        
        RunSelectExchange(UID, 498);
        SaveEvent(UID, 4361);
        SaveEvent(UID, 4335);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 499)
        if  Check ==1 then        
        RunSelectExchange(UID, 499);
        SaveEvent(UID, 4366);
        SaveEvent(UID, 4335);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 500)
        if  Check ==1 then        
        RunSelectExchange(UID, 500);
        SaveEvent(UID, 4371);
        SaveEvent(UID, 4335);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    end
   else
end



--******************************************************--
-- ���ͷ� ������ ���� �� 
--******************************************************--

return Ret;
