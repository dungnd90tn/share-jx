
tbDoXanh =
{
	[1]=
	{
		szName = "D�y chuy�n",
		tbEquip =
		{
			{"To�n th�ch h�ng li�n",0,4,0},
			{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
		}
	},
	[2]=
	{
		szName = "�o gi�p",
		tbEquip =
		{
			{"Th�t B�o C� Sa",0,2,0},
			{"Ch�n V� Th�nh Y",0,2,1},
			{"Thi�n Nh�n M�t Trang",0,2,2},
			{"Gi�ng Sa B�o",0,2,3},
			{"���ng Ngh� gi�p",0,2,4},
			{"V�n L�u Quy T�ng Y",0,2,5},
			{"Tuy�n Long b�o",0,2,6},
			{"Long Ti�u ��o Y",0,2,8},
			{"C�u V� B�ch H� trang",0,2,9},
			{"Tr�m H��ng sam",0,2,10},
			{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
			{"V�n Ch�ng T� T�m Y",0,2,12},
			{"L�u Ti�n Qu�n",0,2,13},
		}
	},
	[3]=
	{
		szName = "�ai l�ng",
		tbEquip =
		{
			{"Thi�n T�m Y�u ��i",0,6,0},
			{"B�ch Kim Y�u ��i",0,6,1},
		}
	},
	[4]=
	{
		szName = "Gi�y",
		tbEquip =
		{
			{"C�u Ti�t X��ng V� Ngoa",0,5,0},
			{"Thi�n T�m Ngoa",0,5,1},
			{"Kim L� h�i",0,5,2},
			{"Phi Ph�ng Ngoa",0,5,3},
		}
	},
	[5]=
	{
		szName = "Bao tay",
		tbEquip =
		{
			{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
			{"Thi�n T�m H� Uy�n",0,8,1},
		}
	},
	[6]=
	{
		szName = "N�n",
		tbEquip =
		{
			{"T� L� m�o",0,7,0},
			{"Ng� l�o qu�n",0,7,1},
			{"Tu La Ph�t k�t",0,7,2},
			{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
			{"Y�m Nh�t kh�i",0,7,4},
			{"Tr�ch Tinh ho�n",0,7,5},
			{"� T�m M�o",0,7,6},
			{"Quan �m Ph�t Qu�n",0,7,7},
			{"�m D��ng V� C�c qu�n",0,7,8},
			{"Huy�n T� Di�n Tr�o",0,7,9},
			{"Long Huy�t ��u ho�n",0,7,10},
			{"Long L�n Kh�i",0,7,11},
			{"Thanh Tinh Thoa",0,7,12},
			{"Kim Ph�ng Tri�n S� ",0,7,13},
		}
	},
	[7]=
	{
		szName = "V� kh� c�n chi�n",
		tbEquip =
		{
			{"Huy�n Thi�t Ki�m",0,0,0},
			{"��i Phong �ao",0,0,1},
			{"Kim C� B�ng",0,0,2},
			{"Ph� Thi�n K�ch",0,0,3},
			{"Ph� Thi�n ch�y",0,0,4},
			{"Th�n Nh�t Tr�m",0,0,5},
			{"Tri�n th�",0,0,6},
		}
	},
	[8]=
	{
		szName = "Ng�c b�i",
		tbEquip =
		{
			{"Long Ti�n H��ng Nang",0,9,0},
			{"D��ng Chi B�ch Ng�c",0,9,1},
		}
	},
	[9]=
	{
		szName = "V� kh� t�m xa",
		tbEquip =
		{
			{"B� V��ng Ti�u",0,1,0},
			{"To�i Nguy�t �ao",0,1,1},
			{"Kh�ng T��c Linh",0,1,2},
		}
	},
	[10]=
	{
		szName = "Nh�n",
		tbEquip =
		{
			{"To�n Th�ch Gi�i Ch� ",0,3,0},
		}
	},
}
function trangbixanh()
	if CalcFreeItemCellCount() < 40 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
	local tbOpt = {}
	for i=1, getn(tbDoXanh) do
	tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
	end

	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
end
function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbOpt = {}
	for i=1, getn(tbEquip) do
	tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
	end

	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	local szTitle = format("<npc>Xin m�i l�a ch�n trang b�:")
	CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
	tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
	tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
	tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
	tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})


	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	local szTitle = format("<npc>Ch�n h�:")
	CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
	g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
	local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
	--for i=1,30 do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 200, 10) end
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
	local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
	local nInterval = 1000
	local magictype,p1,p2,p3
    local xItem
	
	if(tbEquipSelect[3] == 4 or tbEquipSelect[3] == 9) then
		for j=1, 1000 do
			xItem = AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10)
			for i=1,6 do
				magictype, p1, p2, p3 = GetItemMagicAttrib(xItem, i)
				if(i==1) then
					if(magictype ==114 or magictype ==139) then
					else
						RemoveItemByIndex(xItem)
					end
				end
				if(i==3) then
					if(magictype ==114 or magictype ==139) then
					else
						RemoveItemByIndex(xItem)
					end
				end
			end
		end
	elseif (tbEquipSelect[3] == 0 or tbEquipSelect[3] == 1) then
		for j=1, 1000 do
			xItem = AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10)
			for i=1,6 do
				magictype, p1, p2, p3 = GetItemMagicAttrib(xItem, i)
				if(i==1) then
					if(magictype ==115 or magictype ==116 or magictype ==139) then
						if(magictype ~= 139 and p1 < 115) then
							RemoveItemByIndex(xItem)
						end
					else
						RemoveItemByIndex(xItem)
					end
				end
				if(i==3) then
					if(magictype ==115 or magictype ==116 or magictype ==139) then
						if(magictype ~= 139 and p1 < 115) then
							RemoveItemByIndex(xItem)
						end
					else
						RemoveItemByIndex(xItem)
					end
				end
			end
		end
	elseif (tbEquipSelect[3] == 3) then
		--Msg2Player("Ring")
		for j=1, 100 do
			xItem = AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10)
			for i=1,6 do
				magictype, p1, p2, p3 = GetItemMagicAttrib(xItem, i)
				if(i==2) then
					if(p1 < 45) then
						RemoveItemByIndex(xItem)
					end
				end
				if(i==4) then
					if(p1 < 45) then
						RemoveItemByIndex(xItem)
					end
				end
			end
		end
	else
		for j=1, 1000 do
			xItem = AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10)
			for i=1,6 do
				magictype, p1, p2, p3 = GetItemMagicAttrib(xItem, i)
				if(magictype == 113 or magictype == 111) then
					if(p1 < 80 ) then
						RemoveItemByIndex(xItem)
					end
				end
				if(i==2) then
					if(magictype ==104 or magictype ==101 or magictype ==105 or magictype ==102 or magictype ==103) then
						if(p1 > 45) then
						else
							RemoveItemByIndex(xItem)
						end
					else
						RemoveItemByIndex(xItem)
					end
				end
				if(i==4) then
					if(magictype ==110 or magictype ==106 or magictype ==108 or magictype == 134) then
						if(magictype ~= 134 and p1 < 60) then
							RemoveItemByIndex(xItem)
						end
					else
						RemoveItemByIndex(xItem)
					end
				end
			end
		end
	end
	Msg2Player("Done!")
end