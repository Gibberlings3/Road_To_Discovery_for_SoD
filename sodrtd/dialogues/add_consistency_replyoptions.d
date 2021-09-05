/* add reply options according to the PC's status of knowledge. - SetGlobal from sodrtd.d need to be integrated! */

/* PC knows what exactly happened with Caelar, Aun and the Order */
/* bddelanc 34
  IF ~~ THEN REPLY #43940 /* ~Do we know anything of this incident?~ */ GOTO 36
-> disabled for GlobalLT("C#RtD_KnowsAunArgent","GLOBAL",2)
*/
EXTEND_BOTTOM bddelanc 34
+ ~GlobalGT("C#RtD_KnowsAunArgent","GLOBAL",1)~ + @500 /* [PC Reply]Yes, I think I know what happened there. */ + 36
END


/* add reply options here in bdcaelar in case the PC knows more about her plans (than the coalition leaders) */
/*
IF ~~ THEN BEGIN 39 // from:
  SAY #38656 /* ~Listen to me, <CHARNAME>. The lost souls of the Dragonspear dead need a hero. That hero is you. Join me, and together we shall liberate the souls trapped in the Nine Hells.~ [BD38656] */
  IF ~~ THEN REPLY #38657 /* ~You make a strong case for aiding you. I admit I'm tempted.~ */ EXTERN ~BDDELANC~ 49
  IF ~~ THEN REPLY #38658 /* ~You're up to something, Caelar. If it were that simple you would have just asked for my help instead of drumming up an army and sending assassins after me.~ */ GOTO 43
  IF ~~ THEN REPLY #38659 /* ~I may very well join you in the Hells, Caelar—but I will never stand at your side.~ */ EXTERN ~BDDELANC~ 47
END
*/

EXTEND_BOTTOM bdcaelar 39
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)~ + @501 /* [PC Reply]I will not help you open a portal to Avernus, Caelar. This is madness. */ DO ~%C#RtD_CoalCaelarPlan_SET_3%
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXTERN bddelanc 49
END


/* bdhalat */

/* bdhalat 6
IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #50335 /* ~What purpose is that? ~ */
*/
EXTEND_BOTTOM bdhalat 6
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",4)~ + @502 /* [PC Reply]I do think that Caelar's true aim is to free her uncle Aun who was trapped in Avernus because of her. */ + 9
+ ~GlobalGT("C#RtD_HephernaanBetrayal","GLOBAL",0)~ + @503 /* [PC Reply]Caelar might plan to free souls from Avernus, but her advisor Hephernaan surely has very dark plans. */ + 8
END


/* bdhalat 8
IF ~~ THEN BEGIN 8 // from: 3.3 5.2 12.0
  SAY #50347 /* ~A man—if man he truly be—named Hephernaan. He is a creature of deception, a worm wrapped in rose petals. His evil is insidious. He is a sickness growing inside a healthy body, destroying it unawares until it is too late. Be wary of him.~ [BD50347] */
*/
EXTEND_BOTTOM bdhalat 8
+ ~GlobalGT("C#RtD_HephernaanBetrayal","GLOBAL",0)~ + @504 /* [PC Reply]Yes, I know that Hephernaan is betraying Caelar. Thank you for the warning nontheless. */ DO ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_HephernaanBetrayal_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ + 11
END



/* parley at Dead Man's Pass: add more reply options to exit dialogue state so it's not only one in case more variables are set. The str-ref ones are falsed-out original ones from bddelanc and bdstoneh */
EXTEND_BOTTOM BDNEDERL 46
+ ~GlobalGT("C#RtD_CoalCaelarPlan","GLOBAL",3)~ + @505 /* [PC Reply]I'm glad even you saw sense in not handing me over to Caelar, de Lancie. */ EXTERN bddelanc 53
  IF ~~ THEN REPLY #%eet_2%37876 /* ~I'm worth more than every life you hold in your oily little hands, de Lancie. ~ */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN bddelanc 55
  IF ~~ THEN REPLY #%eet_2%37880 /* ~I'll die before that devil gets her claws into me.~ */ DO ~SetGlobal("bd_plot","global",393)
~ EXTERN bdstoneh 39
END



/* add reply options to Caelar here
IF ~  Global("bd_plot","global",485)
AreaCheck("bd4300")
~ THEN BEGIN 50 // from:
  SAY #38472 /* ~And so we reach the end of a long, long journey. If you only knew the sacrifices I made to bring us to this point. All of them worthwhile.~ [BD38472] */
  IF ~  Global("bd_illusion_magic_response","GLOBAL",1)
~ THEN REPLY #66595 /* ~Our mage detected illusion magic. Who else is here? Don't expect me to believe you're alone.~ */ DO ~SetGlobal("bd_plot","global",486)
~ GOTO 51
  IF ~~ THEN REPLY #66596 /* ~I've little doubt you did what you thought right, Caelar. But your efforts have led to naught but chaos and destruction. Surrender now.~ */ DO ~SetGlobal("bd_plot","global",486)
~ EXTERN ~BDBENCE~ 61
  IF ~~ THEN REPLY #66597 /* ~That's a matter of perspective.~ */ DO ~SetGlobal("bd_plot","global",486)
~ EXTERN ~BDBENCE~ 61
  IF ~~ THEN REPLY #66598 /* ~Consider your next words carefully. They will be your last.~ */ DO ~SetGlobal("bd_plot","global",486)
~ EXTERN ~BDBENCE~ 61
END
*/
EXTEND_BOTTOM bdcaelar 50
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",4)~ + @506 /* [PC Reply]You are doing this for your uncle Aun, are you not? All this death, all these crimes for one man who sacrificed himself for you? */ + ignorance
+ ~GlobalGT("C#RtD_HephernaanBetrayal","GLOBAL",0)~ + @507 /* [PC Reply]Caelar... open your eyes and see Hephernaan for what he is - a traitor and danger to your cause! */ + ignorance_01
END

APPEND bdcaelar
IF ~~ THEN ignorance
SAY @508 /* [Caelar]He is but one soul we will save from Avernus' cruel fate and torment. My uncle is my motivation like the trapped relatives of my followers are for them, unifying us in our rage for justice! */
IF ~~ THEN + 51
END

IF ~~ THEN ignorance_01
SAY @509 /* [Caelar]Standing at the brink of the portal that will bring us to our goal you try to drive a wedge between me and my advisor? Are you realizing that you are losing, <CHARNAME>? */
IF ~~ THEN + 51
END
END //APPEND


/* Duke Belt in prison: PC knows it's the Hooded Man that killed Skie. */

EXTEND_BOTTOM bdbelt 30
+ ~Global("C#RtD_KnowsHoodedMan","GLOBAL",2)
!Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)~ + @510 /* [PC Reply]The murderer of Skie - it was the hooded man I was telling you before. */ DO ~SetGlobal("C#RtD_CoalKnowsHoodedMan","GLOBAL",3)~ + 31
+ ~Global("C#RtD_KnowsHoodedMan","GLOBAL",2)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",0)~ + @511 /* [PC Reply]The murderer of Skie - it was a hooded man who stalked me for a while because of my Bhaal heritage. */ DO ~SetGlobal("C#RtD_CoalMetHoodedMan","GLOBAL",3) SetGlobal("C#RtD_CoalKnowsHoodedMan","GLOBAL",3)~ + 31
END