local _, Sequences = ...
------------------
----- Shaman
------------------
Sequences['JMM_Sh_Ele_ST'] = {
  Author = "Jabberie@Draka",  
  SpecID=262,
  Talents = "3,2,1,2,3,1,2",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/castsequence  reset=target  Flame Shock, null",
        "/castsequence  [talent:1/3] reset=combat  Totem Mastery, null",
      },
      PreMacro={
      },
        "/cast Stormkeeper",
        "/cast [talent:5/3] Elemental Blast",
        "/cast Lava Burst",
        "/castsequence Lightning Bolt, Lightning Bolt, Flame Shock",
        "/cast [talent:5/3] Elemental Blast",
        "/cast Lava Burst",
        "/castsequence Lightning Bolt, Lightning Bolt, Lightning Bolt, Earth Shock",
        "/cast [combat] Fire Elemental",
      PostMacro={
      },
      KeyRelease={
        "/cast Lava Burst",
      },
    },
  },
}

Sequences['JMM_Sh_Ele_AoE'] = {
  Author = "Jabberie@Draka", 
  SpecID=262,
  Talents = "3,2,1,2,3,3,2",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/castsequence  reset=target  Flame Shock, null",
        "/castsequence  [talent:1/3] reset=combat  Totem Mastery, null",
      },
      PreMacro={
      },
        "/cast Stormkeeper",
        "/castsequence Chain Lightning, Chain Lightning, Chain Lightning, Flame Shock",                
        "/cast [talent:5/3] Elemental Blast",
        "/castsequence Chain Lightning, Chain Lightning, Flame Shock",
        "/castsequence Chain Lightning, Chain Lightning, Chain Lightning, Earth Shock",
        "/castsequence Chain Lightning, [@player,combat] Earthquake",
        "/castsequence Chain Lightning, [@player,combat] Liquid Magma Totem",
      PostMacro={
      },
      KeyRelease={
        "/cast Lava Burst",
      },
    },
  },
}