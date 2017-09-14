local _, Sequences = ...
------------------
----- Monk
------------------
Sequences['JMM_Mk_WW_ST'] = {
  Author = "Jabberie@Draka",
  SpecID = 269,
  Talents = "3,2,3,3,1,2,3",
  Default = 1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress = {
        "/stopmacro [channeling]"
      },
        "/cast Tiger Palm",
        "/cast Rising Sun Kick",
        "/castsequence reset=combat Tiger Palm, Touch of Death",
        "/cast Strike of the Windlord",
        "/castsequence reset=combat Tiger Palm, Fists of Fury",
        "/cast Tiger Palm",
        "/cast [combat] Chi Wave",
        "/castsequence [combat] Fists of Fury, Rising Sun Kick, Blackout Kick",
      KeyRelease = {
        "/cast [combat] Blood Fury",      
      },
    },
  },
}