//////////////////////////////////////////////////////////////
// Dialogue changes for stat based options                  //
// other than the poison used by Caelar's elites            //
// That's handled in a separate file because of it's volume //
//////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
// Track who has talked to Dauston (drunken fallen paladin) about Caelar //
///////////////////////////////////////////////////////////////////////////
REPLACE_ACTION_TEXT BDDAUSTO ~SetGlobal("BD_PASSOUT_DAUSTON","BD0030",1)~ ~SetGlobal("BD_PASSOUT_DAUSTON","BD0030",1) SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",1) ActionOverride(Player2,SetGlobal("#L_SoDStat_DaustonTalk","LOCALS",1)) ActionOverride(Player3,SetGlobal("#L_SoDStat_DaustonTalk","LOCALS",1)) ActionOverride(Player4,SetGlobal("#L_SoDStat_DaustonTalk","LOCALS",1)) ActionOverride(Player5,SetGlobal("#L_SoDStat_DaustonTalk","LOCALS",1)) ActionOverride(Player6,SetGlobal("#L_SoDStat_DaustonTalk","LOCALS",1))~

//////////////////////////////////////////////////////
// Ask Eltan to interview Dauston when he sobers up //
//////////////////////////////////////////////////////
EXTEND_BOTTOM BDELTAN 10 
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",1) Global("#L_SoDStat_DaustonPrompt","MYAREA",2)~ THEN REPLY @2020 /* ~Well enough, sir. But I have a favor to ask of you concerning the fallen paladin named Dauston that is currently sleeping it off in your cells.~ */ GOTO ELTAN_ASK_ABOUT_DAUSTON
END

APPEND BDELTAN
	IF ~~ THEN BEGIN ELTAN_ASK_ABOUT_DAUSTON
		SAY @2021 /* ~Of course.  What can I do for the Hero of Baldur's Gate?~ */
		++ @2022 /* ~Can you interview him when he is awake.  He knows something of Caelar's past that might prove useful.~ */ GOTO ELTAN_CONTINUE
	END
	
	IF ~~ THEN BEGIN ELTAN_CONTINUE
		SAY @2023 /* ~Easy enough.  Consider it done.  I'll send a messenger with the results to Corwin at the first opportunity.~ */
		++ @2024 /* ~Thank you, sir.  How are you holding up through all of this?~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",2)~ UNSOLVED_JOURNAL @3003 GOTO 18
	END
END

////////////////////////////////////////////////////////////////////////////////////////
// Have Corwin have a message from Eltan for you if you speak with her more than once //
////////////////////////////////////////////////////////////////////////////////////////
EXTEND_BOTTOM BDCORWIN 4
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",4)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 13
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",13)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 17
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",17)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 20
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",20)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 27
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",27)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 28
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",28)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 30
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",30)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 31
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",31)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 32
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",32)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 33
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",33)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 34
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",34)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 35
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",35)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 37
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",37)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 41
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",41)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 42
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",42)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 46
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",46)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 54
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",54)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 55
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",55)~ GOTO MESSAGE_FOR_YOU_SIR
END

EXTEND_BOTTOM BDCORWIN 56
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",2)~ THEN DO ~SetGlobal("#L_BDCORWIN_TRACKER","MYAREA",56)~ GOTO MESSAGE_FOR_YOU_SIR
END

APPEND BDCORWIN
	IF ~~ THEN BEGIN MESSAGE_FOR_YOU_SIR
		SAY @4030 /* ~By the way, I have a message for you from Duke Eltan, <CHARNAME>.~ */
		IF ~GlobalGT("BD_PLOT","GLOBAL",160)~ THEN REPLY @4032 /* ~Better late than never I guess.  What did he find out?~ */ GOTO DAUSTON_MESSAGE_1
		IF ~GlobalLT("BD_PLOT","GLOBAL",160)~ THEN REPLY @4031 /* ~Excellent!  What did he find out?~ */ GOTO DAUSTON_MESSAGE_2
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_1
		SAY @4033 /* ~Had you kept in contact with the camp, you'd have received it much sooner.  I've had it for a while now.~ */
		IF ~~ THEN GOTO DAUSTON_MESSAGE_2
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_2
		SAY @4034 /* ~He found out that Caelar, through some fault of her own, wound up a prisoner in Avernus.~ */
		IF ~~ THEN GOTO DAUSTON_MESSAGE_3
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_3
		SAY @4035 /* ~Her uncle managed to get her out by sacrificing himself.  He is now a prisoner in Avernus...in her place.~ */
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",4)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_4
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",13)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_13
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",17)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_17
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",20)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_20
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",27)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_27
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",28)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_28
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",30)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_30
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",31)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_31
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",32)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_32
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",33)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_33
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",34)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_34
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",35)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_35
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",37)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_37
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",41)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_41
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",42)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_42
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",46)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_46
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",54)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_54
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",55)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_55
		IF ~Global("#L_BDCORWIN_TRACKER","MYAREA",56)~ THEN REPLY @4036 /* ~How awful.  But that does explain a lot.~ */ DO ~SetGlobal("#L_SoDStat_DaustonTalk","GLOBAL",3)~ SOLVED_JOURNAL @3004 + DAUSTON_MESSAGE_4_56
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_4
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 4
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_13
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 13
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_17
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 17
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_20
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 20
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_27
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 27
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_28
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 28
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_30
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 30
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_31
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 31
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_32
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 32
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_33
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 33
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_34
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 34
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_35
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 35
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_37
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 37
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_41
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 41
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_42
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 42
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_46
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 46
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_54
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 54
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_55
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 55
	END
	
	IF ~~ THEN BEGIN DAUSTON_MESSAGE_4_56
		SAY #%eet_2%42104 /* ~All right then.~ */
		COPY_TRANS BDCORWIN 56
	END
END

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Track if PC knows about Hephernaan being an agent of the Umbral Accord (1=knows face, 2=knows face and name) //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REPLACE_ACTION_TEXT BDSCRY ~SetGlobal("bd_sddd12_hood","LOCALS",1)~ ~SetGlobal("#L_SoDStat_HephUmbral","GLOBAL",1) SetGlobal("bd_sddd12_hood","LOCALS",1)~

/* - deprecated - will be checked via Edwin's script.
ALTER_TRANS BDSCRY
	BEGIN 3 END
	BEGIN 0 END
	BEGIN "TRIGGER" ~!IsValidForPartyDialogue("EDWIN")~ END
EXTEND_BOTTOM BDSCRY 3
	IF ~IsValidForPartyDialogue("EDWIN")~ THEN DO ~SetGlobal("BD_SDDD12_CLOUDY","MYAREA",1) SetGlobal("bd_sddd12_hood","LOCALS",1) SetGlobal("#L_SoDStat_HephUmbral","GLOBAL",1) ActionOverride("EDWIN",SetGlobal("#L_SoDStat_HephUmbral","LOCALS",1)) StartCutSceneMode() StartCutSceneEx("bdscry05",FALSE)~ EXIT
END
*/



////////////////////////////////////////////////////////////////////////////////////////////////////////
// Track if PC learned that Hephernaan is Caelar's advisor (1=knows name, 2=knows both name and face) //
////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
ALTER_TRANS BDEDWIN
	BEGIN 48 END
	BEGIN 0 END
	BEGIN
		"ACTION" ~SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",1)~
	END
*/
ADD_TRANS_ACTION BDEDWIN BEGIN 48 END BEGIN END ~SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",1)~

/*
ALTER_TRANS BDEDWINJ
	BEGIN 5 6 END
	BEGIN 0 END
	BEGIN
		"ACTION" ~SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",1)~
	END
*/
ADD_TRANS_ACTION BDEDWINJ BEGIN 5 6 END BEGIN END ~SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",1)~

	
APPEND BDEDWINJ
	IF WEIGHT #-1
	~Global("#L_SoDStat_HephUmbral","LOCALS",1)~	THEN BEGIN I_KNEW_IT
		SAY @2060 /* ~I knew something was off with that hedge wizard! (I always know.)~ */
		++ @2061 /* ~Which hedge wizard, Edwin?~ */ GOTO KNEW_WHO
		++ @2062 /* ~You know him, Edwin?~ */ GOTO YOU_KNOW_HIM
	END
	
	IF ~~ THEN BEGIN KNEW_WHO
		SAY @2063 /* ~That poor excuse for a wizard talking to that man in the hood.  That's Hephernaan.  Caelar's most trusted advisor. (Unbelievable...what a fool.)~ */
		IF ~!Global("#L_SoDStat_TreatiseFound","GLOBAL",2)~ THEN REPLY @2065 /* ~Pieces of the puzzle are falling into place.  Thank you, Edwin.  You've been invaluable.~ */ GOTO OF_COURSE_1
		IF ~Global("#L_SoDStat_TreatiseFound","GLOBAL",2)~ THEN REPLY @2067 /* ~Of course he is.  This just keeps getting better and better.  Thank you, Edwin.  That was an invaluable piece of information.~ */ GOTO OF_COURSE_2
	END
	
	IF ~~ THEN BEGIN YOU_KNOW_HIM
		SAY @2064 /* ~Yes yes, I know him.  That poor excuse for a wizard talking to the hooded figure is Hephernaan.  Caelar's most trusted advisor. (Unbelievable...what a fool.)~ */
		IF ~!Global("#L_SoDStat_TreatiseFound","GLOBAL",2)~ THEN REPLY @2065 /* ~Pieces of the puzzle are falling into place.  Thank you, Edwin.  You've been invaluable.~ */ GOTO OF_COURSE_1
		IF ~Global("#L_SoDStat_TreatiseFound","GLOBAL",2)~ THEN REPLY @2067 /* ~Of course he is.  This just keeps getting better and better.  Thank you, Edwin.  That was an invaluable piece of information.~ */ GOTO OF_COURSE_2
	END
	
	IF ~~ THEN BEGIN OF_COURSE_1
		SAY @2066 /* ~Of course I have.  I always am.~ */
		IF ~~ THEN DO ~SetGlobal("#L_SoDStat_HephUmbral","GLOBAL",2) 
SetGlobal("#L_SoDStat_HephUmbral","LOCALS",2)
SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",2)~ EXIT
	END
	
	IF ~~ THEN BEGIN OF_COURSE_2
		SAY @2068 /* ~Of course.  You expected anything less from me? (I should hope not!)~ */
		IF ~~ THEN DO ~SetGlobal("#L_SoDStat_HephUmbral","GLOBAL",2)
SetGlobal("#L_SoDStat_HephUmbral","LOCALS",2)
 SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",2)~ EXIT
	END
END

////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue file to be used by whomever in the party meets the requirements of the moment //
////////////////////////////////////////////////////////////////////////////////////////////
BEGIN ~#LS0Temp~
	IF ~Global("#L_SoDStat_TreatiseFound","GLOBAL",1)~ THEN BEGIN READ_HISTORICAL_TREATISE
		SAY @2000 /* ~What is this?  Did you see this, <CHARNAME>?~ */
		= @2001 /* ~This book you found says there's a portal leading to Avernus under Dragonspear Castle.~ */
		= @2002	/* ~Not only that, but that it can be opened using the blood that has the essense of a god.~ */
		= @2003	/* ~Is that what Caelar has in mind?  Opening a portal to Avernus?  Is she mad?!~ */
		++ @2004 /* ~Ugh, so that's what she's up to.  I think you're right.  I think she's lost her mind.~ */ DO ~SetGlobal("#L_SoDStat_TreatiseFound","GLOBAL",2)~ GOTO NOT_BHAALSPAWN
	END
	
	IF ~~ THEN BEGIN NOT_BHAALSPAWN
		SAY @2007 /* ~If Caelar was a child of Bhaal as rumors suggest, she'd have opened the portal already.  It appears the rumors are false.~ */
		IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN JOURNAL @3000 EXIT
		IF ~!Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN JOURNAL @3005 EXIT
	END

	// If PC isn't the sharpest tool in the shed, but someone in the group is, have them tell the PC to ask Eltan about Dauston
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",1) Global("#L_SoDStat_DaustonPrompt","MYAREA",1) !Name("Dynaheir",MYSELF)~ THEN BEGIN PROMPT_PC_ABOUT_DAUSTON
		SAY @2010 /* ~<CHARNAME>, perhaps you should talk to Duke Eltan about that fallen paladin we spoke to...Dauston.~ */
		IF ~~ THEN DO ~SetGlobal("#L_SoDStat_DaustonPrompt","MYAREA",2)~ UNSOLVED_JOURNAL @3002 EXIT
	END

	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",1) Global("#L_SoDStat_DaustonPrompt","MYAREA",1) Name("Dynaheir",MYSELF)~ THEN BEGIN PROMPT_PC_ABOUT_DAUSTON
		SAY @2011 /* ~<CHARNAME>, perhaps thou shouldst talk to Duke Eltan about the unfortunate fallen paladin we spoke to...Dauston.~ */
		IF ~~ THEN DO ~SetGlobal("#L_SoDStat_DaustonPrompt","MYAREA",2)~ UNSOLVED_JOURNAL @3002 EXIT
	END
// END of new #LS0Temp

////////////////////////////////////////////////////
// Dialogue with Caelar at the Coast Way Crossing //
////////////////////////////////////////////////////
EXTEND_BOTTOM BDCAELAR 10
	IF ~Global("#L_SoDStat_TreatiseFound","GLOBAL",2) Global("#L_SoDStat_DaustonTalk","GLOBAL",3)~ THEN REPLY @2030 DO ~SetGlobal("bd_plot","global",170) ChangeAIScript("bdcutsce",OVERRIDE)~ GOTO 23
	IF ~Global("#L_SoDStat_TreatiseFound","GLOBAL",2) !Global("#L_SoDStat_DaustonTalk","GLOBAL",3)~ THEN REPLY @2035 DO ~SetGlobal("bd_plot","global",170) ChangeAIScript("bdcutsce",OVERRIDE)~ GOTO 11
END

ALTER_TRANS BDCAELAR
	BEGIN 12 END
	BEGIN 0 1 END
	BEGIN "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~ END
EXTEND_BOTTOM BDCAELAR 12
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @2040 /* ~You were what brought me here-...~ */ DO ~IncrementGlobal("bd_mdd420_good","global",3)~ GOTO 14
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @2041 /* ~Destiny, and the poison dripping ....*/ GOTO 14
END

ALTER_TRANS BDCAELAR
	BEGIN 13 END
	BEGIN 1 END
	BEGIN "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~ END
EXTEND_BOTTOM BDCAELAR 13
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @2042 /* ~In fairness, you did attack me first.~ */ GOTO 14
END

ALTER_TRANS BDCAELAR
	BEGIN 14 END
	BEGIN 0 END
	BEGIN "TRIGGER" ~CheckStatGT(Player1,14,INT) !Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ END
ALTER_TRANS BDCAELAR
	BEGIN 14 END
	BEGIN 1 END
	BEGIN "TRIGGER" ~!CheckStatGT(Player1,14,INT) !Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ END
EXTEND_BOTTOM BDCAELAR 14
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @2036 /*	~How is the fact you tried to kidnap me instead of kill me make you any less an enemy?~ */ GOTO 15
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1) Global("#L_Snark","GLOBAL",1)~ THEN REPLY @2037 /* ~Since your goal was to capture and not kill me we should the be best of friends? Seriously?~ */ GOTO 15
END

/* I think this question is still valid even if the PC assumes to know
ALTER_TRANS BDCAELAR
	BEGIN 16 21 END
	BEGIN 1 END
	BEGIN "TRIGGER" ~!Global("#L_SoDStat_TreatiseFound","GLOBAL",2)~ END
*/

EXTEND_BOTTOM BDCAELAR 26
	IF ~Global("#L_SoDStat_DaustonTalk","GLOBAL",3)~ THEN REPLY @2031 DO ~IncrementGlobal("bd_mdd420_good","global",5)~ GOTO 33
END

EXTEND_BOTTOM BDCAELAR 33
	IF ~GlobalGT("#L_SoDStat_HephUmbral","GLOBAL",0)~ THEN GOTO ONLY_I_CAN_CHALLENGE_FIENDS
END

APPEND BDCAELAR
	IF ~~ THEN BEGIN ONLY_I_CAN_CHALLENGE_FIENDS
		SAY #%eet_2%56585 /* ~Only I can challenge the fiends of the Nine Hells. I must carry my mission out to its end.~ [BD56585] */
		IF ~~ THEN REPLY @2032 /* ~If you plan on fighting these fiends, then why is one of their servants standing right behind you?~ */ EXTERN ~BDHEPHER~ HEPH_COUGH 
	END
	
	IF ~~ THEN BEGIN WONT_LISTEN
		SAY @2034 /* ~Hephernaan? No. I will not listen to unfounded accusations against my most trusted advisor!~ */
		IF ~Global("#L_Snark","GLOBAL",1) OR(2) GlobalLT("#L_SoDStat_HephUmbral","GLOBAL",2) GlobalLT("#L_SodStat_HephAdvisor","GLOBAL",2)~ THEN REPLY @2038 /* ~That agent of the Umbral Accord is your most trusted advisor?  Oh, this just keeps getting better and better!~ */ DO ~SetGlobal("#L_SoDStat_HephUmbral","GLOBAL",2) SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",2)~ GOTO 34
		IF ~~ THEN REPLY @2039 /* ~Then you're a fool as well.  It's not gods that are on your side, but demons.~ */ DO ~SetGlobal("#L_SoDStat_HephUmbral","GLOBAL",2) SetGlobal("#L_SodStat_HephAdvisor","GLOBAL",2)~ GOTO 34
	END
END

APPEND BDHEPHER
	IF ~~ THEN BEGIN HEPH_COUGH
		SAY @2033 /* ~(*cough*)~ */
		IF ~~ THEN EXTERN ~BDCAELAR~ WONT_LISTEN
	END
END

