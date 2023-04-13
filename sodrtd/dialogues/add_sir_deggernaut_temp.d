/* Sir Deggernaut. He will be always available for information transfer. */

BEGIN C#RtDdeg

IF ~Global("C#RtD_Deggernaut_introduction","GLOBAL",0)~ THEN first_greeting
SAY @200 /* Greetings, I am Sir Deggernaut, War Scribe and Communication Officer of the Flaming Fist forces. The Dukes decided to send me with you to monitor the progress of the coalition forces and keep the Dukes as well as our allies best informed at all times. I will be here if you have anything you want the Dukes or the other coalition officers to know. */
IF ~~ THEN DO ~SetGlobal("C#RtD_Deggernaut_introduction","GLOBAL",1)~ + information
END

IF ~AreaCheck("bd3000") GlobalLT("bd_plot","global",305)
Global("C#RtD_Degg_coalwaits","LOCALS",0)~ THEN officers_are_waiting
SAY @270 /* ~Ah, <CHARNAME>. In case you have more information, I will listen and pass it on right away, but the officers are waiting for you at the officers' tent, so please do not delay to go to them any longer than necessary.~ */
IF ~~ THEN DO ~SetGlobal("C#RtD_Degg_coalwaits","LOCALS",1)~ + information
END

IF ~GlobalGT("C#RtD_Deggernaut_introduction","GLOBAL",0)~ THEN information
SAY @201 /* Is there anything you want to inform about with regard to Caelar's crusade? */
++ @202 /* I have knowledge about the crusade's plans we need to talk about. */ + information_00
+ ~GlobalLT("C#RtD_Deggernaut_introduction","GLOBAL",2)~ + @203 /* Please tell me what the officers already know about Caelar and her plans. */ DO ~SetGlobal("C#RtD_Deggernaut_introduction","GLOBAL",2)~ + information_chain
+ ~Global("C#RtD_Deggernaut_introduction","GLOBAL",2)~ + @279 /* Please tell me everything the officers already know about Caelar and her plans. */ DO ~SetGlobal("C#RtD_OnlyOld","LOCALS",1) SetGlobal("C#RtD_Deggernaut_introduction","GLOBAL",2)~ + information_chain_first
+ ~Global("C#RtD_Deggernaut_introduction","GLOBAL",2)~ + @280 /* Please tell me what the officers know - but only things you didn't tell me yet.~ */ + information_chain_new
+ ~Global("C#RtD_Deggernaut_introduction","GLOBAL",2)~ + @281  /* What have you already told me what the officers know about Caelar's plans? Please repeat.~ */ DO ~SetGlobal("C#RtD_OnlyOld","LOCALS",2)~ + information_chain_old
++ @204 /* Not right now. */ + end
END

IF ~~ THEN information_00
SAY @205 /* Tell me everything. */
/* "C#RtD_CaelarBhaalChild" = 1 - PC heard rumors that Caelar is a child of Bhaal */
/* not considered. This is something the Dukes suspect from the start of SoD, no need to tell them. */
/* After knowing that she needs godly blood to open the portal and hearing rumors that she is a child of Bhaal. */
/* this reply option includes a variable change for the PC's knowledge */
+ ~Global("C#RtD_CaelarBhaalChild","GLOBAL",1)
OR(2)
	GlobalGT("C#RtD_KnowsPortalBlood","GLOBAL",2)
	GlobalGT("C#RtD_WantBhaalBlood","GLOBAL",1)
!Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + @223 /* ~I have reasons to believe that Caelar is no child of Bhaal.~ */ DO ~%Set_CheckCaelarBhaalChild_2_3%
SetGlobal("C#RtD_CaelarBhaalChild","GLOBAL",2) //no _SET
SetGlobal("C#RtD_CoalCaelarBhaalChild_SET","GLOBAL",2) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_06
/* "C#RtD_CaelarBhaalChild" = 2 - PC reasons / concludes / speculates that [rumors that Caelar is a child of Bhaal] is not true */
+ ~Global("C#RtD_CaelarBhaalChild","GLOBAL",2)
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + @223 /* ~I have reasons to believe that Caelar is no child of Bhaal.~ */ DO ~%Set_CheckCaelarBhaalChild_2_3%
SetGlobal("C#RtD_CoalCaelarBhaalChild","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_06
/* "C#RtD_CaelarBhaalChild" = 3 - PC knows that [rumors that Caelar is a child of Bhaal] is not true */
+ ~Global("C#RtD_CaelarBhaalChild","GLOBAL",3)
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",4)~ + @224 /* ~I know for sure that Caelar is no child of Bhaal.~ */ DO ~%Set_CheckCaelarBhaalChild_4_5%
SetGlobal("C#RtD_CoalCaelarBhaalChild","GLOBAL",4) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_CaelarGodBless" 1 - PC heard rumor about Caelar being divinely blessed */
/* not considered. This is something the Dukes suspect from the start of SoD, no need to tell them. */
/* "C#RtD_CaelarGodBless" 2 - PC knows that Caelar claims to be blessed by "the pantheon" / all gods /several gods */
/* not considered. The topic is dealt with via "C#RtD_CaelarProtection" */
/* "C#RtD_CaelarGodBless" 3 - PC knows that [Caelar claims to be blessed by "the pantheon" / all gods /several gods] is a lie */
/* not considered. The topic is dealt with via "C#RtD_CaelarProtection" */
/* "C#RtD_CaelarProtection" = 1 - PC heard rumor about Caelar/divine forces through Caelar protecting the crusade */
/* not considered. This is something the Dukes suspect from the start of SoD, no need to tell them. */
/* "C#RtD_CaelarProtection" = 2 - PC knows that her followers believe that the gods are protecting Caelar and them */
+ ~Global("C#RtD_CaelarProtection","GLOBAL",2)
GlobalLT("C#RtD_CoalCaelarProtection","GLOBAL",2)~ + @233 /* Caelar's followers seem to believe that the gods are protecting the crusade. */ DO ~%Set_CheckCaelarProtection_2_OR_3_OR_4%
SetGlobal("C#RtD_CoalCaelarProtection","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_02
/* "C#RtD_CaelarProtection" = 3 - PC watched Hormorn's "blessing" in Bridgefort camp */
+ ~Global("C#RtD_CaelarProtection","GLOBAL",3)
GlobalLT("C#RtD_CoalCaelarProtection","GLOBAL",4)~ + @207 /* I witnessed her priests doing a "blessing" while scouting her camp at Boareskyr Bridge. I didn't have the means to detect its reach or effectiveness, though. */ DO ~%Set_CheckCaelarProtection_2_OR_3_OR_4%
SetGlobal("C#RtD_CoalCaelarProtection","GLOBAL",4) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_02
/* "C#RtD_CaelarProtection" = 4 - PC knows that [the gods are protecting Caelar and them] is a lie */
+ ~Global("C#RtD_CaelarProtection","GLOBAL",4)
GlobalLT("C#RtD_CoalCaelarProtection","GLOBAL",5)~ + @206 /* I am pretty sure the "blessing" of the pantheon is a scam. I witnessed her priests doing it and could not detect any extraordinary divine influence. */ DO ~%Set_CheckCaelarProtection_5_OR_6%
SetGlobal("C#RtD_CoalCaelarProtection","GLOBAL",5) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_KnowsAunArgent" = 1 - PC knows that Caelar had an uncle named Aun and something happened */
/* not considered. Just because it's nothing the PC would need to tell the officers. */
/*  "C#RtD_KnowsAunArgent" = 2 - PC heard rumors about Caelar being disgraced from Aster Order at the same time as Aon vanished */
/* not considered. Just because it's nothing the PC would need to tell the officers. */
/*  "C#RtD_KnowsAunArgent" = 3 - PC knows that Caelar was in Avernus and came back at the same time Aun vanished */
/* only available if it's not already clear that freeing him is Caelar's main purpose [GlobalLT("C#RtD_CaelarPlan","GLOBAL",5)]. If that is known, the info about her uncle in Avernus will be given there */
+ ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",5)
Global("C#RtD_KnowsAunArgent","GLOBAL",3)
GlobalLT("C#RtD_CoalKnowsAunArgent","GLOBAL",3)~ + @234 /* ~Caelar was trapped in Avernus as a child. She returned eventually, but at the same time an uncle of hers vanished mysteriously.~ DO ~%Set_CheckKnowsAunArgent_3_OR_4% SetGlobal("C#RtD_CoalKnowsAunArgent","GLOBAL",3) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ */ + information_02
/*  "C#RtD_KnowsAunArgent" = 4 - PC knows that Aun took place for Caelar in Avernus */
/* only available if it's not already clear that freeing him is Caelar's main purpose [GlobalLT("C#RtD_CaelarPlan","GLOBAL",5)]. If that is known, the info about her uncle in Avernus will be given there */
+ ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",5)
Global("C#RtD_KnowsAunArgent","GLOBAL",4)
GlobalLT("C#RtD_CoalKnowsAunArgent","GLOBAL",5)~ + @225 /* ~I know that Caelar's uncle Aun Aster, respected member of the Order, is trapped in Avernus after freeing Caelar from it.~ DO ~%Set_CheckKnowsAunArgent_5_OR_6% SetGlobal("C#RtD_CoalKnowsAunArgent","GLOBAL",5) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ */ + information_06
/* "C#RtD_CaelarPlan" = 1 - PC acknowledges the existance of the crusade which is rampaging through the lands */
/* not considered. This is something the Dukes suspect from the start of SoD, no need to tell them. */
/* "C#RtD_CaelarPlan" = 2 - PC knows that they want to free souls from Dragonspear War from Avernus */
/* only considered if portal beneath DC is not known [Global("C#RtD_KnowsPortalBlood","GLOBAL",0)], otherweise the PC will put 2+2 together (see below) */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",0)
Global("C#RtD_CaelarPlan","GLOBAL",2)
GlobalLT("C#RtD_CoalCaelarPlan","GLOBAL",2)~ + @222 /* It seems the crusaders want to free souls trapped during the Dragonspear Wars - from Avernus. */ DO ~%Set_CheckCaelarPlan_2_OR_3% SetGlobal("C#RtD_CoalCaelarPlan","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_CaelarPlan" = 3 - PC knows that they are planning on marching into Avernus */
+ ~Global("C#RtD_CaelarPlan","GLOBAL",3)
GlobalLT("C#RtD_CoalCaelarPlan","GLOBAL",4)~ + @208 /* You are aware that Caelar *will* march her crusade into Avernus, though? */ DO ~%Set_CheckCaelarPlan_4_OR_5% SetGlobal("C#RtD_CoalCaelarPlan","GLOBAL",4) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* if PC knows that Caelar is planning on marching into Avernus AND Hephernaan is working for a fiend, they can speculate that they are planning on opening a portal to Avernus */
/* this reply option includes a variable change for the PC's knowledge */
+ ~Global("C#RtD_CaelarPlan","GLOBAL",3)
GlobalGT("C#RtD_HephernaanFiend","GLOBAL",1)
Global("C#RtD_KnowsPortalBlood","GLOBAL",0) //so reply options will not be doubled
!Global("C#RtD_CoalCaelarPlan","GLOBAL",6)~ + @278 /* I have reasons to believe that Caelar is planning on opening a portal to Avernus to march her army into it. */ DO ~%Set_CheckCaelarPlan_6_OR_7%
SetGlobal("C#RtD_CaelarPlan","GLOBAL",4) //no _SET
SetGlobal("C#RtD_CoalCaelarPlan_SET","GLOBAL",6) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_CaelarPlan" = 4 - PC knows that they are planning on opening a portal at Dragonspear Castle to enter Avernus */
+ ~Global("C#RtD_CaelarPlan","GLOBAL",4)
GlobalLT("C#RtD_CoalCaelarPlan","GLOBAL",6)~ + @228 /* I know for sure that Caelar is planning on opening a portal to Avernus to march her army into it. */ DO ~%Set_CheckCaelarPlan_6_OR_7% SetGlobal("C#RtD_CoalCaelarPlan","GLOBAL",6) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_CaelarPlan" = 5 - PC speculates that Caelar wants to save her uncle Aun Argent from Avernus */
/* After knowing that she is planning on freeing souls from Avernus and knowing that Aun went to Avernus for her. */
/* this reply option includes a variable change for the PC's knowledge */
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",1) GlobalLT("C#RtD_CaelarPlan","GLOBAL",5)
GlobalGT("C#RtD_KnowsAunArgent","GLOBAL",3)
!Global("C#RtD_CoalCaelarPlan","GLOBAL",8)~ + @226 /* ~I suspect that Caelar is marching her Crusade into Avernus to free her uncle Aun who is trapped there in her stead.~ */ DO ~%Set_CheckCaelarPlan_8_OR_9%  
SetGlobal("C#RtD_CaelarPlan","GLOBAL",5) //no _SET
SetGlobal("C#RtD_CoalCaelarPlan_SET","GLOBAL",8)  
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* considered with "C#RtD_CaelarPlan" = 6 */
/* "C#RtD_CaelarPlan" = 6 - PC knows that the whole purpose of the crusade is all for Aun Argent */
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",4)
GlobalLT("C#RtD_CoalCaelarPlan","GLOBAL",8)~ + @226 /* ~I suspect that Caelar is marching her Crusade into Avernus to free her uncle Aun who is trapped there in her stead.~ */ DO ~%Set_CheckCaelarPlan_8_OR_9% SetGlobal("C#RtD_CoalCaelarPlan","GLOBAL",8) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_KnowsPortalBlood" = 1 - PC heard about a portal/rift in Dragonspear Castle */
/* only important if PC also knows that Caelar wants to reach into Avernus [GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)] */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",1)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",0)
GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",1)~ + @209 /* I have information about a portal to Avernus beneath Dragonspear Castle - I am pretty sure that's what she is going for to free the souls out of it. */ DO ~%Set_CheckKnowsPortalBlood_1_OR_2% SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_KnowsPortalBlood" = 2 - PC knows that blood of Bhaal child is needed/sufficient to open portal to Avernus under DC */
/* only important if PC also knows that Caelar wants to reach into Avernus [GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)] */
/* this reply option includes a variable change for the PC's knowledge */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",1)
Global("C#RtD_FoundTreatise","GLOBAL",1)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",1)
!Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)~ + @210 /* Oh yes. I have information about a portal to Avernus beneath Dragonspear Castle which can be opened with blood of a god's direct decendant - my Bhaal child blood, for example. I am sure that's what she's going for! */ DO ~%Set_CheckKnowsPortalBlood_5_OR_6%
SetGlobal("C#RtD_KnowsPortalBlood","GLOBAL",3) //no _SET
//SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",2) will be set by script
SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",5) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_03
/* this reply option includes a variable change for the PC's knowledge */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",2)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",1)
!Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)~ + @210 /* Oh yes. I have information about a portal to Avernus beneath Dragonspear Castle which can be opened with blood of a god's direct decendant - my Bhaal child blood, for example. I am sure that's what she's going for! */ DO ~%Set_CheckKnowsPortalBlood_5_OR_6%
SetGlobal("C#RtD_KnowsPortalBlood","GLOBAL",3) //no _SET
//SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",2) will be set by script
SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",5) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_03
/* "C#RtD_KnowsPortalBlood" = 3 - PC reasons / concludes / speculates that Caelar / Hephernaan want PC's blood for [open portal to Avernus] -- also for [C#RtD_WantBhaalBlood = 2] */
/* in case PC already phrased conclusion elsewhere that this is what Caelar will be going for, tell officers */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",3)
GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)~ + @210 /* Oh yes. I have information about a portal to Avernus beneath Dragonspear Castle which can be opened with blood of a god's direct decendant - my Bhaal child blood, for example. I am sure that's what she's going for! */ DO ~%Set_CheckKnowsPortalBlood_5_OR_6% SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",5) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_03
/* "C#RtD_KnowsPortalBlood" = 4 - PC knows that Caelar / Hephernaan want PC's blood for [open portal to Avernus] -- also for [C#RtD_WantBhaalBlood = 3] */
/* did not tell officers yet */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",4)
GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)~ + @231 /* There is a portal to Avernus beneath Dragonspear Castle which can be opened with my Bhaal child blood, and I know that this is what Caelar is planning. */ DO ~%Set_CheckKnowsPortalBlood_7_OR_8% SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",7) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_03
/* "C#RtD_KnowsPortalBlood" = 4 - PC knows that Caelar / Hephernaan want PC's blood for [open portal to Avernus] -- also for [C#RtD_WantBhaalBlood = 3] */
/* officers already heard about it/suspect it themselves */
+ ~Global("C#RtD_KnowsPortalBlood","GLOBAL",4)
GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)
!Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",7)~ + @232 /* I know for sure that Caelar is planning on opening the portal to Avernus beneath Dragonspear Castle using my Bhaal blood. */ DO ~%Set_CheckKnowsPortalBlood_7_OR_8% SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",7) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_06
/* "C#RtD_HephernaanIdentity"
1 - PC knows Hephernaan by name and face and that he is Caelar's advisor */
/* not considered. Just because it's nothing the PC would need to tell the officers. */
/* "C#RtD_HephernaanName" = 1 - PC heard Hephernaan's name in connection with Caelar */
/* not considered. Just because it's nothing the PC would need to tell the officers. */
/* "C#RtD_HephernaanVisual" */
/* 1 - PC knows that [a man looking like] Hephernaan is working with Umbral/a fiend */
/* not considered. Just because it's nothing the PC would need to tell the officers. */
/* Global("C#RtD_HephernaanVisual","GLOBAL",1): PC knows that [a man looking like] Hephernaan is working with Umbral Accord
Global("C#RtD_HephernaanIdentity","GLOBAL",1) knows who Hephernaan is. */
/* this reply option includes a variable change for the PC's knowledge */
+ ~Global("C#RtD_HephernaanVisual","GLOBAL",1)
Global("C#RtD_HephernaanIdentity","GLOBAL",1)
Global("C#RtD_CoalHephernaanVisual","GLOBAL",0)~ + @293 /* ~I have reasons to believe that Hephernaan has own, darker plans. He seems in liege with some organisation called "Umbral Accord", and they seem to be powerful.~ */ DO 
~%Set_CheckHephernaanVisual_GT_0%
SetGlobal("C#RtD_HephernaanVisual","GLOBAL",2) //no _SET
SetGlobal("C#RtD_CoalHephernaanVisual","GLOBAL",1) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* "C#RtD_HephernaanVisual" = 2 - PC knows that Hephernaan [who is Caelar's advisor] is working with Umbral Accord */
+ ~Global("C#RtD_HephernaanVisual","GLOBAL",2)
Global("C#RtD_CoalHephernaanVisual","GLOBAL",0)~ + @293 /* ~I have reasons to believe that Hephernaan has own, darker plans. He seems in liege with some organisation called "Umbral Accord", and they seem to be powerful.~ */ DO
~%Set_CheckHephernaanVisual_GT_0%
SetGlobal("C#RtD_CoalHephernaanVisual","GLOBAL",1) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* "C#RtD_CaelarBetrayal" 
1 - PC knows that Caelar is betrayed by someone in her crusade, that there is a deeper level to the crusade's purpose she has no influence on */
/* not considered as an own reply option. Is dealt with via "C#RtD_HephernaanBetrayal" */
/* "C#RtD_HephernaanBetrayal" = 1 - PC knows that [a man called] Hephernaan is betraying Caelar */
/* not considered, PC wouldn't know it's important */
/* "C#RtD_HephernaanBetrayal" = 2 - PC knows that Hephernaan [who is Caelar's advisor] is betraying Caelar */
/* only in case PC doesn't know that Hephernaan is working for a fiend [Global("C#RtD_HephernaanFiend","GLOBAL",0)], otherwise it's considered there. */
+ ~Global("C#RtD_HephernaanFiend","GLOBAL",0)
Global("C#RtD_HephernaanBetrayal","GLOBAL",2)
Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",0)~ + @212 /* I have reasons to believe that Caelar's advisor Hephernaan is betraying Caelar. He has his own, dark plans with this crusade. */ DO ~%Set_CheckHephernaanBetrayal_1_OR_2% %Set_CheckCaelarBetrayal_1_OR_2% SetGlobal("C#RtD_CoalHephernaanBetrayal","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_HephernaanFiend" = 1 - PC knows that [a man being called] Hephernaan is working for a fiend to open the portal */
/* not considered. Just because it's nothing the PC would need to tell the officers. */
/* "C#RtD_HephernaanFiend" = 2 - PC knows that Hephernaan [who is Caelar's advisor] is working for a fiend to open the portal */
/* considered with "C#RtD_HephernaanFiend" = 3 */
/* "C#RtD_HephernaanFiend" = 3 - PC knows that Hephernaan [who is Caelar's advisor] is working for Belhifet */
+ ~GlobalGT("C#RtD_HephernaanFiend","GLOBAL",1)
Global("C#RtD_CoalHephernaanFiend","GLOBAL",0)~ + @211 /* I have disturbing news. Caelar's advisor Hephernaan is apparently working for a fiend who is planning on crossing into the Material Prime! */ DO ~%Set_CheckHephernaanFiend_GT_0%
%Set_CheckHephernaanBetrayal_1_OR_2% %Set_CheckCaelarBetrayal_1_OR_2%
SetGlobal("C#RtD_CoalHephernaanFiend","GLOBAL",1) SetGlobal("C#RtD_CoalHephernaanBetrayal","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_04
/* "C#RtD_WeakPoison" = 1 - PC knows that poison from palace assassins was too weak to kill */
/* not considered. This is something the Dukes tell the PC, not the other way around. */
/* "C#RtD_CaelarKidnap" = 1 - PC discussed with someone/NPCs that Caelar's assassin probably wanted to kidnap PC in Palace (instead of killing) */
/* After hearing that the poison was too weak: PC can suspect that Caelar is trying to kidnap them, not kill. */
/* (I'll include a WIS/INT check here like in the Stat Based Reactions from Themed Tweaks.) */
/* this reply option includes a variable change for the PC's knowledge */
+ ~Global("C#RtD_CaelarKidnap","GLOBAL",0)
Global("C#RtD_WeakPoison","GLOBAL",1)
OR(2) CheckStatGT(Player1,15,WIS) CheckStatGT(Player1,15,INT)~ + @227 /* I think Caelar tried to have me kidnapped in the palace, not killed. */ DO ~%Set_CheckCaelarWantsPC_1_OR_2%  %Set_CheckCaelarKidnap_1_OR_2%
SetGlobal("C#RtD_CaelarKidnap","GLOBAL",1) //no _SET
//SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",1) will be set by script
SetGlobal("C#RtD_CoalCaelarWantsPC_SET","GLOBAL",1)
SetGlobal("C#RtD_CoalCaelarKidnap_SET","GLOBAL",1) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
+ ~Global("C#RtD_CaelarKidnap","GLOBAL",1)
Global("C#RtD_CoalCaelarKidnap","GLOBAL",0)~ + @227 /* I think Caelar tried to have me kidnapped in the palace, not killed. */ DO ~%Set_CheckCaelarKidnap_1_OR_2% SetGlobal("C#RtD_CaelarKidnap","GLOBAL",1) SetGlobal("C#RtD_CoalCaelarKidnap","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* "C#RtD_CaelarWantsPC" = 1 - PC assumes that Caelar wants to capture the PC [alive] */
/* only considered if PC doesn't know That Caelar wants the PC's blood yet [Global("C#RtD_WantBhaalBlood","GLOBAL",0)]*/
+ ~Global("C#RtD_CaelarWantsPC","GLOBAL",1)
Global("C#RtD_WantBhaalBlood","GLOBAL",0)
Global("C#RtD_CoalCaelarWantsPC","GLOBAL",0)
~ + @229 /* I suspect that Caelar wants me alive, but I don't know what for. */ DO ~%Set_CheckCaelarWantsPC_1_OR_2% SetGlobal("C#RtD_CoalCaelarWantsPC","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* "C#RtD_CaelarWantsPC" = 2 - PC Knows that Caelar has plans for the PC / wants the PC for [something] */
/* only considered if PC doesn't know That Caelar wants the PC's blood yet [Global("C#RtD_WantBhaalBlood","GLOBAL",0)]*/
+ ~Global("C#RtD_CaelarWantsPC","GLOBAL",2)
Global("C#RtD_WantBhaalBlood","GLOBAL",0)
GlobalLT("C#RtD_CoalCaelarWantsPC","GLOBAL",3)
~ + @230 /* I know for sure that Caelar wants me alive, but still not what for. */ DO ~%Set_CheckCaelarWantsPC_3_OR_4% SetGlobal("C#RtD_CoalCaelarWantsPC","GLOBAL",3) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* "C#RtD_WantBhaalBlood" = 1 - PC knows that Caelar / Hephernaan want the PC's Bhaal child blood [for something] */
+ ~Global("C#RtD_WantBhaalBlood","GLOBAL",1)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",0)~ + @213 /* I know for sure that Caelar has some use for me or my Bhaal blood. */ DO ~%Set_CheckWantBhaalBlood_1_OR_2% SetGlobal("C#RtD_CaelarKidnap_SET","GLOBAL",1)
SetGlobal("C#RtD_CoalWantBhaalBlood","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_01
/* "C#RtD_WantBhaalBlood" = 2 - PC reasons / concludes / speculates that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal -- also for [C#RtD_KnowsPortalBlood = 3] */
/* already covered for C#RtD_KnowsPortalBlood = 3 */
/* "C#RtD_WantBhaalBlood" = 3 - PC knows that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal -- also for [C#RtD_KnowsPortalBlood = 4] */
/* already covered for C#RtD_KnowsPortalBlood = 4 */
/* Visits of Hooded Man */
/* "C#RtD_KnowsHoodedMan" = 1 - PC knows that Hooded Man is stalking PC because of Bhaal heritage */
/* "C#RtD_KnowsHoodedMan" = 2 - PC knows that Hooded Man killed Skie */
/* "C#RtD_MetHoodedMan" = 1 - PC met Hooded Man once */
/* "C#RtD_MetHoodedMan" = 2 - PC met Hooded Man more than once */
/* "C#RtD_KnowsHoodedMan" and "C#RtD_MetHoodedMan" are considered together: */
/* hooded man visited once. No knowledge about Bhaal spawn powers being motive for visits. 
PC did not tell about his visit yet. */
+ ~Global("C#RtD_MetHoodedMan","GLOBAL",1)
Global("C#RtD_KnowsHoodedMan","GLOBAL",0)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)~ + @214 /* Something else - I received a visitor. A hooded man turned up in rather private surroundings. He seemed to surpass any security easily. */ DO ~%Set_CheckMetHoodedMan_1_OR_2% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* hooded man visited several times. No knowledge about Bhaal spawn powers being motive for visits. 
PC did not tell about his visits yet. */
+ ~GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)
Global("C#RtD_KnowsHoodedMan","GLOBAL",0)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)~ + @215 /* Something else - I am being stalked by a hooded man who turns up in rather private surroundings. He seems to surpass any security easily. */ DO ~%Set_CheckMetHoodedMan_3_OR_4% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",3) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* hooded man visited several times. No knowledge about Bhaal spawn powers being motive for visits. 
PC only told about his first visit. */
+ ~GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)
Global("C#RtD_KnowsHoodedMan","GLOBAL",0)
GlobalLT("C#RtD_CoalMetHoodedMan","GLOBAL",3)~ + @216 /* Something else - I am being stalked by the hooded man I mentioned already. He visited me more than once now. */ DO ~%Set_CheckMetHoodedMan_3_OR_4% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",3) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* hooded man visited once. PC knows about Bhaal spawn powers being motive for visits. 
PC did not tell about his visit yet. */
+ ~Global("C#RtD_MetHoodedMan","GLOBAL",1)
Global("C#RtD_KnowsHoodedMan","GLOBAL",1)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)~ + @217 /* Something else - I received a visitor. A hooded man turned up in rather private surroundings. He seemed to surpass any security easily. And I know for sure that he is interested in my Bhaal heritage. */ DO ~%Set_CheckMetHoodedMan_1_OR_2% %Set_CheckKnowsHoodedMan_1_OR_2% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",1) SetGlobal("C#RtD_CoalKnowsHoodedMan","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* hooded man visited several times. PC knows about Bhaal spawn powers being motive for visits. 
PC did not tell about his visits yet. */
+ ~GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)
Global("C#RtD_KnowsHoodedMan","GLOBAL",1)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)~ + @218 /* Something else - I am being stalked by a hooded man who turns up in rather private surroundings. He seems to surpass any security easily. And I know for sure that he is interested in my Bhaal heritage. */ DO ~%Set_CheckMetHoodedMan_3_OR_4% %Set_CheckKnowsHoodedMan_1_OR_2% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",3) SetGlobal("C#RtD_CoalKnowsHoodedMan","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_05
/* hooded man visited once. PC knows about Bhaal spawn powers being motive for visits. 
PC already told about his first visit. */
/* + hooded man visited several times. PC knows about Bhaal spawn powers being motive for visits. 
PC already told about his repeating visits. */
+ ~!Global("C#RtD_MetHoodedMan","GLOBAL",0)
Global("C#RtD_KnowsHoodedMan","GLOBAL",1)
!Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)
Global("C#RtD_CoalKnowsHoodedMan","GLOBAL",0)~ + @219 /* Regarding the hooded man I mentioned earlier - I know for sure that he is interested in my Bhaal heritage. */ DO ~%Set_CheckKnowsHoodedMan_1_OR_2% SetGlobal("C#RtD_CoalKnowsHoodedMan","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_06
/* hooded man visited several times. PC knows about Bhaal spawn powers being motive for visits. 
PC only told about his first visit. */
+ ~GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)
Global("C#RtD_KnowsHoodedMan","GLOBAL",1)
OR(2)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",1)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",2)
Global("C#RtD_CoalKnowsHoodedMan","GLOBAL",0)~ + @220 /* Regarding the hooded man I mentioned earlier - he visited me more than once now. And I know for sure that he is interested in my Bhaal heritage. */ DO ~%Set_CheckMetHoodedMan_3_OR_4% %Set_CheckKnowsHoodedMan_1_OR_2% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",3) SetGlobal("C#RtD_CoalKnowsHoodedMan","GLOBAL",1) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_06
/* hooded man visited several times. 
PC already tol about Bhaal spawn powers being motive for visits. 
PC only told about his first visit. */
+ ~GlobalGT("C#RtD_MetHoodedMan","GLOBAL",1)
!Global("C#RtD_KnowsHoodedMan","GLOBAL",0)
OR(2)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",1)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",2)
!Global("C#RtD_CoalKnowsHoodedMan","GLOBAL",0)~ + @221 /* Regarding the hooded man I mentioned earlier - he visited me more than once now. */ DO ~%Set_CheckMetHoodedMan_3_OR_4% SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",3) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + information_06
++ @1 /* I have no more information to share right now. */ + end
END

IF ~~ THEN information_01
SAY @264 /* You did well gathering this intel. I will inform the officers as well as the Dukes in Baldur's Gate. */
IF ~~ THEN + information_00
END

IF ~~ THEN information_02
SAY @265 /* I see. */
IF ~~ THEN + information_00
END

IF ~~ THEN information_03
SAY @266 /* Most shocking indeed - but now we know why Caelar is holding the castle. */
IF ~~ THEN + information_01
END

IF ~~ THEN information_04
SAY @267 /* This has potential to get out of hand if we do not move quickly. */
IF ~~ THEN + information_01
END

IF ~~ THEN information_05
SAY @268 /* I see why this is unsettling. I will inform the Dukes and coalition officers about this. */ 
IF ~~ THEN + information_00
END

IF ~~ THEN information_06
SAY @269 /* I see. I will inform the Dukes and coalition officers about this. */ 
IF ~~ THEN + information_00
END

IF ~~ THEN information_07
SAY @262 /* Let us know immediately if you'll gather more detailed information. */ 
IF ~~ THEN EXIT
END

IF ~~ THEN information_chain
SAY @272 /* With pleasure. Since it's the first time I'll list everything, regardless of whether we already talked about it. */ 
IF ~~ THEN + information_chain_first
END

IF ~~ THEN end
SAY @271 /* See you later then, and take care of yourself. */
IF ~~ THEN EXIT
END