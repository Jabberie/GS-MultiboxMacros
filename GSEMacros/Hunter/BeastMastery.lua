local _, Sequences = ...
------------------
----- Hunter 
------------------
Sequences['JMM_Hu_BM_ST'] = {
  Author = "Jabberie@Draka",  
  SpecID=253,
  Talents = "3,1,1,2,3,3,3",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [@focus, exists, nodead][@party1, exists, nodead][@pet, exists, nodead] Misdirection",
        "/petautocastoff [group] Growl",
        "/petautocaston [nogroup] growl",
      },
      PreMacro={
      },
        "/cast [nopet][@pet,dead] Revive Pet",
        "/cast Dire Beast",
        "/cast [nopet] Call Pet 1",
        "/castsequence Kill Command, Cobra Shot, Cobra Shot, Multi-Shot",
        "/cast [talent:6/1] A Murder of Crows; [talent:6/2] Barrage",
        "/castsequence [combat] Dire Beast, Titan's Thunder",
        "/castsequence Kill Command, Cobra Shot, Cobra Shot, Multi-Shot",        
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Bestial Wrath",
        "/cast [combat] Blood Fury",
        "/cast [combat] Aspect of the Wild",
      },
    },
  },
}

Sequences['JMM_Hu_BM_AoE'] = {
  Author = "Jabberie@Draka",  
  SpecID=253,
  Talents = "3,1,1,2,3,3,3",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/cast [@focus, exists, nodead][@party1, exists, nodead][@pet, exists, nodead] Misdirection",
        "/petautocastoff [group] Growl",
        "/petautocaston [nogroup] growl",
      },
      PreMacro={
      },
        "/cast [nopet][@pet,dead] Revive Pet",
        "/cast Dire Beast",
        "/cast [nopet] Call Pet 1",
        "/castsequence Kill Command, Multi-Shot, Multi-Shot, Multi-Shot",
        "/cast [talent:6/1] A Murder of Crows; [talent:6/2] Barrage",
        "/castsequence [combat] Dire Beast, Titan's Thunder",
        "/castsequence Kill Command, Multi-Shot, Multi-Shot, Multi-Shot",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Bestial Wrath",
        "/cast [combat] Blood Fury",
        "/cast [combat] Aspect of the Wild",
      },
    },
  },
}

Sequences['JMM_Hu_BM_Farm'] = {
  Author="Jabberie@Draka",
  SpecID=253,
  Talents = "3,1,1,3,3,?,3",
  Default=1,
  Icon="INV_MISC_QUESTIONMARK",
  MacroVersions = {
    [1] = {
      StepFunction = "Sequential",
      KeyPress={
        "/targetenemy [noharm][dead]", -- auto targets a new mob when your current one dies
        "/cast [@focus, exists, nodead][@pet, exists, nodead] Misdirection", -- MD to your own pet or focus
      },
      PreMacro={
      },
        "/cast [nopet] Call Pet 2", -- Pet 2 is a tenacity pet
        "/cast Dire Beast",
        "/cast [talent:6/1] A Murder of Crows; [talent:6/2] Barrage",
        "/castsequence Kill Command, Multi-Shot, Multi-Shot, Multi-Shot, Multi-Shot",
        "/cast [nopet][@pet,dead] Revive Pet",        
        "/castsequence [combat] reset=combat  Dire Beast, Titan's Thunder, Fetch",
        "/cast [combat] Mend Pet",
        "/cast Kill Command",
        "/cast [talent:6/1] A Murder of Crows; [talent:6/2] Barrage",
        "/castsequence Kill Command, Multi-Shot, Multi-Shot, Fetch",
      PostMacro={
      },
      KeyRelease={
        "/cast [combat] Bestial Wrath",
        "/cast [combat] Blood Fury",
        "/cast [combat] Aspect of the Wild",
      },
    },
  },
}
