local NATION = 0;--���� üũ
local NPC = 0;


if EVENT == 500 then
   NATION = CheckNation(UID);
   if NATION == 1 then -- ī�罺 �϶�
      SelectMsg(UID, 6, 500, 5000, NPC, 5000, 501, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else -- �����϶�
      SelectMsg(UID, 6, 500, 5001, NPC, 5000, 501, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   end
end

if EVENT == 501 then
	NATION = CheckNation(UID);
	if NATION == 1 then
	SaveEvent(UID, 5001);
	else
	SaveEvent(UID, 5004);
	end
end

if EVENT == 502 then

    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 6, 500, 5002, NPC, 5001, 503, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 6, 500, 5003, NPC, 5004, 503, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end
if EVENT == 503 then
	NATION = CheckNation(UID);
	if NATION == 1 then
	SaveEvent(UID, 5002);
	else
	SaveEvent(UID, 5005);
	end
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 1, 500, 5004, NPC, 5002, 504, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 1, 500, 5005, NPC, 5005, 504, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end

    if EVENT == 504 then
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 1, 500, 5006, NPC, 5003, 505, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 1, 500, 5007, NPC, 5003, 505, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end

    if EVENT == 505 then
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 1, 500, 5008, NPC, 5004, 506, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 1, 500, 5009, NPC, 5004, 506, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end

    if EVENT == 506 then
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 1, 500, 5010, NPC, 5005, 507, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 1, 500, 5011, NPC, 5005, 507, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end

    if EVENT == 507 then
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 1, 500, 5012, NPC, 5006, 508, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 1, 500, 5013, NPC, 5006, 508, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end

    if EVENT == 508 then
    NATION = CheckNation(UID);
        if NATION == 1 then -- ī�罺 �϶�
        SelectMsg(UID, 6, 500, 5014, NPC, 6002, 509, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else -- �����϶�
        SelectMsg(UID, 6, 500, 5015, NPC, 6002, 509, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        end
    end



if EVENT == 509 then
    Ret = 1;
end
