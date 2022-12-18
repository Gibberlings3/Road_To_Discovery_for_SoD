/* additional possibilities to inquiry about the crusade's motives 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1) */

/* bddamarr 13 */
/*   SAY #47787 /* ~But I've been here a month. Haven't gone to Avernus yet. When the time comes... Well, we'll see how many truly follow Caelar then. If it happens.~ */
*/

APPEND bddamarr 
IF ~~ THEN enter_avernus
SAY @1000 /* [bddamarr Female Crusader]Oh, I don't know the details. But Caelar will open up a way for us to enter, and from what I understand it will happen at Dragonspear Castle itself! */
COPY_TRANS bddamarr 13
END
END //APPEND

EXTEND_BOTTOM bddamarr 13
+ ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",4)~ + @1001 /* [PC Reply]I know Caelar is preparing to lead everyone into Avernus, but - how exactly will this happen? I didn't quite get the "enter Avernus" part, to be honest. */ DO ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + enter_avernus
END


/* Camp at Boaskyr Bridge: Witness Hormorn's Blessing */

/* I'll introduce a crusader who make the PC aware of the blessings at dawn and dusk. Can be used to "rest" until dawn / dusk, too 
[2828.2504] bd2000 */

BEGIN C#RtDblc

IF ~GlobalGT("bd_enlightment_plot","bd2000",0) 
GlobalLT("bd_enlightment_plot","bd2000",5)~ THEN blc
SAY @1002 /* [C#RtDblc Male Crusader]Sshhhh! It's time for Caelar's blessing of the pantheon! */
IF ~~ THEN EXIT
END

IF ~Global("C#RtD_CrusaderBlessing","bd2000",0)
Global("bd_enlightment_plot","bd2000",0) 
TimeLT(DUSK_START) TimeGT(DAWN_START)~ THEN blc_00
SAY @1003 /* [C#RtDblc Male Crusader]Are you new? You should make sure to be at camp at dusk, to receive Caelar's blessing of the pantheon! */
IF ~~ THEN + blc_02
END

IF ~Global("C#RtD_CrusaderBlessing","bd2000",0)
Global("bd_enlightment_plot","bd2000",5)~ THEN blc_01
SAY @1004 /* [C#RtDblc Male Crusader]Are you new? You just missed Caelar's blessing of the pantheon! Be sure to be here tomorrow to receive the next one. */
IF ~~ THEN + blc_02
END

IF ~~ THEN blc_02
SAY @1005 /* [C#RtDblc Male Crusader]They do it at dusk only, so better be here when it happens. I wouldn't miss it for the world - it's dangerous out there without the divine protection. */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessing","bd2000",1)
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ UNSOLVED_JOURNAL @32 EXIT
END

IF ~Global("C#RtD_CrusaderBlessing","bd2000",1)~ THEN blc_03
SAY @1006 /* [C#RtDblc Male Crusader]I can't wait to get the next blessing. I feel the last one weakening with every hour. */
+ ~GlobalLT("C#RtD_CaelarProtection","GLOBAL",4)~ + @1007 /* [PC Reply]I would very much like to be here when the next blessing happens. Do you know a place where we could wait up without getting in anyone's way? */ + blc_04
++ @1008 /* [PC Reply]Good day to you. */ + blc_05
END

IF ~~ THEN blc_04
SAY @1009 /* [C#RtDblc Male Crusader]Oh, if you want you can just wait right here. I don't need the tent right now. */
++ @1010 /* [PC Reply]Great. We'll rest here until the next blessing then. */ + blc_06
++ @1011 /* [PC Reply]Thank for the offer, but I think I'll prefer being busy until then. */ + blc_05
END

IF ~~ THEN blc_05
SAY @1012 /* [C#RtDblc Male Crusader]See you around then! */
IF ~~ THEN EXIT
END

IF ~~ THEN blc_06
SAY @1013 /* [C#RtDblc Male Crusader]Sure! Make yourself comfortable. */
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c#rtdcu3")~ EXIT
END

/* Player1 is paladin/cleric */

BEGIN C#RtDpct

CHAIN
IF ~Global("C#RtD_CrusaderBlessingQuest","GLOBAL",3)~ THEN C#RtDpct detect_blessing
@1014 /* [PC Selftalk](You witnessed a "blessing ritual" of one of Caelar's priests.) */
== C#RtDpct IF ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)
OR(2) !IsValidForPartyDialogue("GLINT") !Class("GLINT",CLERIC_ALL)
OR(2) !IsValidForPartyDialogue("VICONIA") !Class("VICONIA",CLERIC_ALL)~ THEN @1017 /* [PC Selftalk](You didn't need anyone else's observation to determine that this "blessing" is nothing special at all, and definitely not a protection by "the gods" as proclaimed by the priest performing the ritual.) */
END
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
IF ~IsValidForPartyDialogue(Player2)
OR(2)
Class(Player2,CLERIC_ALL)
Class(Player2,PALADIN_ALL)
!Name("GLINT",Player2)
!Name("VICONIA",Player2)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)~ THEN + player2
IF ~IsValidForPartyDialogue(Player3)
OR(2)
Class(Player3,CLERIC_ALL)
Class(Player3,PALADIN_ALL)
!Name("GLINT",Player3)
!Name("VICONIA",Player3)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)~ THEN + player3
IF ~IsValidForPartyDialogue(Player4)
OR(2)
Class(Player4,CLERIC_ALL)
Class(Player4,PALADIN_ALL)
!Name("GLINT",Player4)
!Name("VICONIA",Player4)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)~ THEN + player4
IF ~IsValidForPartyDialogue(Player5)
OR(2)
Class(Player5,CLERIC_ALL)
Class(Player5,PALADIN_ALL)
!Name("GLINT",Player5)
!Name("VICONIA",Player5)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)~ THEN + player5
IF ~IsValidForPartyDialogue(Player6)
OR(2)
Class(Player6,CLERIC_ALL)
Class(Player6,PALADIN_ALL)
!Name("GLINT",Player6)
!Name("VICONIA",Player6)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)~ THEN + player6
IF ~IsValidForPartyDialogue("GLINT") Class("GLINT",CLERIC_ALL)~ THEN EXTERN BDGLINTJ glint_noticed
IF ~IsValidForPartyDialogue("VICONIA") Class("VICONIA",CLERIC_ALL)~ THEN EXTERN BDVICONJ viconia_noticed

APPEND BDGLINTJ
IF ~~ THEN glint_noticed
SAY @1015 /* [Glint]Nah, how can he say it was granted by "the gods"... blasphemy is what that was, nothing more. */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END
END

APPEND BDVICONJ 
IF ~~ THEN viconia_noticed
SAY @1016 /* [Viconia]This blessing from "the gods" might have been good for the morale of Caelar's followers, but that was all there is to it. */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END
END

APPEND C#RtDpct 

IF ~~ THEN player2
SAY @1018 /* [PC Selftalk](You noticed <PLAYER2>'s reaction to the performance and do not need any more information to know that this "blessing" is nothing special at all, and definitely not a protection by "the gods" as proclaimed by the priest carrying out the ritual.) */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END

IF ~~ THEN player3
SAY @1019 /* [PC Selftalk](You noticed <PLAYER3>'s reaction to the performance and do not need any more information to know that this "blessing" is nothing special at all, and definitely not a protection by "the gods" as proclaimed by the priest carrying out the ritual.) */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END

IF ~~ THEN player4
SAY @1020 /* [PC Selftalk](You noticed <PLAYER4>'s reaction to the performance and do not need any more information to know that this "blessing" is nothing special at all, and definitely not a protection by "the gods" as proclaimed by the priest carrying out the ritual.) */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END

IF ~~ THEN player5
SAY @1021 /* [PC Selftalk](You noticed <PLAYER5>'s reaction to the performance and do not need any more information to know that this "blessing" is nothing special at all, and definitely not a protection by "the gods" as proclaimed by the priest carrying out the ritual.) */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END

IF ~~ THEN player6
SAY @1022 /* [PC Selftalk](You noticed <PLAYER6>'s reaction to the performance and do not need any more information to know that this "blessing" is nothing special at all, and definitely not a protection by "the gods" as proclaimed by the priest carrying out the ritual.) */
IF ~~ THEN DO ~SetGlobal("C#RtD_CrusaderBlessingQuest","GLOBAL",4) 
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)EraseJournalEntry(@32) EraseJournalEntry(@33) AddJournalEntry(@35,QUEST_DONE)~ EXIT
END

END //APPEND

