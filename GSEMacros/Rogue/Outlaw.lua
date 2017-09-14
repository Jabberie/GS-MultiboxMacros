local _, Sequences = ...
------------------
----- Rogue
------------------
Sequences['JMM_Ro_Outlaw_ST'] = {
  Author = "Jabberie@Draka",
  SpecID=260,
  Talents = "1,1,1,1,3,2,1",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [mod:ctrl] Pistol Shot",
        "/cancelaura Blade Flurry",
        "/cast [stealth] Ambush",
      },
      PreMacro={
        "/cast [nostealth,nocombat] Stealth",
        "/cast [stealth] Ambush",
      },
        "/cast [combat] Adrenaline Rush",
        "/cast [combat] Curse of the Dreadblades",
        "/castsequence  reset=1  Ghostly Strike, Saber Slash, !Slice and Dice, Saber Slash, Saber Slash, Run Through, Saber Slash, Saber Slash, Run Through, Ghostly Strike, Saber Slash, Run Through, Saber Slash, Run Through",
      PostMacro={
      },
      KeyRelease={
        "/cast [nostealth,nocombat] Stealth",
        "/cast [nostealth, combat] Blood Fury",
        "/cast [nostealth, combat] Berserking",
      },
    },
  },
}

Sequences['JMM_Ro_Outlaw_AoE'] = {
  Author = "Jabberie@Draka",
  SpecID=260,
  Talents = "1,1,1,1,3,2,1",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [mod:ctrl] Pistol Shot",
        "/cast !Blade Flurry",
        "/cast [stealth] Ambush",
      },
      PreMacro={
        "/cast [nostealth,nocombat] Stealth",
        "/cast [stealth] Ambush",
      },
        "/cast [combat] Adrenaline Rush",
        "/cast [combat] Curse of the Dreadblades",
        "/castsequence  reset=1  Ghostly Strike, Saber Slash, !Slice and Dice, Saber Slash, Saber Slash, Run Through, Saber Slash, Saber Slash, Run Through, Ghostly Strike, Saber Slash, Run Through, Saber Slash, Run Through",
      PostMacro={
      },
      KeyRelease={
        "/cast [nostealth,nocombat] Stealth",
        "/cast [nostealth, combat] Blood Fury",
        "/cast [nostealth, combat] Berserking",
      },
    },
  },
}