
-- ����� �ﷹ��

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����



-- Class  �Լ� ����� �ּ��� (���� üũ�ϴ� �Լ���)
-- 1:����, 2:�α�, 3:������, 4: ����
-- 1������	5	7	9	11
-- 2������	6	8	10	12



-- SkillPoint �Լ� ����� �ּ��� ( ��ų ����Ʈ üũ�ϴ� �Լ���)
-- 1����ų:5, 2����ų : 6, 	3����ų:7  	������ : 8�


-- �������� ����...
local Class;
local SkillPoint;
local QuestNum;
local Ret = 0;
local NPC = 19005
local Savenum = 400

-- ����� �ﷹ�� Ŭ���� ����Ʈ üũ 

if EVENT == 100 then
   Class = CheckClass (UID);
   if Class == 4 or Class == 11 or Class == 12 then -- �����ΰ��� üũ 
      SkillPoint = CheckSkillPoint(UID, 5);
    if SkillPoint > 59 then -- ġ�ὺų�� 60�̻��ΰ� üũ 
    SelectMsg(UID, 3, -1, 4001,  NPC, 4000, 4007, 4001, 4010, 4002, 4013, 4003, 4016, 47, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif SkillPoint > 49 then -- ġ�ὺų�� 50�̻��ΰ� üũ 
    SelectMsg(UID, 3, -1, 4001,  NPC, 4000, 4007, 4001, 4010, 4002, 4013, 47, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif SkillPoint > 39 then -- ġ�ὺų�� 40�̻��ΰ� üũ 
    SelectMsg(UID, 3, -1, 4001,  NPC, 4000, 4007, 4001, 4010, 47, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    elseif SkillPoint > 29 then -- ġ�ὺų�� 30�̻��ΰ� üũ 
    SelectMsg(UID, 3, -1, 4001,  NPC, 4000, 4007, 47, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ġ�ὺų�� 29�����϶� 
         EVENT = 4001
      end
   else --������ �ƴҶ�
   EVENT = 4001
   end
end

if EVENT == 4001 then -- ���� �������Ѵٴ� �޽���
   SelectMsg(UID, 2, -1, 4000,  NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 4002 then
    Ret = 1;
end

-- ����� �ﷹ�� 400���� �Ӽ� �õ��� ��� 

if EVENT == 4004 then
   SkillPoint = CheckSkillPoint(UID, 5);
   if SkillPoint > 29 then
    SaveEvent(UID, 4003);
   SelectMsg(UID, 1, Savenum, 4005, NPC, 29, 4005, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- ġ�ὺų�� 29�����϶� 
    Ret = 1;
   end
end

if EVENT == 4005 then
   ShowMap(UID, 400);
end

---------------------------------------
-- ����� �ﷹ�� �����Ǽ��� �������� 
---------------------------------------

   local min_count;
   local ItemA ;
   local ItemB ;
   local Check ;

if EVENT == 4007 then
    Check = CheckExchange(UID, 400)
    if  Check ==1 then
	min_count = GetMaxExchange(UID, 400); --exchange ���̺� �ε����� 
        if min_count == 0 then
        ItemA = HowmuchItem(UID, 389010000);  
        ItemB = HowmuchItem(UID, 379001000); 
            if  ItemA == 0  then -- ������ ������
            SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            elseif ItemB == 0  then-- �⵵���� �������
            SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            else
            SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            end
        else
        SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4008, 4005, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else
    Ret = 1; 
    end  
end


if EVENT == 4008 then
   min_count = GetMaxExchange(UID, 400);
 	RunCountExchange(UID, 400, min_count);	
end

---------------------------------------
-- ����� �ﷹ�� �����Ǽ��� ������
---------------------------------------

local Savenum = 410

---------------------------------------
-- ����� �ﷹ�� ����� ���� �������� 
---------------------------------------
   local min_count;
   local ItemA ;
   local ItemB ;
   local Check ;

if EVENT == 4010 then
    Check = CheckExchange(UID, 401)
    if  Check ==1 then
	min_count = GetMaxExchange(UID, 401); --exchange ���̺� �ε����� 
        if min_count == 0 then
        ItemA = HowmuchItem(UID, 389010000);  
        ItemB = HowmuchItem(UID, 379002000); 
            if  ItemA == 0  then -- ������ ������
            SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            elseif ItemB == 0  then-- �⵵���� �������
            SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            else
            SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            end
        else
        SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4011, 4005, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else
    Ret = 1; 
    end  
end


if EVENT == 4011 then
   min_count = GetMaxExchange(UID, 401);
    RunCountExchange(UID, 401, min_count);	
end

---------------------------------------
-- ����� �ﷹ�� ����� ���� ������
---------------------------------------


local Savenum = 411

---------------------------------------
-- ����� �ﷹ�� ������ ���� �������� 
---------------------------------------
   local min_count;
   local ItemA ;
   local ItemB ;
   local Check ;

if EVENT == 4013 then
    Check = CheckExchange(UID, 402)
    if  Check ==1 then
	min_count = GetMaxExchange(UID, 402); --exchange ���̺� �ε����� 
        if min_count == 0 then
        ItemA = HowmuchItem(UID, 389010000);  
        ItemB = HowmuchItem(UID, 379003000); 
            if  ItemA == 0  then -- ������ ������
            SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            elseif ItemB == 0  then-- �⵵���� �������
            SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            else
            SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            end
        else
        SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4014, 4005, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else
    Ret = 1; 
    end  
end


if EVENT == 4014 then
   min_count = GetMaxExchange(UID, 402);
    RunCountExchange(UID, 402, min_count);	
end

---------------------------------------
-- ����� �ﷹ�� ������ ���� ������
---------------------------------------


local Savenum = 412

---------------------------------------
-- ����� �ﷹ�� ������ ���� �������� 
---------------------------------------

   local min_count;
   local ItemA ;
   local ItemB ;
   local Check ;

if EVENT == 4016 then
    Check = CheckExchange(UID, 403)
    if  Check ==1 then
	min_count = GetMaxExchange(UID, 403); --exchange ���̺� �ε����� 
        if min_count == 0 then
        ItemA = HowmuchItem(UID, 389010000);  
        ItemB = HowmuchItem(UID, 379004000); 
            if  ItemA == 0  then -- ������ ������
            SelectMsg(UID, 2, Savenum, 4010, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            elseif ItemB == 0  then-- �⵵���� �������
            SelectMsg(UID, 2, Savenum, 4011, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            else
            SelectMsg(UID, 2, Savenum, 4007, NPC, 10, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
            end
        else
        SelectMsg(UID, 4, Savenum, 4006, NPC, 4004, 4017, 4005, 4002, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    else
    Ret = 1; 
    end  
end


if EVENT == 4017 then
   min_count = GetMaxExchange(UID, 403);
    RunCountExchange(UID, 403, min_count);	
end

---------------------------------------
-- ����� �ﷹ�� ������ ���� ������
---------------------------------------


return Ret;