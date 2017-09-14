local _, Sequences = ...
------------------
----- Shaman
------------------
Sequences['JMM_Sh_Resto_ST'] = {
  Author = "Jabberie@Draka",
  SpecID=264,
  Talents = "3,2,1,3,3,2,3",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = [[Sequential]],
      KeyPress={
      	"/stopmacro [channeling]", 
      },
      PreMacro={
      },
        "/cast [@focus, exists, nodead][@Party1, exists, nodead][] Riptide",
        "/castsequence [combat, mod:shift] reset=combat Flame Shock, Lava Burst, Lightning Bolt, Lightning Bolt, Lightning Bolt, Lightning Bolt",
        "/castsequence [@focus, exists, nodead][@Party1, exists, nodead][] Healing Wave, Healing Wave",
        "/cast [@player, combat] Healing Rain",
        "/cast [@player, combat] Gift of the Queen",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Healing Stream Totem",
        "/cast [combat] Blood Fury",
      },
    },
  },
}

Sequences['JMM_Sh_Resto_AOE'] = {
  Author = "Jabberie@Draka",
  SpecID=264,
  Talents = "3,2,1,3,3,2,3",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = [[Sequential]],
      KeyPress={
      "/stopmacro [channeling]", 
      },
      PreMacro={
      },
        "/cast [@focus, exists, nodead][@Party1, exists, nodead][] Riptide",
        "/cast [@focus, exists, nodead][@Party1, exists, nodead][] Chain Heal",
        "/cast [@player, combat] Gift of the Queen",
        "/cast [@player, combat]  Healing Rain",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Healing Stream Totem",
        "/cast [combat] Blood Fury",
      },
    },
  },
}