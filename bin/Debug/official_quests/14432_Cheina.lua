-- [���]ü�̳�

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC = 14432;


if EVENT == 160 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 8256, NPC, 10, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 --SetQuestStep(UID, EVENT, 1); -- �� �ϴ� �ɱ�?
			 Ret = 1; -- �̰� �� ���� ���ѿ�? �׳� RETURN�� �ȵǳ���?
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          NpcMsg(UID, 8258, NPC)
      else --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 163 then
    Ret = 1;
end



-- [���]ü�̳� Ŭ���� ����Ʈ üũ  

-------------------------------
--------��� ��ũ ���---------
-------------------------------

if EVENT == 8750 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8700);
    EVENT = 8751
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8705);
    EVENT = 8751
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8710);
    EVENT = 8751
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8715);
    EVENT = 8751
   end
end

if EVENT == 8751 then
    SelectMsg(UID, 1, 852, 8379, NPC, 3013, 8279, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8279 then
    ShowMap(UID, 565);
end

local MonsterSub = 0;

if EVENT == 8752 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 852, 8380, NPC, 10, 8755, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 852, 8381, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 8755 then
    SelectMsg(UID, 4, 852, 8382, NPC, 22, 8753, 23, 8754, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8753 then --������
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8701);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8706);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8711);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8716);
   end
end

if EVENT == 8754 then
   SaveEvent(UID, 8704); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 8760 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8703);
    EVENT = 8761
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8708);
    EVENT = 8761
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8713);
    EVENT = 8761
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8718);
    EVENT = 8761
   end
end

if EVENT == 8761 then
    SelectMsg(UID, 1, 852, 8383, NPC, 29, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8756 then
    MonsterCount  = CountMonsterQuestSub(UID, 1);
    if  MonsterCount < 30 then -- ����� ��������
       SelectMsg(UID, 2, 852, 8384, NPC, 10, 8757, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ����� �Ϸ� �Ǿ����� 
       Class = CheckClass(UID);
        if Class == 1 or Class == 5 or Class == 6 or Class == 3 or Class == 9 or Class == 10 or Class == 4 or Class == 11 or Class == 12 then
        SelectMsg(UID, 4, 852, 8385, NPC, 10, 8758, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        elseif Class == 2 or Class == 7 or Class == 8 then
        SelectMsg(UID, 5, 852, 8386, NPC, 10, 8758, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end
end

if EVENT == 8757 then
   ShowMap(UID, 578);
end

local Check;

if EVENT == 8758 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 953)
        if  Check ==1 then        
        RunExchange(UID, 953);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8702);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 954)
        if  Check ==1 then        
        RunSelectExchange(UID, 954);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8707);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 955)
        if  Check ==1 then        
        RunExchange(UID, 955);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8712);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 956)
        if  Check ==1 then        
        RunExchange(UID, 956);
        SaveEvent(UID, 8681);
        SaveEvent(UID, 8717);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
------��� ��ũ ��� ��--------
-------------------------------

-------------------------------
-------�ް��׸��� ���---------
-------------------------------

if EVENT == 8950 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8784);
    EVENT = 8951
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8789);
    EVENT = 8951
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8794);
    EVENT = 8951
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8799);
     EVENT = 8951
   end
end

if EVENT == 8951 then
    SelectMsg(UID, 1, 856, 8228, NPC, 3008, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 8952 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 856, 8229, NPC, 10, 8955, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 856, 8282, NPC, 10, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 8955 then
    SelectMsg(UID, 4, 856, 8230, NPC, 22, 8953, 23, 8954, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8953 then --������
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8785);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8790);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8795);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8800);
   end
end

if EVENT == 8954 then
   SaveEvent(UID, 8788); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 8960 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8787);
    EVENT = 8961
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8792);
    EVENT = 8961
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8797);
    EVENT = 8961
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8802);
    EVENT = 8961
   end
end

if EVENT == 8961 then
    SelectMsg(UID, 1, 856, 8383, NPC, 3007, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8956 then
    MonsterCount  = CountMonsterQuestSub(UID, 1);
    if  MonsterCount < 30 then -- ����� ��������
     SelectMsg(UID, 2, 856, 8384, NPC, 10, 8957, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ����� �Ϸ� �Ǿ����� 
     SelectMsg(UID, 4, 856, 8388, NPC, 10, 8958, 27, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 8957 then
   ShowMap(UID, 582);
end

local Check;

if EVENT == 8958 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 969)
        if  Check ==1 then        
        RunExchange(UID, 969);
        SaveEvent(UID, 8786);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 970)
        if  Check ==1 then        
        RunExchange(UID, 970);
        SaveEvent(UID, 8791);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 971)
        if  Check ==1 then        
        RunExchange(UID, 971);
        SaveEvent(UID, 8796);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 972)
        if  Check ==1 then        
        RunExchange(UID, 972);
        SaveEvent(UID, 8801);
        SaveEvent(UID, 8765);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
-------�ް��׸��� ��� ��------
-------------------------------

-------------------------------
---------���ݶ� ���-----------
-------------------------------

if EVENT == 8170 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8826);
    EVENT = 8171
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8831);
    EVENT = 8171
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8836);
    EVENT = 8171
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8841);
     EVENT = 8171
   end
end

if EVENT == 8171 then
    SelectMsg(UID, 1, 858, 8393, NPC, 14, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 8172 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 858, 8394, NPC, 10, 8175, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 858, 8282, NPC, 10, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 8175 then
    SelectMsg(UID, 4, 858, 8395, NPC, 22, 8173, 23, 8174, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8173 then --������
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8827);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8832);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8837);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8842);
   end
end

if EVENT == 8174 then
   SaveEvent(UID, 8830); -- ������ 
end


-- ��Ḧ �� ������� �õ� �� ���� 

if EVENT == 8180 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 8829);
    EVENT = 8181
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 8834);
    EVENT = 8181
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 8849);
    EVENT = 8181
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 8854);
    EVENT = 8181
   end
end

if EVENT == 8181 then
    SelectMsg(UID, 1, 858, 8383, NPC, 3007, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 8176 then
    MonsterCount  = CountMonsterQuestSub(UID, 1);
    if  MonsterCount < 10 then -- ����� ��������
     SelectMsg(UID, 2, 858, 8384, NPC, 10, 8177, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ����� �Ϸ� �Ǿ����� 
     SelectMsg(UID, 4, 858, 8396, NPC, 10, 8178, 27, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 8177 then
   ShowMap(UID, 539);
end

local Check;

if EVENT == 8178 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 977)
        if  Check ==1 then        
        RunExchange(UID, 977);
        SaveEvent(UID, 8828);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 978)
        if  Check ==1 then        
        RunExchange(UID, 978);
        SaveEvent(UID, 8833);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 979)
        if  Check ==1 then        
        RunExchange(UID, 979);
        SaveEvent(UID, 8838);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 980)
        if  Check ==1 then        
        RunExchange(UID, 980);
        SaveEvent(UID, 8843);
        SaveEvent(UID, 8807);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
--------���ݶ� ��� ��---------
-------------------------------

-------------------------------
-----------�׷� ���-----------
-------------------------------

if EVENT == 9060 then
   SelectMsg(UID, 1, 875, 8228, NPC, 3003, 9061, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 9061 then
   SaveEvent(UID, 9123);
end

local MonsterSub = 0;

if EVENT == 9062 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
	SelectMsg(UID, 2, 875, 8426, NPC, 10, 9070, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ���� ���� ����Ʈ�� ������
 	SelectMsg(UID, 2, 875, 8428, NPC, 10, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	end
end

if EVENT == 9070 then
   SelectMsg(UID, 4, 875, 8427, NPC, 22, 9063, 23, 9064, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 9063 then
   SaveEvent(UID, 9124);
end

if EVENT == 9064 then
   SaveEvent(UID, 9127);
end

-- ��� �Ϸ�� �õ�� �̼��� ����

if EVENT == 9065 then
   SelectMsg(UID, 1, 875, 8429, NPC, 3014, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   SaveEvent(UID, 9126);
end

local MonsterCount = 0;

if EVENT == 9067 then
   MonsterCount  = CountMonsterQuestSub(UID, 1);
   if  MonsterCount < 30 then -- ����� ��������
      SelectMsg(UID, 2, 875, 8430, NPC, 10, 9068, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ����� �Ϸ� �Ǿ����� 
      SelectMsg(UID, 4, 875, 8431, NPC, 10, 9069, 27, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 9068 then
   ShowMap(UID, 318);
end

if EVENT == 9069 then
   Check = CheckExchange(UID, 1043)
   if  Check ==1 then
   RunExchange(UID, 1043);
   SaveEvent(UID, 9125);
   SaveEvent(UID, 9119);
   else
  Ret = 1;	
  end	 
end

-------------------------------
----------�׷� ��� ��---------
-------------------------------

-------------------------------
-----------��ġ ���-----------
-------------------------------

if EVENT == 9140 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9276);
    EVENT = 9141
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9281);
    EVENT = 9141
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9286);
    EVENT = 9141
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9291);
     EVENT = 9141
   end
end

if EVENT == 9141 then
   SelectMsg(UID, 1, 883, 8208, NPC, 4080, 9142, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 9142 then
   SelectMsg(UID, 1, 883, 8209, NPC, 4243, 9143, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 9143 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 1, 883, 8210, NPC, 10, 9144, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ���� ���� ����Ʈ�� ������
 	SelectMsg(UID, 1, 883, 8186, NPC, 10, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 9144 then
    SelectMsg(UID, 1, 883, 8211, NPC, 22, 9145, 23, 9146, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 9145 then --������
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9277);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9282);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9287);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9292);
   end
end

if EVENT == 9146 then
   SaveEvent(UID, 9280); -- ������ 
end

-- 882�� �Ӽ� 0, 4���� ���

if EVENT == 9150 then
   SelectMsg(UID, 2, 883, 8212, NPC, 4244, 9151, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local MonsterSub = 0;

if EVENT == 9151 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then -- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 4, 883, 8440, NPC, 3018, 9152, 3019, 9159, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ���� ���� ����Ʈ�� ������
    SelectMsg(UID, 2, 883, 8441, NPC, 4242, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 9152 then --������
   ShowMap(UID, 16);
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9277);
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9282);
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9287);
    elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9292);
   end
end

if EVENT == 9159 then
   SaveEvent(UID, 9280); -- ������ 
end

-- ��Ḧ �� ������� �õ�� �̼��� ���� 

if EVENT == 9153 then
   Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    SaveEvent(UID, 9279);
    EVENT = 9154
    elseif Class == 2 or Class == 7 or Class == 8 then
    SaveEvent(UID, 9284);
    EVENT = 9154
    elseif Class == 3 or Class == 9 or Class == 10 then
    SaveEvent(UID, 9289);
    EVENT = 9154
   elseif Class == 4 or Class == 11 or Class == 12 then
    SaveEvent(UID, 9294);
    EVENT = 9154
   end
end

if EVENT == 9154 then
    SelectMsg(UID, 1, 883, 8439, NPC, 57, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 836�� 1�� 3���� ��� 

local MonsterCount = 0;

if EVENT == 9155 then
   MonsterCount  = CountMonsterQuestSub(UID, 1);
   if  MonsterCount < 10 then -- ����� ��������
    SelectMsg(UID, 2, 883, 8442, NPC, 10, 9157, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else-- ����� �Ϸ� �Ǿ����� 
    SelectMsg(UID, 4, 883, 8443, NPC, 10, 9158, 27, 163, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 9157 then
   ShowMap(UID, 16);
end

local Check;

if EVENT == 9158 then
    Class = CheckClass(UID);
    if Class == 1 or Class == 5 or Class == 6 then
    Check = CheckExchange(UID, 1056)
        if  Check ==1 then        
        RunExchange(UID, 1056);
        SaveEvent(UID, 9278);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 2 or Class == 7 or Class == 8 then
    Check = CheckExchange(UID, 1057)
        if  Check ==1 then        
        RunExchange(UID, 1057);
        SaveEvent(UID, 9283);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 3 or Class == 9 or Class == 10 then
    Check = CheckExchange(UID, 1058)
        if  Check ==1 then        
        RunExchange(UID, 1058);
        SaveEvent(UID, 9288);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
    elseif Class == 4 or Class == 11 or Class == 12 then
    Check = CheckExchange(UID, 1059)
        if  Check ==1 then        
        RunExchange(UID, 1059);
        SaveEvent(UID, 9293);
        SaveEvent(UID, 9257);
        ShowEffect(UID, 300391)
        else
        Ret = 1; 
        end  
  end	 
end

-------------------------------
---------��ġ ��� ��----------
-------------------------------

return Ret;