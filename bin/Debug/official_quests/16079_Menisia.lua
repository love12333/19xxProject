
-- [������� ��]

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local savenum = 100;
local NPC=16079;

-- [������� ��] �޴Ͻþ�Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, 16079);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 191, 16079, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 --SetQuestStep(UID, EVENT, 1); -- �� �ϴ� �ɱ�?
			 Ret = 1; -- �̰� �� ���� ���ѿ�? �׳� RETURN�� �ȵǳ���?
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          NpcMsg(UID, 193,16079)
      else --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end

--local SHOW_MAP; -- ���� �����ִ� �Լ� ����� �ּ���

-----------------------------------------------------------
-- ��ũ��ġ ����Ʈ ����
-----------------------------------------------------------

local NATION = 0;

if EVENT == 105 then
    SaveEvent(UID, 6);
   NATION = CheckNation(UID);
   if NATION == 1 then --ī�罺 �϶� 
   SelectMsg(UID, 1, savenum, 105, NPC, 28, 107, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
   SelectMsg(UID, 1, savenum, 111, NPC, 28, 107, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

-- [�����] ī�̼� 100���� �Ӽ� 0�� 4���� ���

if EVENT == 110 then
   SelectMsg(UID, 2, savenum, 150, NPC, 29, 111, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 111 then
   SelectMsg(UID, 4, savenum, 156, NPC, 22, 112, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 112 then
   SaveEvent(UID, 7);
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 120 then
    SaveEvent(UID, 9);
   NATION = CheckNation(UID);
   if NATION == 1 then --ī�罺 �϶� 
   SelectMsg(UID, 1, savenum, 131, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
   SelectMsg(UID, 1, savenum, 132, NPC, 14, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


--[�����] ī�̼� 100���� �Ӽ� 1�� 3���� ���

   local ItemA = 0;
   local RUN_EXCHANGE ;

if EVENT == 280 then 
    ItemA = HowmuchItem(UID, 379048000);  
   if  ItemA < 3  then 
		SelectMsg(UID, 2, savenum, 157, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
		SelectMsg(UID, 4, savenum, 158, NPC, 4006, 281, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 281 then 
    Check = CheckExchange(UID, 1)
    if  Check ==1 then
        SaveEvent(UID, 8);
        RunExchange(UID, 1);
    else
        Ret = 1; 
    end  
end

-----------------------------------------------------------
-- ��ũ��ġ ����Ʈ �� 
-----------------------------------------------------------



if EVENT == 195 then
   SelectMsg(UID, 1, 102, 195, 16079, 28, 196, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 196 then
   ShowMap(UID, 5);
   SaveEvent(UID, 56);
end

if EVENT == 197 then
   SelectMsg(UID, 1, 102, 197, 16079, 29, 196, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- ������� �� 102���� �Ӽ� 0�� 4���� ���

if EVENT == 200 then
   SelectMsg(UID, 2, 102, 200, 16079, 29, 201, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 102, 201, 16079, 22, 202, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 202 then
   SaveEvent(UID, 57);
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 205 then
   SaveEvent(UID, 59);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 102, 206, 16079, 32, 189, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 102, 207, 16079, 4080, 189, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 189 then
   ShowMap(UID, 5);
end


local ITEM_COUNT=0;
local RUN_EXCHANGE ;--��� ��ü �Լ� ����� �ּ��� 

if EVENT == 210 then
   ITEM_COUNT = HowmuchItem(UID, 379078000);
   if  ITEM_COUNT <= 2 then -- ��� ������
      SelectMsg(UID, 2, 102, 211, 16079, 18, 213, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   elseif ITEM_COUNT  > 2 then-- ��� ������
      SelectMsg(UID, 2, 102, 212, 16079, 4006, 214, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);      
 
   end
end

if EVENT == 213 then
   ShowMap(UID, 7);
end



local Check;

if EVENT == 214 then
  Check = CheckExchange(UID, 6)
   if  Check ==1 then
   RunExchange(UID, 6);  
   SaveEvent(UID, 58);
   else
  Ret = 1;	
  end	 
end

-------------------------------------------
--- ��Ȳû��ȯ ����� ---------------------
-------------------------------------------


if EVENT == 300 then
   SelectMsg(UID, 1, 105, 292, 16079, 28, 301, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 301 then
   ShowMap(UID, 5);
   SaveEvent(UID, 93);
end

if EVENT == 302 then
   SelectMsg(UID, 1, 105, 293, 16079, 29, 301, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- ������� �� 105���� �Ӽ� 0�� 4���� ���

if EVENT == 303 then
   SelectMsg(UID, 2, 105, 294, 16079, 29, 304, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 304 then
   SelectMsg(UID, 4, 105, 295, 16079, 22, 305, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 305 then
   SaveEvent(UID, 94);
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 306 then
   SaveEvent(UID, 96);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 105, 299, 16079, 32, 307, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 105, 300, 16079, 4080, 307, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


if EVENT == 307 then
   ShowMap(UID, 5);
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;
--1���� 3���� ��� äũ...
if EVENT == 308 then
   ITEM_COUNT = HowmuchItem(UID, 379251000);--��Ȳû��ȯ ������ּ���~
   if  ITEM_COUNT <= 4 then -- ��� ������
      SelectMsg(UID, 2, 105, 298, 16079, 18, 309, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   elseif ITEM_COUNT  > 4 then-- ��� ������
           SelectMsg(UID, 2, 105, 301, 16079, 4006, 310, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      
   end
end

if EVENT == 309 then
   ShowMap(UID, 55);
end
--����Ʈ�� �������..2��...


local Check;

if EVENT == 310 then
  Check = CheckExchange(UID, 28)
   if  Check ==1 then
   RunExchange(UID, 28);  
   SaveEvent(UID, 95);
   else
  Ret = 1;	
  end	 
end

-------------------------------------------
--- ��Ȳû��ȯ ����� ��-------------------
-------------------------------------------
-------------------------------------------
--- ����Ʈ ���� ����   --------------------
-------------------------------------------


if EVENT == 311 then
   SelectMsg(UID, 1, 106, 302, 16079, 28, 312, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 312 then
   ShowMap(UID, 5);
   SaveEvent(UID, 100);
end

if EVENT == 313 then
   SelectMsg(UID, 1, 106, 303, 16079, 29, 312, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- ������� �� 105���� �Ӽ� 0�� 4���� ���

if EVENT == 314 then
   SelectMsg(UID, 2, 106, 304, 16079, 29, 315, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 315 then
   SelectMsg(UID, 4, 106, 305, 16079, 22, 316, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 316 then
   SaveEvent(UID, 101);
end


-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 317 then
   SaveEvent(UID, 103);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 106,311, 16079, 32, 318, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 106, 312, 16079, 4080, 318, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 318 then
   ShowMap(UID, 5);
end

local ITEM_COUNT=0;
local RUN_EXCHANGE ;
--1���� 3���� ��� äũ...
if EVENT == 319 then
   ITEM_COUNT = HowmuchItem(UID, 379010000);--�̵� �ӵ� ��ȭ ���� �ּ���.
   if  ITEM_COUNT <= 4 then -- ��� ������
      SelectMsg(UID, 2, 106, 310, 16079, 18, 320, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   elseif ITEM_COUNT  > 4 then-- ��� ������
       SelectMsg(UID, 2, 106, 314, 16079, 4006, 321, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        
 end
end

if EVENT == 320 then
   ShowMap(UID, 12);
end
--����Ʈ�� �������..2��...

local Check;

if EVENT == 321 then
  Check = CheckExchange(UID, 29)
   if  Check ==1 then
   RunExchange(UID, 29);  
   SaveEvent(UID, 102);
   else
  Ret = 1;	
  end	 
end
-------------------------------------------
--- ����Ʈ ���� ���� ��--------------------
-------------------------------------------

-------------------------------------------
--- ������ ���� ��� ����------------------
-------------------------------------------


if EVENT == 322 then
   SelectMsg(UID, 1, 107, 316, 16079, 28, 323, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 323 then
   ShowMap(UID, 5);
   SaveEvent(UID, 107);
end

if EVENT == 324 then
   SelectMsg(UID, 1, 107, 317, 16079, 29, 323, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- ������� �� 105���� �Ӽ� 0�� ���

if EVENT == 325 then
   SelectMsg(UID, 2, 107, 318, 16079, 29, 326, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 326 then
   SelectMsg(UID, 4, 107, 319, 16079, 22, 327, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 327 then
   SaveEvent(UID, 108);
end


-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 328 then
   SaveEvent(UID, 110);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 107, 320, 16079, 32, 329, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 107, 321, 16079, 4080, 329, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 329 then
   ShowMap(UID, 5);
end

-- ������� �� 105���� �Ӽ� 1�� 3�� 4����  ���

local ITEM_COUNT;
local RUN_EXCHANGE ;--��� ��ü �Լ� ����� �ּ��� 


if EVENT == 330 then
      SelectMsg(UID, 4, 107, 287, 16079, 4006, 331, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 331 then
ITEM_COUNT = GetMaxExchange(UID, 30); --exchange ���̺� �ε�����       
   if  ITEM_COUNT == 0 then -- ��� ������
    SelectMsg(UID, 2, 107, 322, 16079, 18, 333, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else  -- ��� ���� ��
    Check = CheckExchange(UID, 30)
        if  Check ==1 then
        ITEM_COUNT = GetMaxExchange(UID, 30); --exchange ���̺� �ε�����    
        RunCountExchange(UID, 30, ITEM_COUNT);	   
        SaveEvent(UID, 111);
        else
        Ret = 1;	
        end
    end 
end


if EVENT == 333 then
   ShowMap(UID, 1);
end


local Check;

--����Ʈ�� �������..2��...
--�ݺ� ����Ʈ�̹Ƿ� �������� ����
-------------------------------------------
--- ������ ���� ��� ���� ��---------------
-------------------------------------------


return Ret;