/*
bdcorwin
IF ~~ THEN BEGIN 7 // from: 6.3
  SAY #56826 /* ~If we lose you, we lose our best chance of taking Dragonspear Castle. If something happens to you, it's best I be there to take the strike in your place.~ */
  IF ~~ THEN GOTO 8
END
*/
I_C_T bdcorwin 7 C#RtD_bdcorwin_7
== bdcorwin IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1500 /* [Captain Corwin]And - we all know what would happen if the crusade would get their hands on you. I admit that's a strong motivation to ensure your safety as well, <CHARNAME>. */
END



/* add further reactions to the knowledge about the crusade's purpose and / or Hephernaan's betrayal, portal to Avernus etcpp.
-coalition officers will react to the knowledge that the crusade is planning on marching into Avernus
-crusader officers will want to know how Caelar is "protecting" her crusade in this endeavor - can they really pull it off fighting the fiends?
*/

/* big coalition camp: Dukes know now at least that:
"C#RtD_CoalCaelarGodBless" = 3: know that Caelar claims to be blessed by "the pantheon" / all gods /several gods - heard it elsewhere
"C#RtD_CoalCaelarProtection" = 3: know that her followers believe that the gods are protecting Caelar and them
"C#RtD_CoalCaelarPlan" = 3: know that they want to free souls from Dragonspear War from Avernus - heard it elsewhere
"C#RtD_CoalCaelarBhaalChild" = 3: speculate that [rumors that Caelar is a child of Bhaal] is not true - heard it elsewhere
*/

/* there is three cases where the officers will all three talk about the findings:
-portal and needed Bhaalspawn blood is known the first time CHARNAME speaks to officers in big coalition camp: try to use as much of the original dialogue as possible
-PC talks ot either De Lancie or Nederlok: cutscene will bring officers together, after all information is done cutscene brings group back to original place
-after the parley at the Dead Man's pass where all three officers are at one place again: after the hysterics, the dialogue will circle back to the transactions of bdnederl 46 (via COPY_TRANS).
*/




/* bdnederl: make a comment in case the officers know about the portal and the blood needed to open it. */
/*
IF ~~ THEN BEGIN 4 // from: 3.0 6.0 7.0
  SAY #37446 /* ~Go get settled in now. When you're ready, come see me and the other commanders at the large tent south of here.~ [BD37446] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 138
END
*/
I_C_T bdnederl 4 C#RtD_bdnederl_4
== bdnederl IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1501 /* [Marshal Nederlok]Knowledge about the portal beneath the castle and your blood needed to open it set us on highest alert, <CHARNAME>. Do come to the commanders' tent soon. */
END

/*
IF ~~ THEN BEGIN 16 // from: 15.0 18.0 22.0
  SAY #37484 /* ~Go get settled in now. After you've done that, come see me and the other city commanders at the large tent south of here.~ [BD37484] */
  IF ~~ THEN DO ~AddJournalEntry(59777,QUEST)
~ EXIT
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN DO ~AddJournalEntry(59777,QUEST)
~ EXTERN ~BDVOGHIJ~ 22
  IF ~  Global("bd_nederlok_mkhiin","bd3000",1)
~ THEN DO ~AddJournalEntry(59779,INFO)
AddJournalEntry(59777,QUEST)
~ EXIT
  IF ~  Global("bd_nederlok_mkhiin","bd3000",1)
IsValidForPartyDialogue("VOGHILN")
~ THEN DO ~AddJournalEntry(59779,INFO)
AddJournalEntry(59777,QUEST)
~ EXTERN ~BDVOGHIJ~ 22
END
*/
I_C_T bdnederl 16 C#RtD_bdnederl_16
== bdnederl IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1501 /* [Marshal Nederlok]Knowledge about the portal beneath the castle and your blood needed to open it set us on highest alert, <CHARNAME>. Do come to the commanders' tent soon. */
END

/* bddelanc 3: interject here in case officers already know about portal and Bhaal blood */
/*
IF ~~ THEN BEGIN 3 // from:
  SAY #37515 /* ~Haither, please, show a LITTLE decorum...~ [BD37515] */
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~BDDORNJ~ 40
  IF ~  !IsValidForPartyDialogue("DORN")
~ THEN GOTO 4
END
*/
/* after Dorn's interjection:
IF ~~ THEN BEGIN 7 // from:
  SAY #37536 /* ~You are most perceptive. And, loath though I am to agree with her, General Stonehand has a point.~ [BD37536] */
  IF ~~ THEN GOTO 4
END
*/

INTERJECT bddelanc 3 C#RtD_bddelanc_to_4
/* universal line: for all cases */
== bddelanc IF ~!IsValidForPartyDialogue("DORN")~ THEN @1502 /* [Torsin De Lancie]Now that you are here, we need to stop Caelar - now more than ever. */ 
END
IF ~~ THEN + catch_up

INTERJECT bddelanc 7 C#RtD_bddelanc_to_4
/* universal line: for all cases */
== bddelanc @1502 /* [Torsin De Lancie]Now that you are here, we need to stop Caelar - now more than ever. */ 
END
IF ~~ THEN + catch_up

CHAIN
IF ~~ THEN bddelanc catch_up
@1503 /* [Torsin De Lancie]Let us gather what we know. It is all most disturbing news. */
/* PC did not tell them the crusade's purpose */
== bddelanc IF ~!Global("C#RtD_CoalCaelarPlan","GLOBAL",2)
!Global("C#RtD_CoalCaelarPlan","GLOBAL",4)
!Global("C#RtD_CoalCaelarPlan","GLOBAL",6)
!Global("C#RtD_CoalCaelarPlan","GLOBAL",8)
!Global("C#RtD_CoalCaelarPlan","GLOBAL",10)~ THEN @1504 /* [Torsin De Lancie]Caelar's crusade is planning on freeing souls from Avernus - *this* is the crusade's main purpose! */ DO ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* PC did tell them the crusade's purpose */
== bddelanc IF ~OR(5)
Global("C#RtD_CoalCaelarPlan","GLOBAL",2)
Global("C#RtD_CoalCaelarPlan","GLOBAL",4)
Global("C#RtD_CoalCaelarPlan","GLOBAL",6)
Global("C#RtD_CoalCaelarPlan","GLOBAL",8)
Global("C#RtD_CoalCaelarPlan","GLOBAL",10)~ THEN @1505 /* [Torsin De Lancie]As we already know, the crusade's main purpose is to free souls from Avernus. */ DO ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* already know about planning on marching into Avernus, not about portal */
== bddelanc IF ~OR(2) Global("C#RtD_CoalCaelarPlan","GLOBAL",4) Global("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN @1506 /* [Torsin De Lancie]And for this, she will do no less than march her crusade into Avernus. */
/* already know about Caelar planning on opening portal to Avernus beneath DC */
== bddelanc IF ~GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN @1507 /* [Torsin De Lancie]And for this, she will do no less than open a portal and march her crusade into Avernus. */
/* do not know more than usual: know that Caelar proclaims protection be the gods, no details */
== bddelanc IF ~GlobalLT("C#RtD_CoalCaelarProtection","GLOBAL",4)~ THEN @1508 /* [Torsin De Lancie]The followers believe to be protected by "the gods" - Caelar herself apparently proclaims to be blessed not by one god, but the whole pantheon herself! */
/* know that Caelar's proclamation of the gods' protection is probably a lie */
== bddelanc IF ~GlobalGT("C#RtD_CoalCaelarProtection","GLOBAL",3)~ THEN @1509 /* [Torsin De Lancie]The followers believe to be protected by "the gods" - Caelar herself proclaiming to be blessed not by one god, but the whole pantheon herself. We already know that this is a scam. */
/* either do not know about dormant portal or that "godly protection" is a scam */
== bddelanc IF ~OR(2) GlobalLT("C#RtD_CoalCaelarProtection","GLOBAL",4)
GlobalLT("C#RtD_CoalCaelarPlan","GLOBAL",6)~ THEN @1510 /* [Torsin De Lancie]We need more information as to how Caelar believes she can pull this off. We will come to this later. */
/* didn't hear from PC that Caelar is no child of Bhaal */
== bddelanc IF ~!Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)
!Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",4)~ THEN @1511 /* [Torsin De Lancie]At least we have information now that lets us believe that Caelar is no child of Bhaal herself. */ DO ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* know from PC that Caelar is no child of Bhaal */
== bddelanc IF ~OR(2)
Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)
Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",4)~ THEN @1512 /* [Torsin De Lancie]We were told that you gathered information that Caelar is no child of Bhaal herself. */
/* in case they do not know about the portal at DC yet */
== bdnederl IF ~GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)~ THEN @1513 /* [Marshal Nederlok]This might be an information of no greater relevance to you, but we assure you that it strengthened our soldiers' morale to know that we are not going against a second Sarevok here. */
== bdstoneh IF ~GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)~ THEN @1514 /* [General Stonehand]Maybe if she were, troop's morale wouldn't be so shaken by the Bhaal signs appearing around your city's hero. */
== bdnederl IF ~GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)~ THEN @1515 /* [Marshal Nederlok]General Stonehand - please. */
/* only know Caelar wants the PC's blood, not what for */
== bddelanc IF ~GlobalLT("C#RtD_CoalWantBhaalBlood","GLOBAL",3)
OR(3)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",1)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",2)
GlobalGT("C#RtD_CoalCaelarKidnap","GLOBAL",0)~ THEN @1516 /* [Torsin De Lancie]This might be a clue as to why Caelar has such an interest in getting her hands onto you - alive. */
/* they already know or speculate that Caelar needs the PC's blood to open portal */
== bddelanc IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1517 /* [Torsin De Lancie]We also know what she needs you for - your blood, to be precise. She needs your blood to open the portal to Avernus beneath Dragonspear Castle! */
/* in case they do know about portal to Avernus beneath DC they will speculate about PC's blood - do not now that PC's blood is wanted by Caelar/Hephernaan yet Note: variable will be set directly because we checked before doing so
*/
== bddelanc IF ~OR(2)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",3)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1518 /* [Torsin De Lancie]This is important news, as it clears Caelar's motivation with regard to you, <CHARNAME>. It is evident she needs your blood to open the portal to Avernus beneath Dragonspear Castle! */ DO ~SetGlobal("C#RtD_CoalKnowsPortalBlood","GLOBAL",6)~ 
== bdnederl IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)~ THEN @1519 /* [Marshal Nederlok]The new intel gives our fight against Caelar and her crusade a completely new meaning. This is not about stopping a ransacking crusade - this is about preventing a third fiend war! */

/* know about Bhaal blood needed to open portal */
/* they have maximum knowledge about the portal, will get general follow up after bdnederl 28 */
== bddelanc IF ~OR(2)
GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)
GlobalGT("C#RtD_CoalWantBhaalBlood","GLOBAL",2)~ THEN @1520 /* [Torsin De Lancie]With this it is imperative for Caelar's crusade to get to you - alive. And this leaves us with a glaring problem, now that you are here, <CHARNAME>. */ 
END
IF ~~ THEN + %update_delancie%
/* will go here to separate state/CHAIN so I can use it for later dialogue if needed */
IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)~ THEN + hysterics


APPEND bddelanc
IF ~~ THEN hysterics
SAY @1521 /* [Torsin De Lancie]It seems now that not only was morale shaken by your Bhaal heritage. It also is a real danger to all of us, if what we know about the dormant portal beneath Dragonspear Castle is true! */
IF ~~ THEN + hysterics_01
END

IF ~~ THEN hysterics_01
SAY @1522 /* [Torsin De Lancie]Would the crusaders get their hands on you... It was madness, letting you come here! We need to keep you in the camp, away from people's eyes... or send you far away! */
++ @1523 /* [PC Reply]To achieve what? Caelar's assassins also found me back inside the palace, as you know. */ EXTERN bdstoneh hysterics_03
++ @1524 /* [PC Reply]I might endanger us all, but I am also capable at stopping villains, as I've already proven. You need me. */ EXTERN bdstoneh hysterics_03
++ @1525 /* [PC Reply]Caelar might just find another Bhaal spawn when I'm not around. Maybe she already has, and that's the reason there were no further attacks on me */ EXTERN bdstoneh hysterics_03 
++ @1526 /* [PC Reply]I came to help fighting the crusade, and I will do so. Now more than ever! */ EXTERN bdstoneh hysterics_03 
++ @1527 /* [PC Reply]I didn't exactly volunteer to be here, De Lancie. You either have a use for me, or I'll be indeed going my own way. */ EXTERN bdnederl hysterics_02
+ ~Global("C#RtD_bddelanc_to_4","GLOBAL",1)~ + @1528 /* [PC Reply]This greeting gets nicer and nicer. */ EXTERN bdstoneh hysterics_03
+ ~Global("C#RtD_bddelanc_to_4","GLOBAL",2)~ + @1529 /* [PC Reply]Your attitude towards me is getting nicer and nicer, De Lancie. */ EXTERN bdstoneh hysterics_03
++ @1530 /* [PC Reply]Great! That's the first sensible remark I've heard in a long time. When do I leave? */ EXTERN bdnederl hysterics_02
END

END //APPEND

APPEND bdnederl 
IF ~~ THEN hysterics_02
SAY @1531 /* [Marshal Nederlok]You will not leave, <CHARNAME>. At least not the way De Lancie suggested it. */
IF ~~ THEN EXTERN bdstoneh hysterics_03
IF ~Global("bd_plot","global",392)
AreaCheck("bd7300")~ THEN + hysterics_04
END
END //APPEND 

APPEND bdstoneh 
IF ~~ THEN hysterics_03
SAY @1532 /* [General Stonehand]I will not let <CHARNAME> sit in camp so my soldiers will have to babysit <PRO_HIMHER>! */
IF ~~ THEN EXTERN bdnederl hysterics_04
END
END //APPEND

CHAIN
IF ~~ THEN bdnederl hysterics_04
@1533 /* [Marshal Nederlok]We need to stay calm. We will not send <CHARNAME> away or make <PRO_HIMHER> a sitting duck when there is so much work to be done here. */
= @1534 /* [Marshal Nederlok]<CHARNAME> faced - and faught off - Caelar's assassins before. Accompanying the Flaming Fist up to here, <PRO_HESHE> faced crusaders and almost Caelar herself. There was no visible attempt of any crusaders to get a hold of <PRO_HIMHER> so far. I know that you agree - <PRO_HESHE> is our greates asset, and we will make good use of <PRO_HISHER> strength to bring down Caelar. */
== bddelanc @1535 /* [Torsin De Lancie]You better make sure your hero doesn't get caught, Nederlok. It would be more than a desaster. It would mean hell breaking lose - literally! */
END
IF ~~ THEN EXTERN bdnederl hysterics_05
IF ~Global("bd_plot","global",392)
AreaCheck("bd7300")~ THEN EXTERN bdnederl hysterics_06

CHAIN
IF ~~ THEN bdnederl hysterics_05
@1536 /* [Marshal Nederlok]I am aware. De Lancie - neither you nor General Stonehand knew who <CHARNAME> was when you saw <PRO_HIMHER> first! We can assume this is even more the case in the crusaders' ranks, and bounty notes will only get them so far. */
= @1537 /* [Marshal Nederlok]<CHARNAME>, I am your commanding general, and I need you in this fight. Having you run investigations will be what will draw attention from you - the less you are seen with us officers, the less you will be recognized by our foes. I trust in your capabilities to stay low and out of the enemies' hands. We have no other choice - the enemy's plans are horrifying. */
END
IF ~~ THEN EXTERN bddelanc update_delancie_gather_officers_01
IF ~Global("C#RtD_bddelanc_to_4","GLOBAL",1)~ THEN DO ~SetGlobal("C#RtD_bddelanc_to_4","GLOBAL",2)~ EXTERN bddelanc 4

APPEND bdnederl 
IF ~~ THEN hysterics_06
SAY @1538 /* [Marshal Nederlok]I am aware. We just faced Caelar and her advisor, and <CHARNAME> is still with us. More so, we are heading into battle. <CHARNAME>, I am your commanding general, and I need you in this fight. I trust in your fighting prowess and your capabilities to stay out of the enemies' hands. We have no other choice - the enemy's plans are horrifying. */
IF ~~ THEN EXTERN bddelanc %update_delancie_01%
END
END //APPEND


/* this is for the very first meeting in the big coalition camp */
/*
bdnederl
IF ~~ THEN BEGIN 28 // from: 27.1 27.3
  SAY #60891 /* ~We have reason to believe Caelar Argent's top advisor, a priest named Hephernaan, is quartered in Dragonspear's basement. We know very little of Hephernaan, other than he apparently has Caelar's ear.~ [BD60891] */
  IF ~~ THEN DO ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)
~ EXTERN ~BDDELANC~ 11
END
*/
/* interject into Marshal Nederlok's state 28. */

EXTEND_BOTTOM bdnederl 28
IF ~Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",0)~ THEN EXTERN bdnederl questchain_transition
IF ~GlobalGT("C#RtD_CoalHephernaanBetrayal","GLOBAL",0)~ THEN EXTERN bdnederl HephernaanBetrayal
END

CHAIN
IF ~~ THEN bdnederl HephernaanBetrayal
@1539 /* [Marshal Nederlok]Of course we know about him what you already found out - that he is a traitor to whatever "righteous" cause Caelar is planning with her crusade. */
== bdnederl IF ~GlobalGT("C#RtD_CoalHephernaanFiend","GLOBAL",0)~ THEN @1540 /* [Marshal Nederlok]He is working for a fiend - if there is a person with dark plans, these couldn't get any darker. */
== bdnederl @1541 /* [Marshal Nederlok]But we do not *know* anything about Hephernaan. Who is he? How powerful is he? Are there other forces at his disposal, waiting to attack? */
END
IF ~~ THEN EXTERN bdnederl questchain_transition

APPEND bdnederl 
IF ~~ THEN questchain_transition
SAY @1542 /* [Marshal Nederlok]Which leaves the raised points. */
IF ~~ THEN EXTERN bdnederl questchain
END
END //APPEND

CHAIN
IF ~~ THEN bdnederl questchain
@1543 /* [Marshal Nederlok]We have to stop Caelar and her madness crusade, one way of the other, and we will need your help for this, <CHARNAME>. */
/* do not know more than the crusade wants to free souls - not how */
== bdnederl IF ~GlobalLT("C#RtD_CoalKnowsPortalBlood","GLOBAL",3)~ THEN @1544 /* [Marshal Nederlok]How exactly is Caelar planning on reaching the souls in Avernus? */
/* know about planning on marching into Avernus */
== bdnederl IF ~OR(2)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",3)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1545 /* [Marshal Nederlok]She *is* planning on marching her crusade into Avernus. How will she achieve this? Will this endanger the lands with fiends coming through the other direction? */
/* do know about portal to Avernus beneath DC and how to open it */
== bdnederl IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1546 /* [Marshal Nederlok]We already know about the portal beneath the castle and her options to open it. */
/* do not know that blessing/protection by the gods is a scam */
== bdnederl IF ~GlobalLT("C#RtD_CoalCaelarGodBless","GLOBAL",5)~ THEN @1547 /* [Marshal Nederlok]How does she think she will succeed in this undertaking, how in the nine hells can she be so sure about succeeding. If there is any divine power helping her, we have to know! */
/* know that blessing of gods is a scam */
== bddelanc IF ~!GlobalLT("C#RtD_CoalCaelarGodBless","GLOBAL",5)~ THEN @1548 /* [Torsin De Lancie]Her followers will follow Caelar anywhere, even into Avernus. We know that the "blessing" and protection she claims to receive from all the pantheon is a scam. They are marching without devine protection, probably into their doom! */
== bddelanc IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1549 /* [Torsin De Lancie]Focus on stopping Caelar and the crusade, <CHARNAME>. This is all that matters. They are not to open that portal! */
END
COPY_TRANS bdnederl 28


/* prevent ~BDDELANC~ 15 if they know Caelar needs the PC's blood! 
bdstoneh
IF ~~ THEN BEGIN 20 // from:
  SAY #60907 /* ~Good. Well, be about your business, then.~ */
  IF ~~ THEN EXTERN ~BDDELANC~ 15
END
*/
EXTEND_BOTTOM bdstoneh 20
IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN EXTERN bddelanc no_rescue
END 

APPEND bddelanc
IF ~~ THEN no_rescue
SAY @1550 /* [Torsin De Lancie]We must prevent the portal to Avernus being opened at all cost. Knowing what it would mean would Caelar capture you... This has to be prevented at all cost, do you hear? Do not reveal yourself, ever, to the crusaders, and be ready for attacks of their assassins. Flee here into the safety between our soldiers if any trouble arise! */
= @1551 /* [Torsin De Lancie]Just so we're clear, <CHARNAME>, our resources are limited and our focus must be on containing the castle. We simply don't have the personnel for a rescue party. If you should get into trouble outside this camp - it would be really bad if that would happen, knowing what Caelar needs your blood for! So act your name as hero of your city and do not get caught! */
COPY_TRANS bddelanc 15
END
END //APPEND

/* make changes to the officers' replies installed with component 5 */
/* make sure we cycle back to the correct dialogue state at this point */
EXTEND_BOTTOM bddelanc %update_delancie%
+ ~Global("C#RtD_bddelanc_to_4","GLOBAL",1)~ + @1 /* ~[PC Reply]I have no more information to share right now.~ */ DO ~SetGlobal("C#RtD_bddelanc_to_4","GLOBAL",2)~ + intermediate
END

EXTEND_BOTTOM bddelanc %update_delancie_01%
+ ~OR(2) !Global("bd_plot","global",392)
!AreaCheck("bd7300")
Global("C#RtD_bddelanc_to_4","GLOBAL",1)~ + @1 /* ~[PC Reply]I have no more information to share right now.~ */ DO ~SetGlobal("C#RtD_bddelanc_to_4","GLOBAL",2)~ + intermediate
END

/* add more reactions to officers than in component 5 */
EXTEND_BOTTOM bddelanc %update_delancie_04%
IF ~See("bdnederl") See("bdstoneh")~ THEN EXTERN bdnederl update_delancie_gather_officers_02
IF ~OR(2) !See("bdnederl") !See("bdstoneh")~ THEN + update_delancie_gather_officers
/* after parley */
IF ~AreaCheck("bd7300")~ THEN + after_parley
END

/* cutscene: gather the officers in case they are not close to each other */
APPEND bddelanc
IF ~~ THEN update_delancie_gather_officers
SAY @1552 /* [Torsin De Lancie]Stay here. We need to consult with the other commanders about how to proceed! */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c#rtdcu1")~ EXIT
END

/* cutscene back to where the PC was before */
IF ~~ THEN update_delancie_gather_officers_01
SAY @1553 /* [Torsin De Lancie]Horrifying indeed... We already told you we do not have the ressources for a rescue mission. If you should get into trouble outside this camp - it would be really bad if that would happen, knowing what Caelar needs your blood for! So act your name as hero of your city and do not get caught! */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c#rtdcu2")~ EXIT
END
END //APPEND

CHAIN
IF WEIGHT #-1
~AreaCheck("c#rtd1")~ THEN bdnederl update_delancie_gather_officers_02
@1519 /* [Marshal Nederlok]The new intel gives our fight against Caelar and her crusade a completely new meaning. This is not about stopping a ransacking crusade - this is about preventing a third fiend war! */
== bddelanc @1554 /* [Torsin De Lancie]It is evident she needs your blood to open the portal to Avernus beneath Dragonspear Castle! It is imperative for Caelar's crusade to get to <CHARNAME> - alive. And this leaves us with a glaring problem having you here, <CHARNAME>! */
END
IF ~~ THEN EXTERN bddelanc hysterics 

APPEND bddelanc
/* this is for the very first meeting with the officers at the big coalition camp */
IF ~~ THEN intermediate
SAY @1555 /* [Torsin De Lancie]Now let us talk about how you can be of use. */
IF ~~ THEN + 4
END
END //APPEND

/* after first meeting at the officer's tent: commanders will stand separately. */

/* bdcorwin: add cutscene with gathering of officers if PC reports to her (after first meeting at command tent) */

EXTEND_BOTTOM bdcorwin %update_corwin_03%
IF ~!Global("C#RtD_bddelanc_to_4","GLOBAL",0)
AreaCheck("bd3000") InMyArea("bdnederl") InMyArea("bddelanc") InMyArea("bdstoneh")~ THEN + update_corwin_ext
END

APPEND bdcorwin 
IF ~~ THEN update_corwin_ext
SAY @1556 /* [Captain Corwin]This calls for an immediate officers' meeting. Follow me. */ 
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c#rtdcu1")~ EXIT
END
END //APPEND


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

/* add more in depth reactions that what was in component 5 */
EXTEND_BOTTOM bdnederl %update_nederlok_05%
IF ~OR(2) !See("bdnederl") !See("bdstoneh")~ THEN + update_nederlok_gather_officers
END

APPEND bdnederl
IF ~~ THEN update_nederlok_gather_officers
SAY @1557 /* [Marshal Nederlok]This calls for a commanders' meeting. Follow me. */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c#rtdcu1")~ EXIT
END
END //APPEND





/* Meeting of coalition officers with Caelar at the Dead Man's Pass: the coalition forces will not palaver quietly about Caelar wanting the Bhaal spawn if they know what for! - Not even De Lancie :-) */

/*
IF ~  Global("bd_plot","global",390)
AreaCheck("bd7300")
~ THEN BEGIN 44 // from:
  SAY #38635 /* ~If I understand you correctly then, you're willing to surrender your troops and abandon Dragonspear Castle. All we have to do is give you the Bhaalspawn.~ [BD38635] */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",391)
~ EXTERN ~BDSTONEH~ 33
END
*/

/* GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3): know that Caelar/Hephernaan want to open a portal at DC */
/* GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4): Know Caelar/Hephernaan need PC's blood for this */

INTERJECT BDDELANC 45 C#RtD_BDDELANC_45_KnowsPortal
== BDDELANC IF ~GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN @1558 /* [Torsin De Lancie]By no means will we agree to this! We know about your treacheous plan, Caelar. Marching into Avernus?! Repeat the unspeakable evil that lead to Dragonspear being overrun by fiends in the first place? */
== BDNEDERL IF ~GlobalGT("C#RtD_CoalCaelarBetrayal","GLOBAL",0)~ THEN @1559 /* [Marshal Nederlok]Plus, we know that you aren't master of your minions yourself. Whatever you were planning on achieving, it will fail, Caelar! */
END
IF ~~ THEN EXTERN bdcaelar 39
IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN EXTERN bdcaelar listen_to_me

CHAIN
IF ~~ THEN bdcaelar listen_to_me
@1560 /* [Caelar]<CHARNAME>! Hear me out! */
== BDCAELAR #%eet_2%38651 /* Three days to finish my business. That's all it will take. Come with me, <CHARNAME>. March beside me into Avernus. Together we shall liberate the souls of those lost in the Dragonspear Wars. */
== BDSTONEH @1561 /* [General Stonehand]We are well aware what you need <CHARNAME> for! It's <PRO_HISHER> blood that will open the portal for you! */
== BDCAELAR #%eet_2%39138 /* I never wanted you dead—I needed you alive. The men I sent to Baldur's Gate—good and righteous men—were meant to capture you. We—Hephernaan thought my aasimar blood might open the portal to Avernus, but its divine power had been diluted over generations. Despite the rumors, I am no spawn of Bhaal. We needed the blood of a god, or the next best thing—the child of a god's. */
== BDCAELAR #%eet_2%39143 /* How many have scorned me these past months? How many believed it mad to open the portal to Avernus? I could not ask. I could not risk your refusal. */
== BDCAELAR @1562 /* [Caelar]Come with me, <CHARNAME>. Together, we will free the trapped souls from their damnation! */
== BDNEDERL @1563 /* [Marshal Nederlok]Don't even think about answering to this, <CHARNAME>. */
END
IF ~~ THEN EXTERN bddelanc no_way_03

EXTEND_BOTTOM bddelanc 49
IF ~GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN + no_way_02
END

APPEND BDDELANC
IF ~~ THEN no_way_02
SAY @1564 /* [Torsin De Lancie]But not in this case. We will not hand over our greates asset in this fight against you, Caelar! */
IF ~~ THEN + no_way_03
END

IF ~~ THEN no_way_03
SAY @1565 /* [Torsin De Lancie]As much as it aches me that there will be no easy way to prevent war, having <CHARNAME> go with you would be madness! We will do anything in our power to stop you! This meeting was pointless, to say the least. */
IF ~~ THEN EXTERN BDCAELAR 40
END
END //APPEND


/* make De Lancies' follow-up dialogue to one that makes sense for GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3) */
/* disable to normal follow up dialogue for !GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3) */
/*
IF ~  Global("bd_plot","global",392)
AreaCheck("bd7300")
~ THEN BEGIN 52 // from:
  SAY #37873 /* ~Well. I sincerely hope you're worth what you just cost us, <CHARNAME>.~ [BD37873] */
  IF ~  False()
~ THEN REPLY #37874 /* ~What could she want with me? ~ */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN ~BDNEDERL~ 47
  IF ~  False()
!IsValidForPartyDialogue("GLINT")
~ THEN REPLY #37875 /* ~I don't understand. Caelar tried to have me killed in Baldur's Gate. Now she tries to win me over? It makes no sense.~ */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN ~BDNEDERL~ 47
  IF ~  False()
IsValidForPartyDialogue("GLINT")
~ THEN REPLY #37875 /* ~I don't understand. Caelar tried to have me killed in Baldur's Gate. Now she tries to win me over? It makes no sense.~ */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN ~BDGLINTJ~ 100
  IF ~  False()
~ THEN REPLY #37876 /* ~I'm worth more than every life you hold in your oily little hands, de Lancie. ~ */ DO ~SetGlobal("bd_plot","global",393)
~ GOTO 55
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",393)
~ EXTERN ~BDSTONEH~ 37
END
*/
ADD_STATE_TRIGGER BDDELANC 52 ~!GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3)~

/* add new follow up dialogue for GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3) */
CHAIN
IF ~  Global("bd_plot","global",392)
AreaCheck("bd7300")
GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3)~ THEN BDDELANC 52_noway
@1566 /* [Torsin De Lancie]The audacity of that madwoman! To ask for the Bhaal child to be handed over, making it sound as if that would bring a peaceful ending to the crusade's doing! */ 
DO ~SetGlobal("bd_plot","global",393)~
== BDDELANC IF ~GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1567 /* [Torsin De Lancie]I am glad we already knew what she wants you for, <CHARNAME>. It spared us the temptation to explore her offer. */
== BDDELANC IF ~!GlobalGT("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @1568 /* [Torsin De Lancie]I am glad we already knew what she is planning in the end, <CHARNAME>. It spared us the temptation to explore her offer. */
END
IF ~~ THEN EXTERN BDDELANC 52

/* extra reaction after parley if PC tells about portal + needed blood now */
CHAIN
IF ~~ THEN bddelanc after_parley
@1569 /* [Torsin De Lancie]You tell us this *now*? After we just parleyd with the ones who need you alive and asked for you to join them?! */
== bdstoneh @1570 /* [General Stonehand]Am I glad we didn't agree to this seemingly easy way to end this war... We'd have open a hell hole instead - literally. */
END
IF ~~ THEN + hysterics_01

/* meeting with Caelar at Dead Man's Pass: coalition officers whould react to the knowledge about freeing souls from Avernus if they do not know more. Ask Caelar how!
"C#RtD_CoalCaelarPlan":
2 - know that they want to free souls from Dragonspear War from Avernus - PC told them
3 - know that they want to free souls from Dragonspear War from Avernus - heard it elsewhere
*/
I_C_T3 BDNEDERL 41 C#RtD_bdnederl_41
== BDNEDERL IF ~OR(2) Global("C#RtD_CoalCaelarPlan","GLOBAL",4) Global("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN @1571 /* [Marshal Nederlok]We know the purpose of your crusade is to free souls from Avernus by marching your followers into there, Caelar - and you want the Bhaal Spawn for this? We will not consider any of this unless you tell us exactly what it is you are planning. How in the nine hells are you so convinced you will succeed?! */
== BDDELANC IF ~OR(2) Global("C#RtD_CoalCaelarProtection","GLOBAL",5) Global("C#RtD_CoalCaelarProtection","GLOBAL",6)~ THEN @1572 /* [Torsin De Lancie]We do know your proclaimed "protection by all the gods" is a scam. Do your followers know you are fooling them with your priests' "blessings"? */
== BDDELANC IF ~OR(2) Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",1) Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",2)~ THEN @1573 /* [Torsin De Lancie]And we see the treacherous snake at your side, Caelar - are you aware your "trusted advisor" is betraying you? */
== BDNEDERL IF ~GlobalGT("C#RtD_CoalHephernaanFiend","GLOBAL",0)~ THEN @1581 /* ~The accusations against your advisor Hephernaan are serious, Caelar. Heed our warning. We have reason to believe that he is answering to a fiend master who is trying to cross over to the Material Prime!~ */
== bdhepher IF ~GlobalGT("C#RtD_CoalHephernaanFiend","GLOBAL",0)~ THEN @1582 /* ~I stand united with my commander, Caelar Argent, in our attempt to reach for the trapped souls in Avernus! Your accusations are rediculous.~ */
== BDDELANC IF ~GlobalGT("C#RtD_CoalHephernaanFiend","GLOBAL",0)~ THEN @1583 /* ~No, they are severe, you traitor! Heed our warning, Caelar. Part with the traitor and stop what you are doing - now! Or you will give the very same thing to Dragonspear Castle what you set out to right - another fiend war!~ */
== BDCAELAR IF ~OR(4) Global("C#RtD_CoalCaelarProtection","GLOBAL",5) Global("C#RtD_CoalCaelarProtection","GLOBAL",6) Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",1) Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",2)~ THEN @1574 /* [Caelar]Our faith and resolution will not be shaken by your unproven accusations. Only I have the means and capability to free the souls from Avernus, and with my followers and well-trusted advisor Hephernaan will be victorious! */
END

/* they know Caelar will open a portal to Avernus - they will not consider letting CHARNAME join */

INTERJECT bddelanc 49 C#RtD_bddelanc_49
== bddelanc IF ~OR(2) Global("C#RtD_CoalCaelarPlan","GLOBAL",4) Global("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN @1575 /* [Torsin De Lancie]But not here, not today. There is no easy way out this time - this is madness that has to be stopped, by all means. */
END
IF ~~ THEN + 50

/* give Stonehand a snarky remark if officers know about portal */
/* bdcaelar
IF ~~ THEN BEGIN 41 // from:
  SAY #38663 /* ~When next you see my banner, it will be at the head of the army that marches on you. For righteousness. For justice.~ [BD38663] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 42
END
*/
I_C_T bdcaelar 41 C#RtD_bdcaelar_41
== ~BDSTONEH~ IF ~GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3)~ THEN @1576 /* [General Stonehand]Righteousness? Justice? Woman, you lost your mind. */
END


/* bdnederl
IF ~  AreaCheck("bd4100")
Global("bd_mdd1271_journal","bd4100",0)
~ THEN BEGIN 73 // from: 71.0 71.1
  SAY #65598 /* ~Caelar's holed up beneath us in the basement. Bence Duncan's preparing to engage her. Head down the stairs and finish this.~ [BD65598] */

IF ~  AreaCheck("bd4100")
~ THEN BEGIN 75 // from: 71.3 73.0 73.2 74.0
  SAY #65603 /* ~You've more important things to do than stand around talking to me. Dismissed!~ [BD65603] */
  IF ~~ THEN EXIT
  IF ~  Global("bd_sdd1248_plot","global",2)
~ THEN REPLY #65583 /* ~I discovered some soldiers taking advantage of their position. They're looting all the valuables they find on this level.~ */ GOTO 72
END
*/

I_C_T bdnederl 75 C#RtD_bdnederl_75
== bdnederl IF ~GlobalGT("C#RtD_CoalWantBhaalBlood","GLOBAL",0)~ THEN @1577 /* [Marshal Nederlok]Be careful, <CHARNAME> - this might be where Caelar and Hephernaan want you to be. But we need your fighting power, we'll have no chance without it. Be safe down there! */
END

/* bdstoneh - reaction in case Bhaal blood for portal plan is known?
IF ~  Global("bd_plot","global",410)
AreaCheck("bd4000")
Global("bd_wall_explosion","bd4000",3)
~ THEN BEGIN 44 // from:
  SAY #64963 /* ~By Moradin's Hammer, what kinda hero are you? Get inside the castle and put an axe in a damned wizard's skull—preferably while we've still troops enough to pull this off!~ [BD64963] */
  IF ~~ THEN EXIT
END
*/
I_C_T bdstoneh 44 C#RtD_bdstoneh_44
== bdstoneh IF ~GlobalGT("C#RtD_CoalWantBhaalBlood","GLOBAL",0)~ THEN @1578 /* [General Stonehand]And don't you let yourself be caught in there for whatever the crusaders are planning with you, you hear me? We want to *win* this war. */
END

/* bdstoneh
IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #44216 /* ~We gotta figure out where all the crusaders are running off to. They must be down in those tunnels. We'll stop the crusade—you take care of Caelar.~ [BD44216] */
  IF ~~ THEN EXIT
  IF ~  Global("bd_mdd1247_journal","bd4000",0)
~ THEN DO ~SetGlobal("bd_mdd1247_journal","bd4000",1)
AddJournalEntry(66147,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.0 46.2
  SAY #44219 /* ~Get to it, then! An' we'll have a drink after all this is done.~ [BD44219] */
  IF ~~ THEN EXIT
  IF ~  Global("bd_mdd1247_journal","bd4000",0)
~ THEN DO ~SetGlobal("bd_mdd1247_journal","bd4000",1)
AddJournalEntry(66147,QUEST)
~ EXIT
END
*/
I_C_T bdstoneh 47 C#RtD_bdstoneh_47
== bdstoneh IF ~GlobalGT("C#RtD_CoalWantBhaalBlood","GLOBAL",0)~ THEN @1579 /* [General Stonehand]And don't make me regret I let the one go down there who is wanted for <PRO_HISHER> blood, you hear? */
END

I_C_T bdstoneh 48 C#RtD_bdstoneh_48
== bdstoneh IF ~GlobalGT("C#RtD_CoalWantBhaalBlood","GLOBAL",0)~ THEN @1579 /* [General Stonehand]And don't make me regret I let the one go down there who is wanted for <PRO_HISHER> blood, you hear? */
END


/*
bddelanc
IF ~~ THEN BEGIN 76 // from: 73.1 73.4
  SAY #38541 /* ~My mages tell me the portal is open. And for as long as that remains the case, these doors are staying closed. You must find a way to seal this rift between planes.~ [BD38541] */
  IF ~~ THEN GOTO 75
END
*/
I_C_T bddelanc 76 C#RtD_bddelanc_75
== bddelanc @1580 /* [Torsin De Lancie]It was your blood that opened this hell hole, <CHARNAME> - if there is anyone who is best fit to close it, it would be you! */
END



