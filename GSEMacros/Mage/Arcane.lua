local _, Sequences = ...
------------------
----- Mage
------------------
Sequences['JMM_Ma_Arcane_ST'] = {
  Author = "Jabberie@Draka",
  SpecID=62,
  Talents = "2,2,3,3,1,2,2",
  Default=1,
  Icon='INV_MISC_QUESTIONMARK',
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/stopmacro [channeling]",
      },
      PreMacro={
      },
        "/cast Prismatic Barrier",
        "/cast [combat] Mark of Aluneth",
        "/castsequence Arcane Blast, Arcane Blast, Arcane Blast, Arcane Blast, Arcane Barrage",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Blood Fury",
      },
    },
  },
}

Sequences['JMM_Ma_Arcane_AoE'] = {
  Author = "Jabberie@Draka",
  SpecID=62,
  Talents = "2,2,3,3,1,2,2",
  Default=1,
  Icon='INV_MISC_QUESTIONMARK',
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/stopmacro [channeling]",
      },
      PreMacro={
      },
        "/castsequence Arcane Explosion, Arcane Explosion, Arcane Explosion, Arcane Explosion, Arcane Barrage",
      PostMacro={
      },
      KeyRelease={
      "/cast [combat] Blood Fury",
      },
    },
  },
}