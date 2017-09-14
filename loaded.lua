local ModName, Sequences = ...
local GSE = GSE
if GSE == nil then
  print("This mod depends on GSE 2.0 or higher.")
  return;
end
local L = GSE.L
local Statics = GSE.Static
local GSEPlugin = LibStub("AceAddon-3.0"):NewAddon(ModName, "AceEvent-3.0")

local function processAddonLoaded(event, arg)
  if arg == ModName then
    GSE.ImportMacroCollection(Sequences)
    GSE.Print("Multibox Macros loaded.  This set currently contains macros for ", ModName)
    GSE.Print("DeathKnight : Blood", ModName)
    GSE.Print("DemonHunter : All Specs", ModName)
    GSE.Print("Druid : All Specs", ModName)
    GSE.Print("Hunter : BM", ModName)
    GSE.Print("Mage : Arcane", ModName)
    GSE.Print("Monk : Tank/DPS", ModName)
    GSE.Print("Paladin : All Specs", ModName)
    GSE.Print("Priest : Disc", ModName)
    GSE.Print("Rogue : Outlaw", ModName)
    GSE.Print("Shaman : All Specs", ModName)
    GSE.Print("Warlock : All Specs", ModName)
    GSE.Print("Warrior : Prot", ModName)
--   if GSE.GetCurrentSpecID () == 253 then
--     GSE.Print("Note: The Beast Master hunter macros have been updated.  A number of macros have been consolidated into the HP_TBMain and HP_TBAOE macros.", ModName)
--   end
  end
end

if GSE.RegisterAddon(ModName, GetAddOnMetadata(ModName, "Version"), GSE.GetSequenceNamesFromLibrary(Sequences)) then
  processAddonLoaded("Load", ModName)
end

GSEPlugin:RegisterMessage(Statics.ReloadMessage,  processAddonLoaded)
