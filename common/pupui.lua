require('common');
require('pup_library')
local imgui = require('imgui');


-- UI Variables. These are the default and do not save on unload.
local pupuivars = T{
    is_open = { true, },
    target  = nil,
	frame = nil,
};

local player = gData.GetPlayer();
local pet = gData.GetPet();

	if (pet.Name == nil or pet == nil) then -- Check if there's a pet
		-- There isn't a pet so return
		pupuivars.frame = nil;
		pupuivars.target = nil;
		return;
	end

	-- Now we begin building the GUI
	imgui.SetNextWindowBgAlpha(0.7); -- Background alpha
    imgui.SetNextWindowSize({ 250, -1, }, ImGuiCond_Always) -- Window size
	
	-- Now we load the UI
	if (imgui.Begin('PetInfo', pupuivars.is_open, bit.bor(ImGuiWindowFlags_NoDecoration, ImGuiWindowFlags_AlwaysAutoResize, ImGuiWindowFlags_NoFocusOnAppearing, ImGuiWindowFlags_NoNav))) then
		-- Now let's get our pets information to populate our UI
		local pethp = pet.HPP;
		local petmp = pet.MPP;
		local pettp = pet.TP;
		local petstatus = pet.Status;
		local petname = pet.Name;
		local frametype = pup.get_attachments_names()
		
		-- Create the display of information
		imgui.Text(petname);
		imgui.SameLine();
		imgui.Text(frametype[2]);
		imgui.SameLine();
		imgui.Text(' --> ');
		imgui.SameLine();
		imgui.Text('None');
		-- New line
		imgui.Text('HP - '); imgui.SameLine(); imgui.Text(pethp); imgui.SameLine(); imgui.Text(' | ');
		imgui.SameLine();
		imgui.Text('MP - '); imgui.SameLine(); imgui.Text(petmp); imgui.SameLine(); imgui.Text(' | ');
		imgui.SameLine();
		imgui.Text('TP - '); imgui.SameLine(); imgui.Text(pettp);
	end