
-- ��Ÿ �̺�Ʈ ������ ������ ������ 

if EVENT == 500 then
   SelectMsg(UID, 2, -1, 4071, 16094, 4071, 501, 4072, 502, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

local NATION = 0;

if EVENT == 501 then
Level = CheckLevel(UID)
    if Level < 30 then
    NATION = CheckNation(UID);
        if NATION == 1 then --ī�罺 �϶� 
        ZoneChange(UID, 1, 441, 1625) -- ����ȣ, X��ǥ, Y�·� 
        else -- �����϶�
        ZoneChange(UID, 2, 1595, 412) -- ����ȣ, X��ǥ, Y�·� 
        end
    else
    NATION = CheckNation(UID);
        if NATION == 1 then --ī�罺 �϶� 
        ZoneChange(UID, 71, 1380, 1090) -- ����ȣ, X��ǥ, Y�·� 
        else -- �����϶�
        ZoneChange(UID, 71, 630, 920) -- ����ȣ, X��ǥ, Y�·� 
        end
    end
end

if EVENT == 502 then
    Ret = 1;
end


