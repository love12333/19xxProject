-- [�Ű�] �̸���
-- �׳� �ݱ� 168

-- EVENT �� 100�� �̻� ���� ���

-- UID : �������� �����ϴ� ������ȣ
-- EVENT : �������� �����ϴ� ����Ʈ ��ȣ
-- STEP : �������� �����ϴ� ����Ʈ ���� �ܰ�

-- ���� ������ �Ķ��Ÿ�� ��� ����� �׻� ���������� �����

-- �������� ����...
local UserClass;
local QuestNum;
local Ret = 0;
local NPC =13015;



-- [�Ű�] �̸��� Ŭ���� ����Ʈ üũ  

if EVENT == 165 then


-- ������ �����Ǹ� �Ʒ� �ּ��� Ǯ���ּ��� 

Level = CheckLevel(UID)
if Level > 59 then -- ������ 60�̻��ΰ� 1���
SelectMsg(UID, 2, -1, 4134, NPC, 4075, 168, 4076, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
elseif Level >44 and Level < 60 then -- ������ 46~59�ΰ�?(2���)
SelectMsg(UID, 2, -1, 4133, NPC, 4075, 170, 4076, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1); 
else
SelectMsg(UID, 2, -1, 4135, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

end

local Time;
local Count;
local ItemA;

if EVENT == 168 then -- 1��� ����
    Time = CheckMonsterChallengeTime(UID)
    if Time == 3 then -- 1��� ������ ����
       Count = CheckMonsterChallengeUserCount(UID)
       if Count < 33 then -- �ο�üũ
          ItemA = HowmuchItem(UID, 900000000); 
          if ItemA > 100000 then -- ���üũ
          RobItem(UID, 900000000, 100000) --��� ����
          ZoneChange(UID, 55, 150, 150)
         else -- ��� ���� 
         SelectMsg(UID, 2, -1, 4136, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
         end
      else -- �ο� ä����
      SelectMsg(UID, 2, -1, 4137, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
     end
   else -- ������ ���µ� �ð��� �ƴմϴ�.
	SelectMsg(UID, 2, -1, 4138, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

local StatA;
local StatB;
local StatC;
local StatD;
local StatE;
local Sum;

if EVENT == 170 then -- 2��� ���� 
    Time = CheckMonsterChallengeTime(UID)
    if Time == 2 then -- 2��� ������ ����
       Count = CheckMonsterChallengeUserCount(UID)
       if Count < 33 then -- �ο�üũ
         Class = CheckClass (UID);
         if Class == 6 or Class == 8 or Class == 10 or Class == 12 then -- 2�� �����ΰ� üũ
          SelectMsg(UID, 2, -1, 4139, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);         
         else -- 2������ ���� ���
             StatA = CheckStatPoint(UID, 1)
             StatB = CheckStatPoint(UID, 2)
             StatC = CheckStatPoint(UID, 3)
             StatD = CheckStatPoint(UID, 4)
             StatE = CheckStatPoint(UID, 5)
             Sum = StatA+ StatB + StatC+ StatD + StatE 
             if Sum > 476 then -- 2�� �����ΰ� üũ
             SelectMsg(UID, 2, -1, 4139, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);         
            else -- 2������ ���� ��� 
             ZoneChange(UID, 55, 150, 150)
             end 
         end
      else -- �ο� ä����
      SelectMsg(UID, 2, -1, 4137, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
     end
   else -- ������ ���µ� �ð��� �ƴմϴ�.
	SelectMsg(UID, 2, -1, 4140, NPC, 10, 169, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 169 then -- 1��� ���� ����
    Ret = 1;
end

