--PortalStonesMod
include("Scripts/Objects/PortalLinker.lua")

-------------------------------------------------------------------------------
if PortalStonesMod == nil then
	PortalStonesMod = EternusEngine.ModScriptClass.Subclass("PortalStonesMod")
end

-------------------------------------------------------------------------------
function PortalStonesMod:Constructor()
	PortalStonesMod.LinkManager = include( "Scripts/Core/LinkManager.lua").new(self)
end

 -------------------------------------------------------------------------------
 -- Called once from C++ at engine initialization time
function PortalStonesMod:Initialize()
	Eternus.CraftingSystem:ParseRecipeFile("Data/Crafting/PortalStone_recipe.txt")
end

-------------------------------------------------------------------------------
-- Called from C++ when the current game enters 
function PortalStonesMod:Enter()
end

-------------------------------------------------------------------------------
function PortalStonesMod:Save()
	PortalStonesMod.LinkManager:Save()
end

-------------------------------------------------------------------------------
function PortalStonesMod:Restore()
	PortalStonesMod.LinkManager:Restore()
end

-------------------------------------------------------------------------------
-- Called from C++ when the game leaves it current mode
function PortalStonesMod:Leave()
end

-------------------------------------------------------------------------------
-- Called from C++ every update tick
function PortalStonesMod:Process(dt)
end

-------------------------------------------------------------------------------
EntityFramework:RegisterModScript(PortalStonesMod)