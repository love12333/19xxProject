
-- [������ ��īŰ]

-- EVENT �� 100�� �̻� ���� ����϶�

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� ����?

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;

-- [������ ��īŰ][ī��] Ŭ���� ����Ʈ üũ  

if EVENT == 190 then
	QuestNum = SearchQuest(UID, 24201);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
          -- SelectMsg(UID, 2. -1...........)
			 SelectMsg(UID, 2, -1, 3824, 24201, 3001, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 --SetQuestStep(UID, EVENT, 1); -- �� �ϴ� �ɱ�?
			 Ret = 1; -- �̰� �� ���� ���ѿ�? �׳� RETURN�� �ȵǳ���?
		elseif QuestNum > 1 and  QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          NpcMsg(UID, 3824, 24201)
      else --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 193 then
    Ret = 1;
end


--��ũ�� ����Ʈ

if EVENT == 220 then
   SelectMsg(UID, 1, 310, 3028, 24201, 3006, 221, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 221 then
   ShowMap(UID, 305);
   SaveEvent(UID, 3142);
end

if EVENT == 222 then
   SelectMsg(UID, 1, 310, 3028, 24201, 3006, 221, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- ��ũ�� 310���� �Ӽ� 0�� 4���� ���

if EVENT == 223 then
   SelectMsg(UID, 2, 310, 3064, 24201, 3010, 224, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 224 then
   SelectMsg(UID, 4, 310, 3065, 24201, 22, 225, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 225 then
   SaveEvent(UID, 3143);
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 226 then
   SaveEvent(UID, 3145);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 310, 3069, 24201, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 310, 3070, 24201, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;--��� ��ü �Լ� ����� �ּ��� 

if EVENT == 228 then
   ITEM_COUNT1 = HowmuchItem(UID, 379046000);
   ITEM_COUNT2 = HowmuchItem(UID, 389074000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 29 and ITEM_COUNT3  > 4999999  then-- ��� ��������
      SelectMsg(UID, 4, 310, 3071, 24201, 10, 230, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
      if ITEM_COUNT1 <= 0 then -- 1��� ������
        SelectMsg(UID, 2, 310, 3068, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT2 <=29 then -- 2��� ������
         SelectMsg(UID, 2, 310, 3068, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- 3��� ������
         SelectMsg(UID, 2, 310, 3068, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   end
end

if EVENT == 229 then
   ShowMap(UID, 305);
end

local Check;

if EVENT == 230 then
   Check = CheckExchange(UID, 310)
   if  Check ==1 then
   RunExchange(UID, 310);
   SaveEvent(UID, 3146);
   else
  Ret = 1;	
  end	 
end

--�������� ����Ʈ
--local SHOW_MAP; -- ���� �����ִ� �Լ� ����� �ּ���

if EVENT == 300 then
   SelectMsg(UID, 1, 311, 3001, 24201, 28, 301, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 301 then
   ShowMap(UID, 305);
   SaveEvent(UID, 3162);
end

if EVENT == 302 then
   SelectMsg(UID, 1, 311, 3002, 24201, 28, 301, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

--�������� 311���� �Ӽ� 0�� 4���� ���

if EVENT == 303 then
   SelectMsg(UID, 2, 311, 3072, 24201, 3002, 304, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 304 then
   SelectMsg(UID, 4, 311, 3073, 24201, 22, 305, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 305 then
   SaveEvent(UID, 3163);
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 306 then
   SaveEvent(UID, 3165);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 311, 3077, 24201, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 311, 3078, 24201, 21, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;--��� ��ü �Լ� ����� �ּ��� 

if EVENT == 308 then
   ITEM_COUNT1 = HowmuchItem(UID, 910042000);
   ITEM_COUNT2 = HowmuchItem(UID, 389076000);
   ITEM_COUNT3 = HowmuchItem(UID, 379067000);
   if ITEM_COUNT1  > 29 and ITEM_COUNT2  > 29 and ITEM_COUNT3  > 0 then-- ��� ��������
      SelectMsg(UID, 4, 311, 3079, 24201, 10, 310, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
      if  ITEM_COUNT1 <= 29 then -- 1��� ������
        SelectMsg(UID, 2, 311, 3076, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT2 <= 29 then -- 2��� ������
        SelectMsg(UID, 2, 311, 3076, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- 3��� ������
         SelectMsg(UID, 2, 311, 3076, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   end
end


if EVENT == 309 then
   ShowMap(UID, 305);
end

local Check;

if EVENT == 310 then
   Check = CheckExchange(UID, 311)
   if  Check ==1 then
   RunExchange(UID, 311);
   SaveEvent(UID, 3166);
   else
  Ret = 1;	
  end	 
end

--ü���Ǻ�� ����Ʈ
--local SHOW_MAP; -- ���� �����ִ� �Լ� ����� �ּ���

if EVENT == 400 then
   SelectMsg(UID, 1, 312, 3001, 24201, 28, 401, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 401 then
   ShowMap(UID, 305);
   SaveEvent(UID, 3182);
end

if EVENT == 402 then
   SelectMsg(UID, 1, 312, 3002, 24201, 28, 401, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

--ü���Ǻ�� 312���� �Ӽ� 0�� 4���� ���

if EVENT == 403 then
   SelectMsg(UID, 2, 312, 3080, 24201, 3000, 404, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 404 then
   SelectMsg(UID, 4, 312, 3081, 24201, 22, 405, 23, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 405 then
   SaveEvent(UID, 3183);
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 406 then
   SaveEvent(UID, 3185);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 312, 3085, 24201, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 312, 3086, 24201, 21, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 407 then
   SaveEvent(UID, 3185);
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local RUN_EXCHANGE ;--��� ��ü �Լ� ����� �ּ��� 

if EVENT == 408 then
   ITEM_COUNT1 = HowmuchItem(UID, 379204000);
   ITEM_COUNT2 = HowmuchItem(UID, 379041000);
   ITEM_COUNT3 = HowmuchItem(UID, 379099000);
   if ITEM_COUNT1  > 49 and ITEM_COUNT2  > 0 and ITEM_COUNT3  > 19 then-- ��� ��������
      SelectMsg(UID, 4, 312, 3087, 24201, 10, 410, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
      if  ITEM_COUNT1 <= 49 then -- 1��� ������
        SelectMsg(UID, 2, 312, 3084, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT2 <= 0 then -- 2��� ������
        SelectMsg(UID, 2, 312, 3084, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- 3��� ������
        SelectMsg(UID, 2, 312, 3084, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   end
end

if EVENT == 409 then
   ShowMap(UID, 305);
end

local Check;

if EVENT == 410 then
   Check = CheckExchange(UID, 400)
   if  Check ==1 then
   RunExchange(UID, 312);
   SaveEvent(UID, 3186);
   else
  Ret = 1;	
  end	 
end

--******************************************************--
-- 2�� ���� ���� 
--******************************************************--

local NPC = 24201;
local savenum = 408;

-- �õ�̼� ����

if EVENT == 530 then
   Class = CheckClass (UID);
   if Class == 5 then -- 2������ ������ ���
   SaveEvent(UID, 4081); --helper ��ȣ ���� 
   NATION = CheckNation(UID);
      if NATION == 1 then --ī�罺 �϶� 
      SelectMsg(UID, 1, savenum, 4080, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- �����϶�
      SelectMsg(UID, 1, savenum, 4081, NPC, 4080, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   else -- 2�� ������ �ǰų�, 1�� ������ ���� ���
    Ret = 1;
   end
end

-- ��īŰ 408���� �Ӽ� 0�� 4���� ���

if EVENT == 532 then   
Level = CheckLevel(UID)
   if Level > 59 then -- ������ 60�̻��ΰ�?   
   Class = CheckClass (UID);
      if Class == 5 or Class == 7 or Class == 9 or Class == 11 then -- 1�� ���� ���ΰ� üũ
       SelectMsg(UID, 4, savenum, 4084, NPC, 22, 533, 23, 534, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else --1�� ������ �̹� ������
      SaveEvent(UID, 4083);
      SelectMsg(UID, 2, savenum, 4083, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   else --������ 60�����϶� 
   SelectMsg(UID, 2, savenum, 4082, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 533 then
   SaveEvent(UID, 4082); --������
end

if EVENT == 534 then
   SaveEvent(UID, 4085); -- ������ 
end

-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 535 then
   SaveEvent(UID, 4084);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, savenum, 4089, NPC, 4080, 538, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, savenum, 4090, NPC, 4080, 538, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

-- ��īŰ 408���� �Ӽ� 1�� 3���� ���

if EVENT == 536 then
   ITEM_COUNTA = HowmuchItem(UID, 320410011); --�κ��� ���Ʈ
   ITEM_COUNTB = HowmuchItem(UID, 320410012); -- ���۽��� �Ҵ�Ʈ
   ITEM_COUNTC = HowmuchItem(UID, 320410013);-- ��ī���� �Ҵ�Ʈ
   ITEM_COUNTD = HowmuchItem(UID, 379236000);-- ������ ��������
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then --��ᰡ �������� 
      SelectMsg(UID, 2, savenum, 4091, NPC, 4062, 537, 4063, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else -- ��ᰡ ������
       if ITEM_COUNTA <= 0 then -- A ��� ������
       SelectMsg(UID, 2, savenum, 4085, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTB <= 0 then -- B ��� ������ 
       SelectMsg(UID, 2, savenum, 4086, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTC <= 0 then -- C ��� ������ 
       SelectMsg(UID, 2, savenum, 4087, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- D ��� ������
       SelectMsg(UID, 2, savenum, 4088, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
   end
end

if EVENT == 537 then
   SaveEvent(UID, 4083);
   RobItem(UID, 320410011, 1);
   RobItem(UID, 320410012, 1);
   RobItem(UID, 320410013, 1);
   RobItem(UID, 379236000, 1);
   PromoteUser(UID)
   NATION = CheckNation(UID);
   if NATION == 1 then --ī�罺 �϶� 
   SelectMsg(UID, 1, savenum, 4092, NPC, 4064, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
   SelectMsg(UID, 1, savenum, 4093, NPC, 4064, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 538 then
   ShowMap(UID, 305);
end

--******************************************************--
-- 2�� ���� �� 
--******************************************************--
--******************************************************--
-- 70Lv skill - start
--******************************************************--

--seed or misel call

if EVENT == 620 then
   SelectMsg(UID, 1, 51, 3215, 24201, 3006, 621, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 621 then
   ShowMap(UID, 305);
   SaveEvent(UID, 3412);
end

if EVENT == 622 then
   SelectMsg(UID, 1, 51, 3214, 24201, 3006, 621, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- 70Lv skill no.51 type 0 or 4

if EVENT == 623 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then -- 2�� ���� ���ΰ� üũ 
    SelectMsg(UID, 2, 51, 3216, 24201, 10, 624, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else --2�� ������ �������� 
    SelectMsg(UID, 2, 51, 4710, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 623 then
   SelectMsg(UID, 2, 51, 3216, 24201, 10, 624, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 624 then
   SelectMsg(UID, 4, 51, 3217, 24201, 22, 625, 23, 631, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 625 then
   SaveEvent(UID, 3413);
   SelectMsg(UID, 2, 51, 3218, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 631 then
   SelectMsg(UID, 2, 51, 3219, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- collect all
local NATION = 0;--nation check

if EVENT == 626 then
   SaveEvent(UID, 3415);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, 51, 3221, 24201, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, 51, 3222, 24201, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 628 then
   ITEM_COUNT1 = HowmuchItem(UID, 379243000);
   ITEM_COUNT2 = HowmuchItem(UID, 379244000);
   ITEM_COUNT3 = HowmuchItem(UID, 379063000);
   ITEM_COUNT4 = HowmuchItem(UID, 389076000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 0 and ITEM_COUNT3  > 0  and ITEM_COUNT4  > 29  then-- ��� ��������
      SelectMsg(UID, 4, 51, 3223, 24201, 41, 630, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
      if ITEM_COUNT1 <= 0 then -- 1��� ������
        SelectMsg(UID, 2, 51, 3220, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT2 <= 0 then -- 2��� ������
         SelectMsg(UID, 2, 51, 3220, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT3 <= 0 then -- 3��� ������
         SelectMsg(UID, 2, 51, 3220, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- 4��� ������
         SelectMsg(UID, 2, 51, 3220, 24201, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   end
end

if EVENT == 629 then
   ShowMap(UID, 304);
end

local Check;

if EVENT == 630 then
        Check = CheckExchange(UID, 329)
        if  Check == 1 then
            Exchange =RunExchange(UID, 329);
            if  Exchange ==0 then
            SaveEvent(UID, 3414);
            else
            Ret = 1;	
            end	 
        else
        Ret = 1;	
        end	 
end

--******************************************************--
-- 70Lv skill - end
--******************************************************--

--******************************************************--
-- 75Lv skill - start
local savenum = 510;
local NPC = 24201;
--******************************************************--

--seed or misel call

if EVENT == 720 then
   SelectMsg(UID, 1, savenum, 5100, NPC, 3006, 721, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
--�õ�

if EVENT == 721 then
   ShowMap(UID, 305);
   SaveEvent(UID, 5107);
end

if EVENT == 722 then
   SelectMsg(UID, 1, savenum, 5101, NPC, 3006, 721, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
--�̼�

-- 70Lv skill no.51 type 0 or 4

if EVENT == 723 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then -- 2�� ���� ���ΰ� üũ 
    SelectMsg(UID, 2, savenum, 5103, NPC, 10, 724, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else --2�� �������������� 
    SelectMsg(UID, 2, savenum, 5102, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 724 then
   SelectMsg(UID, 4, savenum, 5104, NPC, 22, 725, 23, 731, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 725 then
   SaveEvent(UID, 5108);
   SelectMsg(UID, 2, savenum, 5105, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 731 then
   SelectMsg(UID, 2, savenum, 5106, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- collect all
local NATION = 0;--nation check

if EVENT == 726 then
   SaveEvent(UID, 5110);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, savenum, 5108, NPC, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, savenum, 5109, NPC, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 728 then
   ITEM_COUNT1 = HowmuchItem(UID, 379244000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then-- ��� ��������
      SelectMsg(UID, 4, savenum, 5110, NPC, 41, 730, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
      if ITEM_COUNT1 <= 0 then -- 1��� ������
        SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT2 <= 0 then -- 2��� ������
         SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT3 <= 0 then -- 3��� ������
         SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- 4��� ������
         SelectMsg(UID, 2, savenum, 5107, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   end
end



local Check;

if EVENT == 730 then
   Check = CheckExchange(UID, 520)
   if  Check == 1 then
   Exchange =RunExchange(UID, 520);
        if  Exchange ==0 then
        SaveEvent(UID, 5109);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

--******************************************************--
-- 75Lv skill - end
--******************************************************--
--******************************************************--
-- 80Lv skill - start
local savenum = 511;
local NPC = 24201;
--******************************************************--

--seed or misel call

if EVENT == 820 then
   SelectMsg(UID, 1, savenum, 5111, NPC, 3006, 821, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
--�õ�

if EVENT == 821 then
   ShowMap(UID, 305);
   SaveEvent(UID, 5113);
end

if EVENT == 822 then
   SelectMsg(UID, 1, savenum, 5112, NPC, 3006, 821, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end
--�̼�

-- 70Lv skill no.51 type 0 or 4

if EVENT == 823 then
   Class = CheckClass (UID);
    if Class == 6 or Class == 8 or Class == 10 or Class == 12 then -- 2�� ���� ���ΰ� üũ 
    SelectMsg(UID, 2, savenum, 5114, NPC, 10, 824, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else --2�� �������������� 
    SelectMsg(UID, 2, savenum, 5113, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 824 then
   SelectMsg(UID, 4, savenum, 5115, NPC, 22, 825, 23, 831, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 825 then
   SaveEvent(UID, 5114);
   SelectMsg(UID, 2, savenum, 5116, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 831 then
   SelectMsg(UID, 2, savenum, 5117, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

-- collect all
local NATION = 0;--nation check

if EVENT == 826 then
   SaveEvent(UID, 5116);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, savenum, 5119, NPC, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, savenum, 5120, NPC, 32, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local ITEM_COUNT1=0;
local ITEM_COUNT2=0;
local ITEM_COUNT3=0;
local ITEM_COUNT4=0;
local RUN_EXCHANGE ;

if EVENT == 828 then
   ITEM_COUNT1 = HowmuchItem(UID, 379243000);
   ITEM_COUNT2 = HowmuchItem(UID, 379236000);
   ITEM_COUNT3 = HowmuchItem(UID, 900000000);
   if ITEM_COUNT1  > 0 and ITEM_COUNT2  > 2 and ITEM_COUNT3 > 9999999 then-- ��� ��������
      SelectMsg(UID, 4, savenum, 5121, NPC, 41, 830, 27, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
      if ITEM_COUNT1 <= 0 then -- 1��� ������
        SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT2 <= 0 then -- 2��� ������
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      elseif ITEM_COUNT3 <= 0 then -- 3��� ������
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- 4��� ������
         SelectMsg(UID, 2, savenum, 5118, NPC, 10, 193, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
   end
end


local Check;

if EVENT == 830 then
   Check = CheckExchange(UID, 521)
   if  Check == 1 then
   Exchange =RunExchange(UID, 521);
        if  Exchange ==0 then
        SaveEvent(UID, 5115);
        else
        Ret = 1;	
        end	 
  else
  Ret = 1;	
  end	 
end

--******************************************************--
-- 80Lv skill - end
--******************************************************--

return Ret;
