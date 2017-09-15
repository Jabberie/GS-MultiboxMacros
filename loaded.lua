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
    GSE.Print("DeathKnight : Blood  |-| DemonHunter : All Specs", ModName)
    GSE.Print("Druid : All Specs    |-| Hunter : BM", ModName)
    GSE.Print("Mage : Arcane        |-| Monk : Tank/DPS", ModName)
    GSE.Print("Paladin : All Specs  |-| Priest : Disc", ModName)
    GSE.Print("Rogue : Outlaw       |-| Shaman : All Specs", ModName)
    GSE.Print("Warlock : All Specs  |-| Warrior : Prot", ModName)
  end
end

if GSE.RegisterAddon(ModName, GetAddOnMetadata(ModName, "Version"), GSE.GetSequenceNamesFromLibrary(Sequences)) then
  processAddonLoaded("Load", ModName)
end

GSEPlugin:RegisterMessage(Statics.ReloadMessage,  processAddonLoaded)
