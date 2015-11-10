--PortalStonesMod
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
	Eternus.CraftingSystem:ParseRecipeFile("Data/Crafting/PortalStone_recipe.txt", "Magic Items")
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
-- Called from C++ when the current game enters 
function PortalStonesMod:Save()
	PortalStonesMod.LinkManager:Save()
end

-------------------------------------------------------------------------------
-- Called from C++ when the game leaves it current mode
function PortalStonesMod:Restore()
	PortalStonesMod.LinkManager:Restore()
end

-------------------------------------------------------------------------------
EntityFramework:RegisterModScript(PortalStonesMod)