local _, Sequences = ...
------------------
----- Shaman
------------------
Sequences['JMM_Sh_Enh_ST'] = {
  Author = "Jabberie@Draka",
  SpecID=263,
  Talents = "3,1,1,2,2,1,3",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [combat] Doom Winds",
      },
        "/cast Rockbiter",
        "/cast Earthen Spike",
        "/castsequence  reset=9  Lightning Bolt",
        "/cast Flametongue",
        "/cast [combat] Crash Lightning",
        "/cast [combat] Feral Spirit",
        "/cast Stormstrike",
      KeyRelease={
        "/cast [combat] Blood Fury",
        "/cast [combat] Berserking",           
      },
    },
  },
}