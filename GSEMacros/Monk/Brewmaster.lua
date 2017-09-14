local _, Sequences = ...
------------------
----- Monk
------------------
Sequences['JMM_Mk_BM_ST'] = {
  Author = "Jabberie@Draka",  
  SpecID = 268,
  Talents = "2,1,1,3,1,1,2",
  Default = 1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress = {
        "/stopmacro [channeling]"
      },
        "/castsequence Keg Smash, Tiger Palm, Blackout Strike, Tiger Palm",      
        "/castsequence [combat] reset=combat Rushing Jade Wind, Breath of Fire, Tiger Palm, Keg Smash",
        "/castsequence [combat] reset=combat Ironskin Brew, Tiger Palm, Blackout Strike",
        "/cast [@player, combat] Exploding Keg",        
      KeyRelease = {
        "/cast [combat] Blood Fury",
        "/cast [combat] Berserking",
      },
    },
  },
}