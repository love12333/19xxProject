
-- ��Ÿ �̺�Ʈ ������ ������ ������ 

if EVENT == 500 then
   SelectMsg(UID, 2, -1, 4071, 13010, 4071, 501, 4072, 502, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local NATION = 0;

if EVENT == 501 then
   NATION = CheckNation(UID);
   if NATION == 1 then --ī�罺 �϶� 
   ZoneChange(UID, 1, 354, 1610) -- ����ȣ, X��ǥ, Y�·� 
   else -- �����϶�
   ZoneChange(UID, 2, 1670, 370) -- ����ȣ, X��ǥ, Y�·� 
   end
end

if EVENT == 502 then
    Ret = 1;
end

