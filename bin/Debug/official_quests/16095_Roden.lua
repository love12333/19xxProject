
-- ������ ����, Ž���� ����, �г��� ����, ������ ����-> �÷��� ����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC =16095;


-- �ε� Ŭ���� ����Ʈ üũ  

if EVENT == 500 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then --�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 0�� �϶� 
			 SelectMsg(UID, 2, -1, 4430, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
			 Ret = 1;
		elseif QuestNum > 1 and QuestNum < 100 then--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �϶� 
          NpcMsg(UID, 4431, NPC)
      else--�ش� NPC���� �Ҽ� �ִ� ����Ʈ�� 1�� �̻� �϶� 
          EVENT = QuestNum
		end
end

if EVENT == 168 then -- �׳� �ݱ� 
    Ret = 1;
end

--------------------------------------------------------------------------------
-- �����ν�Ʈ ���� ���� ���� 

local savenum = 423
--------------------------------------------------------------------------------
if EVENT == 502 then
    SelectMsg(UID, 4, savenum, 4432, NPC, 4004, 503, 4005, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 503 then
   SaveEvent(UID, 4245);
   ITEM_COUNTA = HowmuchItem(UID, 389160000); -- ������ ����
   ITEM_COUNTB = HowmuchItem(UID, 389161000); -- Ž���� ����
   ITEM_COUNTC = HowmuchItem(UID, 389162000);-- �г��� ����
   ITEM_COUNTD = HowmuchItem(UID, 389163000);-- ������ ����
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then --��ᰡ �������� 
    Check = CheckExchange(UID, 478)
        if  Check ==1 then   
        RunExchange(UID, 478);		 
        else
        Ret = 1; 
        end  
    else -- ��ᰡ ������
       if ITEM_COUNTA <= 0 then -- A ��� ������
       SelectMsg(UID, 2, savenum, 4433, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTB <= 0 then -- B ��� ������ 
       SelectMsg(UID, 2, savenum, 4434, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTC <= 0 then -- C ��� ������ 
       SelectMsg(UID, 2, savenum, 4435, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- D ��� ������
       SelectMsg(UID, 2, savenum, 4436, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
   end
end
--------------------------------------------------------------------------------
-- �����ν�Ʈ ���� ���� ��
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- �Ҿ������ ���� ���� 

local savenum = 424

--------------------------------------------------------------------------------

if EVENT == 505 then
    SelectMsg(UID, 4, savenum, 4441, NPC, 4188, 506, 4005, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 506 then
   SaveEvent(UID, 4246);
   ITEM_COUNTA = HowmuchItem(UID, 389190000); -- �÷��� ����
   ITEM_COUNTB = HowmuchItem(UID, 389164000); -- ������ ����
   ITEM_COUNTC = HowmuchItem(UID, 389165000);-- �ñ��� ����
   ITEM_COUNTD = HowmuchItem(UID, 389166000);-- Ž���� ����
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then --��ᰡ �������� 
        RunExchange(UID, 479);	
        ZoneChangeParty(UID, 31, 940, 186)
    else -- ��ᰡ ������
       if ITEM_COUNTA <= 0 then -- A ��� ������
       SelectMsg(UID, 2, savenum, 4437, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTB <= 0 then -- B ��� ������ 
       SelectMsg(UID, 2, savenum, 4438, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTC <= 0 then -- C ��� ������ 
       SelectMsg(UID, 2, savenum, 4439, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- D ��� ������
       SelectMsg(UID, 2, savenum, 4440, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
   end
end

--------------------------------------------------------------------------------
-- �Ҿ������ ���� ��
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- ����Ʈ ���� ��ī�� ���� 

local savenum = 425

--------------------------------------------------------------------------------

-- �õ�̼� ����

if EVENT == 510 then
   NATION = CheckNation(UID);
   SaveEvent(UID, 4250); --helper ��ȣ ���� 
      if NATION == 1 then --ī�罺 �϶� 
      SelectMsg(UID, 1, savenum, 4442, NPC, 4080, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      else -- �����϶�
      SelectMsg(UID, 1, savenum, 4443, NPC, 4080, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
      end
end

-- 425���� �Ӽ� 0�� 4���� ���

if EVENT == 511 then
    SelectMsg(UID, 4, savenum, 4446, NPC, 22, 512, 23, 513, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 512 then
   SaveEvent(UID, 4251); --����
end

if EVENT == 513then
   SaveEvent(UID, 4254); --����  
end


-- ��Ḧ �� ����� �� 
local NATION = 0;--���� üũ

if EVENT == 520 then
   SaveEvent(UID, 4253);
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 1, savenum, 4451, NPC, 4080, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 1, savenum, 4452, NPC, 4080, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end


-- 425���� �Ӽ� 1�� 3���� ���


if EVENT == 521 then
    SelectMsg(UID, 4, savenum, 4453, NPC, 4161, 522, 4162, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 522 then
   ITEM_COUNTA = HowmuchItem(UID, 389190000); -- �÷��� ����
   ITEM_COUNTB = HowmuchItem(UID, 389164000); -- ������ ����
   ITEM_COUNTC = HowmuchItem(UID, 389165000);-- �ñ��� ����
   ITEM_COUNTD = HowmuchItem(UID, 389166000);-- Ž���� ����
    if  ITEM_COUNTA  > 0 and  ITEM_COUNTB  > 0 and  ITEM_COUNTC  > 0 and  ITEM_COUNTD  > 0 then --��ᰡ �������� 
    Check = CheckExchange(UID, 480)
        if  Check ==1 then   
        RunExchange(UID, 480);		 
        SaveEvent(UID, 4252);
       else
        Ret = 1; 
        end  
    else -- ��ᰡ ������
       if ITEM_COUNTA <= 0 then -- A ��� ������
       SelectMsg(UID, 2, savenum, 4433, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTB <= 0 then -- B ��� ������ 
       SelectMsg(UID, 2, savenum, 4434, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       elseif  ITEM_COUNTC <= 0 then -- C ��� ������ 
       SelectMsg(UID, 2, savenum, 4435, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       else -- D ��� ������
       SelectMsg(UID, 2, savenum, 4436, NPC, 10, 168, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
       end
   end
end

--------------------------------------------------------------------------------
-- ����Ʈ ���� ��ī�� ��
--------------------------------------------------------------------------------