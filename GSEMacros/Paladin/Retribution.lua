local _, Sequences = ...
------------------
----- Paladin
------------------
Sequences['JMM_Pa_Ret_ST'] = {
  Author = "Jabberie@Draka",
  SpecID=70,
  Talents = "3,1,3,3,2,2,2",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
      },
      PreMacro={
      },
        "/cast Crusader Strike",      
        "/cast [combat] Blade of Justice",
        "/cast [combat] Judgment",
        "/cast Templar's Verdict",
        "/cast [combat] Wake of Ashes",
        "/cast Crusader Strike",
        "/cast Templar's Verdict",
        "/cast [combat] Judgment",
        "/cast [combat] Wake of Ashes",
        "/cast [combat] Divine Hammer",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}

Sequences['JMM_Pa_Ret_AoE'] = {
  Author = "Jabberie@Draka",
  SpecID=70,
  Talents = "3,1,3,3,2,2,2",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
      },
      PreMacro={
      },
        "/cast Crusader Strike",      
        "/cast [combat] Blade of Justice",
        "/cast [combat] Judgment",
        "/cast [combat] Divine Storm",
        "/cast [combat] Wake of Ashes",
        "/cast Crusader Strike",
        "/cast [combat] Divine Storm",
        "/cast [combat] Judgment",
        "/cast [combat] Wake of Ashes",
        "/cast [combat] Divine Hammer",        
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}
