-- [������]����

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 24424;

-- [������]���� Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = 2; --SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4513, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1; 
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          NpcMsg(UID, 4514, NPC)
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

-- �õ�̼� ����

if EVENT == 530 then
   NATION = CheckNation(UID);
      if NATION == 1 then --ī�罺 �϶� 
      SaveEvent(UID, 4266);
      SelectMsg(UID, 1, savenum, 4503, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- �����϶�
      SaveEvent(UID, 4271);
      SelectMsg(UID, 1, savenum, 4504, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

-- 430 ���� �Ӽ� 0�� 4���� ���

if EVENT == 532 then   
    SelectMsg(UID, 4, savenum, 4505, NPC, 22, 533, 23, 534, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 533 then
   SaveEvent(UID, 4267); --������
   GiveItem(UID, 910127000, 1);
end

if EVENT == 534 then
   SaveEvent(UID, 4270); -- ������ 
end

-- 430 ���� �Ӽ� 1�� 3���� ���

local ItemA
local ItemB

if EVENT == 536 then
ItemA = HowmuchItem(UID, 910134000); --7��° ��ǥ
ItemB = HowmuchItem(UID, 910127000); -- ��ɼ�
    if  ItemA == 0 then -- ��ᰡ ������
       if ItemB == 0 then -- ��ɼ���  ������
       GiveItem(UID, 910127000, 1);
       SelectMsg(UID, 2, savenum, 4507, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- B ��� ������ 
       SelectMsg(UID, 2, savenum, 4508, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
    else --7��° ���� ������ 
    SelectMsg(UID, 2, savenum, 4506, NPC, 4172, 537, 4173, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 537 then
    Check = CheckExchange(UID, 481)
        if  Check ==1 then
        SaveEvent(UID, 4268);
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

local savenum = 440;

-- �õ�̼� ����

if EVENT == 630 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 4333);
    EVENT = 631
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 4338);
    EVENT = 631
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 4343);
    EVENT = 631
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 4348);
     EVENT = 631
   end
end

if EVENT == 631 then
    SelectMsg(UID, 1, savenum, 4613, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


-- 440 ���� �Ӽ� 0�� 4���� ���

local MonsterSub = 0;

if EVENT == 632 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 4, savenum, 4614, NPC, 22, 633, 23, 634, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, savenum, 4615, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end



if EVENT == 633 then --������
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 4334);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 4339);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 4344);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 4349);
   end
end


if EVENT == 634 then
   SaveEvent(UID, 4337); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 280 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 4336);
    EVENT = 281
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 4341);
    EVENT = 281
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 4346);
    EVENT = 281
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 4351);
     EVENT = 281
   end
end

if EVENT == 281 then
    SelectMsg(UID, 1, savenum, 4616, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
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
      SelectMsg(UID, 5, savenum, 4621, NPC, 4161, 637, 4162, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ����� ��������
       if MonsterCount01 <= 0 then -- A ����� ��������
       SelectMsg(UID, 2, savenum, 4617, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  MonsterCount02 <= 0 then -- B ����� ��������
       SelectMsg(UID, 2, savenum, 4618, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  MonsterCount03 <= 0 then -- C ����� ��������
       SelectMsg(UID, 2, savenum, 4619, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- D ����� ��������
       SelectMsg(UID, 2, savenum, 4620, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
   end
end

local Check;

if EVENT == 637 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 493)
        if  Check ==1 then        
        RunSelectExchange(UID, 493);
        SaveEvent(UID, 4335);
        SaveEvent(UID, 4356);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 494)
        if  Check ==1 then        
        RunSelectExchange(UID, 494);
        SaveEvent(UID, 4340);
        SaveEvent(UID, 4356);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 495)
        if  Check ==1 then        
        RunSelectExchange(UID, 495);
        SaveEvent(UID, 4345);
        SaveEvent(UID, 4356);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 496)
        if  Check ==1 then        
        RunSelectExchange(UID, 496);
        SaveEvent(UID, 4350);
        SaveEvent(UID, 4356);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end



--******************************************************--
-- ���ͷ� ������ ���� �� 
--******************************************************--

return Ret;
