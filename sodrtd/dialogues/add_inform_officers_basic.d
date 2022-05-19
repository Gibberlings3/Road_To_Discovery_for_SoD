/* add reply options to Corwin's dialogue in case she is not in party. She will only accept them in case Marshal Nederlok is not around. (i.e. the first two camps. */

APPEND bdcorwin
IF ~~ THEN update_corwin
SAY @32 /* ~Tell me all you know about the crusade's doings.~ */
%reply_options_inform_corwin%
+ ~Global("bd_joined","locals",0)
GlobalLT("bd_plot","global",101)
AreaCheck("bd1000")~ + @1 /* I have no more information to share right now. */ + bdcorwin_5_transition
+ ~GlobalLT("bd_fists_attack","global",2)
NextTriggerObject("ff_camp")
IsOverMe("corwin")
AreaCheck("bd7100")~ + @1 /* I have no more information to share right now. */ + 24
+ ~AreaCheck("bd3000")
Global("bd_plot","global",313)~ + @1 /* I have no more information to share right now. */ + update_corwin_08
+ ~Global("bd_joined","locals",0)
!GlobalLT("bd_plot","global",101)
AreaCheck("bd1000")~ + @1 /* I have no more information to share right now. */ + 53
+ ~AreaCheck("bd3000")
!Global("bd_plot","global",313)~ + @1 /* I have no more information to share right now. */ + 53
END

IF ~~ THEN bdcorwin_5_transition
SAY @33 /* Then let us get a good rest now while we still can. */
COPY_TRANS bdcorwin 5
END

IF ~~ THEN update_corwin_00
SAY @34 /* Let us talk about this after we freed Bridgefort, <CHARNAME>. */
IF ~~ THEN + 36
END

IF ~~ THEN update_corwin_01
SAY @35 /* Thanks for telling me so quickly. I will inform the Dukes and the officers about this immediately. */
IF ~~ THEN + update_corwin
IF ~GlobalLT("bd_fists_attack","global",2)
NextTriggerObject("ff_camp")
IsOverMe("corwin")
AreaCheck("bd7100")~ THEN + 24
END

IF ~~ THEN update_corwin_02
SAY @36 /* We need to keep our eyes open with regard to this, then. */
IF ~~ THEN + update_corwin
IF ~GlobalLT("bd_fists_attack","global",2)
NextTriggerObject("ff_camp")
IsOverMe("corwin")
AreaCheck("bd7100")~ THEN + 24
END

IF ~~ THEN update_corwin_03
SAY @37 /* I couldn't imagine your Bhaal heritage would pose such an imminent threat! */
IF ~~ THEN + update_corwin_01
END

IF ~~ THEN update_corwin_04
SAY @38 /* So the other side is plotting as well. Why am I not surprised. */
IF ~~ THEN + update_corwin_01
END

IF ~~ THEN update_corwin_05
SAY @39 /* It is no surprise your name would draw unwanted attention. I'll pass the information on and make sure the guards know about this. */
IF ~~ THEN + update_corwin
IF ~GlobalLT("bd_fists_attack","global",2)
NextTriggerObject("ff_camp")
IsOverMe("corwin")
AreaCheck("bd7100")~ THEN + 24
END

IF ~~ THEN update_corwin_06
SAY @40 /* Of course... I'll pass the information on. Be careful. */
IF ~~ THEN + update_corwin
IF ~GlobalLT("bd_fists_attack","global",2)
NextTriggerObject("ff_camp")
IsOverMe("corwin")
AreaCheck("bd7100")~ THEN + 24
END

IF ~~ THEN update_corwin_07
SAY @41 /* I will inform the Dukes and the officers about this. */
IF ~~ THEN + update_corwin
IF ~GlobalLT("bd_fists_attack","global",2)
NextTriggerObject("ff_camp")
IsOverMe("corwin")
AreaCheck("bd7100")~ THEN + 24
END

IF ~~ THEN update_corwin_08
SAY @66 /* We are in the big war camp. Best you tell this to the officers directly - and everything you will learn when going for the caves below Dragonspear Castle. */
COPY_TRANS bdcorwin 38
END

IF ~~ THEN camp_bd1000_transition_14
SAY @285 /* What happened back there? */
COPY_TRANS bdcorwin 14
END

IF ~~ THEN camp_bd1000_transition_16
SAY @286 /* We will discuss the rest later. */
COPY_TRANS bdcorwin 16
END

IF ~~ THEN camp_bd1000_transition_18
SAY @287 /* Did Argent say anything else? */
COPY_TRANS bdcorwin 18
END

END //APPEND

EXTEND_BOTTOM bdcorwin 5
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ + update_corwin
END

EXTEND_BOTTOM bdcorwin 24
%reply_options_inform_corwin%
END

EXTEND_BOTTOM bdcorwin 36
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ + update_corwin_00
END

EXTEND_BOTTOM bdcorwin 38
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ + update_corwin_08
END

EXTEND_BOTTOM bdcorwin 53
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ + update_corwin
END


/* bd1000 */
/* after bridge scene at Coast Way Crossing: Corwin initiates dialogue in case she is not in party. add interjection of Bence into Corwin's dialogue. */
/* if Corwin is in the group, Bence will talk to the player instead. add interjection of Bence here, too. */

/* Corwin, after bridge scene at Coast Way Crossing */

EXTEND_BOTTOM bdcorwin 14
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",14)~ FLAGS 0x200 EXTERN bdbence intermediate_to_update_bence
END


EXTEND_BOTTOM bdcorwin 18
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",18)~ FLAGS 0x200 EXTERN bdbence intermediate_to_update_bence
END

/* add more reply options to this exchange with Corwin and Bence */
EXTEND_BOTTOM bdbence 11
++ @43 /* I am but one <PRO_RACE>, Corporal, but I'm flattered you think I could have stopped it from happening. Let's focus on realistic scenarios: I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",110)~ FLAGS 128 + intermediate_to_update_bence
END

EXTEND_BOTTOM bdcorwin 16
++ @43 /* I am but one <PRO_RACE>, Corporal, but I'm flattered you think I could have stopped it from happening. Let's focus on realistic scenarios: I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",16)~ FLAGS 128 EXTERN bdbence intermediate_to_update_bence
END

/* in case Corwin is in party or not present, Bence has a different dialogue. add reply options here */
EXTEND_BOTTOM bdbence 15
++ @44 /* The bridge is destroyed, but I have knowledge about the crusade's plans we need to talk about urgently. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",150)~ FLAGS 128 + intermediate_to_update_bence
END

EXTEND_BOTTOM bdbence 16
++ @44 /* The bridge is destroyed, but I have knowledge about the crusade's plans we need to talk about urgently. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",160)~ FLAGS 128 + intermediate_to_update_bence
END

/* first two camps - add reply options to Bence Duncan for the moments he is available */
APPEND bdbence

IF ~~ THEN camp_bd1000_transition_110
SAY @288 /* This doesn't change what you let happen at the bridge! */
COPY_TRANS bdbence 11
END

IF ~~ THEN camp_bd1000_transition_150
SAY @289 /* Very well. What happened at the bridge? */
COPY_TRANS bdbence 15
END

IF ~~ THEN camp_bd1000_transition_160
SAY @290 /* So, what now? */
COPY_TRANS bdbence 16
END

IF ~~ THEN camp_bd7100_transition_201_200
SAY @45 /* Let us focus on reaching our allies inside Bridgefort. */
COPY_TRANS bdbence 20
END

IF ~~ THEN camp_bd7100_transition_293_300
SAY @46 /* Alright then. */
COPY_TRANS bdbence 30
END

IF ~~ THEN camp_bd7100_transition_293_301
SAY @46 /* Alright then. */
COPY_TRANS bdbence 31
END

/* I need this stupid line or the variables will not be set soon enough */
IF ~~ THEN intermediate_to_update_bence
SAY @47 /* ~You have intel about the crusade? Let us know immediately.~ */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence
SAY @291 /* ~Do you have more you can tell us about caelar's plans?~ */
%reply_options_inform_bence%
+ ~AreaCheck("bd1000")
Global("C#RtD_bdplot_175_check","bd1000",110)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",0)~ + camp_bd1000_transition_110
+ ~AreaCheck("bd1000")
Global("C#RtD_bdplot_175_check","bd1000",150)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",0)~ + camp_bd1000_transition_150
+ ~AreaCheck("bd1000")
Global("C#RtD_bdplot_175_check","bd1000",160)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",0)~ + camp_bd1000_transition_160
+ ~AreaCheck("bd1000")
Global("C#RtD_bdplot_175_check","bd1000",14)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",0)~ EXTERN bdcorwin camp_bd1000_transition_14
+ ~AreaCheck("bd1000")
Global("C#RtD_bdplot_175_check","bd1000",16)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",0)~ EXTERN bdcorwin camp_bd1000_transition_16
+ ~AreaCheck("bd1000")
Global("C#RtD_bdplot_175_check","bd1000",18)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_175_check","bd1000",0)~ EXTERN bdcorwin camp_bd1000_transition_18
+ ~AreaCheck("bd7100")
Global("C#RtD_bdplot_201_check","bd7100",200)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_201_check","bd7100",0)~ + camp_bd7100_transition_201_200
+ ~Global("C#RtD_bdplot_293_check","MYAREA",300)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_293_check","MYAREA",0)~ + camp_bd7100_transition_293_300
+ ~Global("C#RtD_bdplot_293_check","MYAREA",301)~ + @1 /* I have no more information to share right now. */ DO ~SetGlobal("C#RtD_bdplot_293_check","MYAREA",0)~ + camp_bd7100_transition_293_301
END

IF ~~ THEN update_bence_01
SAY @48 /* This is important news. I will inform the Dukes and the officers at the big war camp. */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence_02
SAY @49 /* Let us know if you get more information with regard to this. */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence_03
SAY @50 /* Cursed be... Hmph, something like this was to be expected, I guess. */
IF ~~ THEN + update_bence_01
END

IF ~~ THEN update_bence_04
SAY @51 /* This is getting bigger with any passing moment. */
IF ~~ THEN + update_bence_01
END

IF ~~ THEN update_bence_05
SAY @52 /* I guess it was just a matter of time until you draw unwanted attention. I'll pass the information on and make sure the guards know about this. */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence_06
SAY @53 /* I guess that was to be expected, or are you surprised? I'll the information on. */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence_07
SAY @54 /* He managed to trick the guards. This is not a good sign. */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence_08
SAY @57 /* ~Interesting. Let's see whether this will turn out to be a good or a bad thing.~ */
IF ~~ THEN + update_bence
END

IF ~~ THEN update_bence_09
SAY @58 /* ~So you don't have to be a Bhaalchild to stirr up trouble, eh? I'll pass the information on.~ */
IF ~~ THEN + update_bence
END
END //APPEND

/* bd7100 */
/* after reaching camp, Bence initiates dialogue before he vanishes from the camp */
EXTEND_BOTTOM bdbence 20
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_201_check","bd7100",200)~ FLAGS 128 + intermediate_to_update_bence
END

/* after Bridgefort fight */
INTERJECT bdbence 30 C#RtD_bdbence_30
== bdbence @55 /* Is there anything you want the officers to know ahead of our arrival at the big war camp? */
END
++ @56 /* No, nothing. I can tell them myself. */ + camp_bd7100_transition_293_300
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_293_check","MYAREA",300)~ FLAGS 128 + intermediate_to_update_bence

INTERJECT bdbence 31 C#RtD_bdbence_31
== bdbence @55 /* Is there anything you want the officers to know ahead of our arrival at the big war camp? */
END
++ @56 /* No, nothing. I can tell them myself. */ + camp_bd7100_transition_293_301
++ @42 /* I have knowledge about the crusade's plans we need to talk about. */ DO ~SetGlobal("C#RtD_bdplot_293_check","MYAREA",310)~ FLAGS 128 + intermediate_to_update_bence


/* add reply options for info to bddelanc 4.
-> will be deactivated if component 5 gets installed 
SetGlobal("##","GLOBAL",1) -- or maybe use one of the INTERJECT /I_C_T variables from component 5: Global("C#RtD_bddelanc_to_4","GLOBAL",0) */

EXTEND_BOTTOM bddelanc 4
+ ~Global("C#RtD_bddelanc_to_4","GLOBAL",0)~ + @0 /* I have more information concerning Caelar's plans. */ + update_delancie
END

/* after first meeting at the officer's tent: commanders will stand separately. */
/*
De Lancie: add reply options here
bddelanc
IF ~  GlobalGT("bd_plot","global",304)
GlobalLT("bd_plot","global",350)
AreaCheck("bd3000")
~ THEN BEGIN 30 // from:
  SAY #43924 /* ~What are you still doing here? Make yourself useful—go take care of the caverns 'neath Dragonspear.~ [BD43924] */
  IF ~~ THEN REPLY #43925 /* ~I plan to. But before I do, I would know everything there is to know about Caelar.~ */ GOTO 32
  IF ~~ THEN REPLY #43926 /* ~I like to think I'm useful in a variety of ways. Not all of them require me to go underground.~ */ GOTO 39
  IF ~~ THEN REPLY #43927 /* ~I do as I will, where I will, Torsin. Do not cross me.~ */ GOTO 39
  IF ~~ THEN REPLY #61084 /* ~Of course, Torsin de Lancie. I will leave immediately.~ */ GOTO 31
END
*/

EXTEND_BOTTOM bddelanc 30
%reply_options_inform_delancie%
END

APPEND bddelanc
IF ~~ THEN intermediate_4
SAY @1555 /* ~[Torsin De Lancie]Now let us talk about how you can be of use.~ */
COPY_TRANS bddelanc 4
END

IF ~~ THEN update_delancie
SAY @2 /* Is there anything you want to add to our status of information regarding Caelar's plans? */
%reply_options_inform_delancie%
+ ~Global("C#RtD_bddelanc_to_4","GLOBAL",0)~ + @1 /* I have no more information to share right now. */ + intermediate_4
END

IF ~~ THEN update_delancie_01
SAY @3 /* Do you have anything else you want to share? */
%reply_options_inform_delancie%
+ ~GlobalLT("bd_plot","global",305)
Global("C#RtD_bddelanc_to_4","GLOBAL",0)~ + @1 /* I have no more information to share right now. */ + intermediate_4
+ ~GlobalGT("bd_plot","global",304)
GlobalLT("bd_plot","global",350)
AreaCheck("bd3000")~ + @1 /* I have no more information to share right now. */ + 31
+ ~OR(2)
Global("bd_plot","global",392)
Global("bd_plot","global",393)
AreaCheck("bd7300")~ + @1 /* I have no more information to share right now. */ EXTERN bdnederl move_to_camp
/*
+ ~!Global("bd_plot","global",393)
!Global("bd_plot","global",392)
Global("C#RtD_bddelanc_to_4","GLOBAL",2)~ + @1 /* I have no more information to share right now. */ + 31
*/
END

IF ~~ THEN update_delancie_02
SAY @4 /* ...It would be the only reasonable explanation for what she is planning, yes, although we were hoping she might have a more... magical approach to this than opening a direct portal. */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_03
SAY @5 /* A... a functioning portal to Avernus, right beneath the castle?! It can't be active just yet, or we would know about it. The question is how she is planning on activating it! */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_04
SAY @6 /* A functioning portal to Avernus, right beneath the castle - and it will pop right open with just your blood?! This is grave news. This is very grave, indeed! */
IF ~~ THEN + update_delancie_01
END

END //APPEND

CHAIN
IF ~~ THEN bddelanc update_delancie_05
@7 /* So the crusaders are being betrayed by Caelar and her priests to believe themselves invulnerable without any real divine support? */
== bddelanc IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @8 /* Considering they are planning to go into Avernus, this is alarming. They are mislead and betrayed - and it will be up to us to stop the fiends from entering this plane! */
END
IF ~~ THEN + update_delancie_01


APPEND bddelanc
IF ~~ THEN update_delancie_06
SAY @9 /* Caelar's followers are convinced these blessings make them invulnerable. They even do not falter from this beieve once we start interrogating. We need to keep our eyes open for more evidence. Knowing how strong the crusade will be is inevitable for our attempts to stop them. */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_07
SAY @10 /* He... *what*?!... So we *will* be facing fiends, a fiend master even - if we do not stop Caelar and her crusade in time. We need to intensify our efforts to weaken and sabotage the crusaders, <CHARNAME>. */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_08
SAY @11 /* Caelar doesn't seem to have as much hold of her crusade as she thinks she has. This is interesting information and one we should have an eye on. A crusade of this size being played by the leader's advisor adds to the threat it already poses. */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_09
SAY @12 /* Interesting. We need to know what plans that would be, and quickly. */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_10
SAY @26 /* ~Anything compromising Baldur's Gate's "Hero" could be endangering our mission. Are you sure he doesn't work for Caelar? We need to keep our eyes open for this intruder.~ */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_11
SAY @27 /* ~Of course your heritage would draw more attention, it's like flies being drawn to honey. I hope this intruder won't get in our way.~ */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_12
SAY @28 /* ~Well, I surely hope this intruder won't get in our way.~ */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_13
SAY @59 /* ~So she has personal reasons to see this through. I don't think that's a good thing - for us.~ */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_14
SAY @60 /* ~Interesting.~ */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_15
SAY @61 /* ~This is good to know.~ */
IF ~~ THEN + update_delancie_01
END

IF ~~ THEN update_delancie_16
SAY @67 /* ~We feared as much... cursed be that madwoman.~ */
IF ~~ THEN + update_delancie_01
END

END //APPEND


/* add reactions to Caelar's plans here in case they weren't clear before */
/*
IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #50387 /* ~I'm heartened to see you're still with us, <CHARNAME>. I didn't have a chance to ask earlier: How did you fare in the caverns beneath Dragonspear?~ [BD50387] */
  IF ~~ THEN REPLY #61314 /* ~I'm afraid I learned little of our enemy before I was forced out of the castle.~ */ GOTO 60
  IF ~  Global("bd_hephernann_talk_belhifet","global",1)
~ THEN REPLY #61315 /* ~A great darkness lurks in the heart of Caelar's light. The crusade is not what it seems.~ */ GOTO 60
  IF ~  Global("bd_hephernann_talk_belhifet","global",1)
~ THEN REPLY #61316 /* ~Caelar may be what she claims, but Hephernaan is no servant of the light.~ */ GOTO 60
END
*/

EXTEND_BOTTOM bddelanc 59
+ ~GlobalGT("C#RtD_KnowsPortalBlood","GLOBAL",1)
GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)~ + @13 /* Caelar's plan is to open a portal to Avernus using my Bhaalspawn blood. */ DO ~SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)~ + too_late
END

APPEND bddelanc
IF ~~ THEN too_late
SAY @14 /* By the gods of the... I knew we would be facing the real danger here. */
IF ~~ THEN + 60
END
END //APPEND



/* Marshal Nederlok */
/* bdnederl */

/* Marshal Nederlok in camp: add reply options here
bdnederl
IF ~  GlobalGT("bd_plot","global",304)
GlobalLT("bd_plot","global",350)
AreaCheck("bd3000")
~ THEN BEGIN 30 // from:
  SAY #43960 /* ~<CHARNAME>, good to see you.~ [BD43960] */
  IF ~  GlobalGT("bd_skie_plot","global",9)
GlobalLT("bd_nederlok_skie","locals",2)
~ THEN REPLY #60233 /* ~Skie's been located and returned safely to the camp, Marshal Nederlok.~ */ DO ~SetGlobal("bd_nederlok_skie","locals",2)
~ GOTO 38
  IF ~  Global("SDD303","GLOBAL",1)
~ THEN REPLY #58546 /* ~I bring news, Marshal. I discovered evidence of a traitor in camp. I found these notes and traced them back to the spy.~ */ GOTO 63
  IF ~  Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY #43961 /* ~You as well, Marshal Nederlok.~ */ GOTO 32
  IF ~  OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY #43961 /* ~You as well, Marshal Nederlok.~ */ GOTO 31
  IF ~  Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY #43962 /* ~I wish I could return the compliment, but I have much to do and no time to waste on idle chatter.~ */ GOTO 32
  IF ~  OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY #43962 /* ~I wish I could return the compliment, but I have much to do and no time to waste on idle chatter.~ */ GOTO 31
  IF ~  Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY #43963 /* ~I beg your pardon, Marshal. I've no time to tarry.~ */ GOTO 32
  IF ~  OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)
~ THEN REPLY #43963 /* ~I beg your pardon, Marshal. I've no time to tarry.~ */ GOTO 31
END
*/

EXTEND_BOTTOM bdnederl 30
%reply_options_inform_nederlok%
END

/* after coalition camp battle: Marshal Nederlok
bdnederl
IF ~  AreaCheck("bd3000")
Global("bd_plot","global",401)
~ THEN BEGIN 50 // from:
  SAY #38068 /* ~Good work. We've still got fighting in the east and west, but the bulk of Caelar's forces have been routed.~ [BD38068] */
  IF ~  !IsValidForPartyDialogue("KHALID")
~ THEN REPLY #38069 /* ~Glad to hear it. What now? ~ */ DO ~SetGlobal("bd_plot","global",402)
~ GOTO 51
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN REPLY #38069 /* ~Glad to hear it. What now? ~ */ DO ~SetGlobal("bd_plot","global",402)
~ EXTERN ~BDKHALIJ~ 38
  IF ~~ THEN REPLY #38070 /* ~Not a moment too soon. Arguably several minutes too late, but that's water under the bridge. ~ */ DO ~SetGlobal("bd_plot","global",402)
~ GOTO 51
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY #38071 /* ~Save the compliments, Nederlok. Tell me what I want to hear: Tell me we're taking the battle to Caelar's door. ~ */ DO ~SetGlobal("bd_plot","global",402)
~ GOTO 51
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY #38071 /* ~Save the compliments, Nederlok. Tell me what I want to hear: Tell me we're taking the battle to Caelar's door. ~ */ DO ~SetGlobal("bd_plot","global",402)
~ EXTERN ~BDMINSCJ~ 92
END
*/

EXTEND_BOTTOM bdnederl 50
%reply_options_inform_nederlok%
END

APPEND bdnederl
IF ~~ THEN update_nederlok_00
SAY @15 /* Anything else you could gather about Caelar and her advisor Hephernaan? */
%reply_options_inform_nederlok%
+ ~GlobalLT("bd_plot","global",401)
Global("bd_nederlok_skie","locals",0)
GlobalLT("bd_skie_plot","global",5)~ + @1 /* I have no more information to share right now. */ + 32
+ ~GlobalLT("bd_plot","global",401)
OR(2)
!Global("bd_nederlok_skie","locals",0)
!GlobalLT("bd_skie_plot","global",5)~ + @1 /* I have no more information to share right now. */ + 31
+ ~Global("bd_plot","global",401)~ + @1 /* I have no more information to share right now. */ + update_nederlok_after_campfight

END

IF ~~ THEN update_nederlok_01
SAY @16 /* So it is a lie she uses to blind her followers - and tries to intimidate us. This might be to our advantage when we'll have to face them at Dragonspear Castle. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_02
SAY @17 /* Interesting. Whether she has divine influence or higher sort remains a secret. We did not find any evidence on her followers, either, but we need to remain wary if we do not want to fight them unprepared. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_03
SAY @18 /* We should be. Her followers at least are preparing for it. We still do not know how she is even planning on achieving this. Let us know as soon as you gather more intel on this. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_04
SAY @19 /* Now it all makes sense. Seeing how she holds the castle for weeks now without her crusade marching anywhere makes it at least clear she doesn't seem to have the means to open it yet. We need to intensify our efforts to stop her before this happens. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_05
SAY @20 /* [Marshal Nederlok]The information you gathered is grave news, <CHARNAME>. The danger from Caelar's crusade is much more severe than the rampaging army we set out to stop! You did well to gather this intel in time. */ 
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_06
SAY @21 /* A fiend master! This is alarming to know. All we can do is to intensify our efforts to stop Caelar and her crusade before it comes to that. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_07
SAY @22 /* Is that so? We should stay on the lookout to what the crusade's real purpose is - behind all the "righteousness" Caelar tries to brand it with. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_08
SAY @23 /* It is good she didn't get her hands onto you and we should make sure it stays that way - I can't imagine her plans for you to be anything good. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_09
SAY @29 /* ~We can't have our hero being distracted by such folks. We will double our guards to prevent this happening in the future.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_10
SAY @30 /* ~Although your heritage drawing further attention was to be expected, this is unsettling. We need to watch out for this intruder.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_11
SAY @31 /* ~He seems to be sure of what he's doing. I fear there is little we could do at this point. Let's hope we will not be surprised unpleasently in the future.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_12
SAY @62 /* ~[Marshal Nederlok]I see. This gives her personal motive for what she is doing - this is not necessarily a bad thing, but it's surprising that this doesn't seem to be known by the crusaders.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_13
SAY @63 /* ~[Marshal Nederlok]This is interesting indeed, and most likely of high importance to this war.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_14
SAY @64 /* ~[Marshal Nederlok]Yes, Duke Jannath sent me a summary of what happened in the palace and the surprisingly weak poison that was used by the assassins. We need to watch out so whatever Caelar is planning will not come to pass.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_15
SAY @65 /* ~[Marshal Nederlok]Interesting.~ */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_16
SAY @68 /* Yes, her followers are surely preparing for it. We still do not know how she is even planning on achieving this. Let us know as soon as you gather more intel on this. */
IF ~~ THEN + update_nederlok_00
END

IF ~~ THEN update_nederlok_17
SAY @69 /* ~[Marshal Nederlok]Well, we suspected as much. Thank you for the confirmation.~ */
IF ~~ THEN + update_nederlok_00
END

/* transition back to reply options of state 50 */
IF ~~ THEN update_nederlok_after_campfight
SAY @24 /* ~[Marshal Nederlok]Then we should focus on finally defeating Caelar and her crusade. This camp is now secured.~ */
COPY_TRANS bdnederl 50
END

/* transition back to reply options of state 46 */
IF ~~ THEN move_to_camp
SAY @25 /* Let's get you back to the camp, <CHARNAME>. */
COPY_TRANS bdnederl 46
END
END //APPEND


/* after meeting with Caelar at Dead Men's Pass. */

/* add reply options here in case PC knew what Caelar was planning - but coalition officers did not! */
/*
bdnederl
IF ~  Global("bd_plot","global",392)
AreaCheck("bd7300")
~ THEN BEGIN 46 // from:
  SAY #37869 /* ~Let's get you back to the camp, <CHARNAME>. You're not safe here.~ [BD37869] */
  IF ~~ THEN REPLY #37870 /* ~What could she want with me? ~ */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 47
  IF ~  !IsValidForPartyDialogue("GLINT")
~ THEN REPLY #37871 /* ~I don't understand. Caelar tried to have me killed in Baldur's Gate. Now she tries to win me over? It makes no sense.~ */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 47
  IF ~  IsValidForPartyDialogue("GLINT")
~ THEN REPLY #37871 /* ~I don't understand. Caelar tried to have me killed in Baldur's Gate. Now she tries to win me over? It makes no sense.~ */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN ~BDGLINTJ~ 100
  IF ~~ THEN REPLY #37872 /* ~I'm as safe here as anywhere else in this wretched world. ~ */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 49
END
*/

EXTEND_BOTTOM bdnederl 46
++ @70 /* [PC reply]I have more information concerning Caelar's plans we need to discuss right now. */ //DO ~SetGlobal("bd_plot","global",393)~ 
EXTERN bddelanc update_delancie_01
END