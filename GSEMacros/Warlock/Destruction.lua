local _, Sequences = ...
------------------
----- Warlock
------------------
Sequences['JMM_Wk_Destro_ST'] = {
  Author = "Jabberie@Draka",
  SpecID=267,
  Talents = "1,1,?,2,1,1,2",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Priority",
      KeyPress={
        "/stopmacro [channeling]", 
        "/cast [nopet] Summon Doomguard", 
        "/castsequence reset=target Immolate, null",
      },
      PreMacro={
      },
        "/castsequence reset=combat Immolate, Shadow Bolt, Shadow Bolt, Shadow Bolt",
        "/cast Chaos Bolt",
        "/cast Conflagrate",
        "/cast [combat] Dimensional Rift",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Blood Fury",
        "/cast [combat] Berserking",     
      },
    },
  },
}

Sequences['JMM_Wk_Destro_AOE'] = {
  Author = "Jabberie@Draka",
  SpecID=267,
  Talents = "1,3,3,1,2,2,2",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Priority",
      KeyPress={
        "/stopmacro [channeling]", 
        "/cast [nopet] Summon Imp",      
        "/castsequence reset=target Immolate, null",
      },
      PreMacro={
      },
        "/cast [@player] Rain of Fire",
        "/cast Conflagrate",
        "/cast [@player] Cataclysm",
        "/cast Channel Demonfire",
        "/cast Shadow Bolt",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Blood Fury",
        "/cast [combat] Berserking",     
      },
    },
  },
}