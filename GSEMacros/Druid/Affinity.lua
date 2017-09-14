local _, Sequences = ...
------------------
----- Druid
------------------
Sequences['JMM_Dr_AffinityBoom'] = {
  Author = "Jabberie@Draka",
  SpecID=105,
  Talents = "?,?,1,?,?,?,?",
  Help = "Tier 3 choose Balance Affinity",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [noform:4] Moonkin Form",
      },
      PreMacro={
      },
        "/castsequence  reset=target  Moonfire, Sunfire, null",
        "/castsequence [combat] Solar Wrath, Solar Wrath, Solar Wrath, Lunar Strike",
        "/cast [combat] Starsurge",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}

Sequences['JMM_Dr_AffinityResto'] = {
  Author = "Jabberie@Draka",
  SpecID=105,
  Talents = "?,?,3,?,?,?,?",
  Help = "Tier 3 choose Restoration Affinity",
  Default=1,
  Icon='Spell_Nature_StarFall',
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [noform:5] Treant Form",
      },
      PreMacro={
      },
        "/castsequence [@focus, exists][@party1, exists][@player] reset=combat/15  Rejuvenation, Regrowth, Healing Touch, Swiftmend, Healing Touch",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}
