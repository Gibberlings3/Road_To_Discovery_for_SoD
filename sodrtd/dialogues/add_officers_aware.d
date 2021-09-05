/* bdcaelar 39 - coalition is listening
  SAY #38656 /* ~Listen to me, <CHARNAME>. The lost souls of the Dragonspear dead need a hero. That hero is you. Join me, and together we shall liberate the souls trapped in the Nine Hells.~ [BD38656] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 39 END BEGIN END ~SetGlobal("C#RtD_CoalCaelarPlan_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdcaelar 45 - DS castle exterior; coalition is listening
  SAY #38358 /* ~Then I discovered the truth! I tell you that the Dragonspear dead are NOT lost! I shall lead an army into Avernus and retrieve them if you will but LET me. Do not toss this opportunity aside. Do not let the devils take so much more than their due!~ [BD38358] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 45 END BEGIN END ~SetGlobal("C#RtD_CoalCaelarPlan_SET","GLOBAL",5)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ 

/* Hephernaan's betrayal at the portal - now all know */
/* bdcaelar 52
  SAY #66602 /* ~YOUR plan? What do you mean? Hephernaan, what are you doing?~ [BD66602] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 52 END BEGIN END ~SetGlobal("C#RtD_CoalHephernaanFiend_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddelanc 44
  SAY #38635 /* ~If I understand you correctly then, you're willing to surrender your troops and abandon Dragonspear Castle. All we have to do is give you the Bhaalspawn.~ [BD38635] */
*/
ADD_TRANS_ACTION BDDELANC BEGIN 44 END BEGIN END ~SetGlobal("C#RtD_CoalCaelarWantsPC_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddelanc 78 - PC tells about Belhifet
IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #39350 /* ~I imagine you've quite a tale to tell.~ [BD39350] */
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN REPLY #39351 /* ~More than one. In the hands of any bard worthy of the title, the machinations of Caelar, Hephernaan, and the devil Belhifet would be fodder for any number of epics.~ */ EXTERN ~BDVOGHIJ~ 47
  IF ~  !IsValidForPartyDialogue("VOGHILN")
~ THEN REPLY #39351 /* ~More than one. In the hands of any bard worthy of the title, the machinations of Caelar, Hephernaan, and the devil Belhifet would be fodder for any number of epics.~ */ GOTO 79
  IF ~~ THEN REPLY #39352 /* ~I'll leave the telling to others. What happened while I... well, not to put too fine a point on it, but while I was saving the world from the forces of Hell?~ */ GOTO 79
  IF ~~ THEN REPLY #39353 /* ~I just told it. How goes the siege?~ */ GOTO 79
END
*/
ADD_TRANS_ACTION BDDELANC BEGIN 78 END BEGIN 0 1 END ~SetGlobal("C#RtD_CoalHephernaanFiend_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdhepher 16
  SAY #38474 /* ~You'll find out soon enough, my puppet, once the devils begin their march into this world. Bleed, Bhaalspawn. Bleed for my master.~ [BD38474] */
*/
ADD_TRANS_ACTION BDHEPHER BEGIN 16 END BEGIN END ~SetGlobal("C#RtD_CoalKnowsPortalBlood_SET","GLOBAL",8)
SetGlobal("C#RtD_CoalHephernaanFiend_SET","GLOBAL",2)
SetGlobal("C#RtD_CoalCaelarPlan_SET","GLOBAL",7)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* bdnederl 41
  SAY #38650 /* ~She wants you, <CHARNAME>. She says she'll disband her army and surrender if you go with her. Sounds too good to be true, doesn't it?~ [BD38650] */
*/
ADD_TRANS_ACTION BDNEDERL BEGIN 41 END BEGIN END ~SetGlobal("C#RtD_CoalCaelarWantsPC_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~