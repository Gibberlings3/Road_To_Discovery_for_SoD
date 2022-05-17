///////////////////////////////////////////////////////
// Dialogue changes for stat based options           //
// with regard to the poison used by Caelar's elites //
///////////////////////////////////////////////////////


/* this needs to be compiled first so the COPY_TRANS grabs the yet unchanged transactions from state 14 */
APPEND BDLIIA
	IF ~~ THEN LIIA_WEAK_POISON
		SAY @101 /* ~Hmm, you may be right.~ */
		COPY_TRANS BDLIIA 14
	END

	IF ~~ THEN LIIA_YES_WEAK_POISON
		SAY @103 /* ~Yes, the poison they used was far too weak to accomplish that.~ */
		+ ~Global("#L_PCMetIreniInRoom","GLOBAL",1)~ + @104 /* ~Their purpose was to capture me.  I have no idea why.~ */ EXTERN ~BDBELT~ BELT_WEAK_POISON1
		+ ~!Global("#L_PCMetIreniInRoom","GLOBAL",1)~ + @104 /* ~Their purpose was to capture me.  I have no idea why.~ */ EXTERN ~BDBELT~ BELT_WEAK_POISON2
	END
END

// Have the PC realize the poison was too weak to act as a means of assassination
ALTER_TRANS BDLIIA
	BEGIN 14 END 
	BEGIN 0 END
	BEGIN
		"TRIGGER" ~CheckStatLT(Player1,16,WIS) CheckStatLT(Player1,16,INT)~ 
	END
EXTEND_BOTTOM BDLIIA 14
	IF ~OR(2) CheckStatGT(Player1,15,WIS) CheckStatGT(Player1,15,INT)~ THEN REPLY @100	/* ~They used a weak poison?  That makes no...they weren't trying to kill me.  They were trying to capture me.~ */ DO ~SetGlobal("#L_SoDStat_WeakPoison","GLOBAL",1)~ GOTO LIIA_WEAK_POISON
END

ALTER_TRANS BDLIIA
	BEGIN 15 END
	BEGIN 2 END
	BEGIN
		"TRIGGER" ~CheckStatLT(Player1,16,WIS) CheckStatLT(Player1,16,INT)~ 
	END

// Final palace conversation
EXTEND_BOTTOM BDENTAR 41 
	IF ~!Global("#L_SoDStat_WeakPoison","GLOBAL",0)~ THEN REPLY @102 /* ~Before I leave, I need to point out that Caelar's minions weren't here to kill me.~ */ EXTERN ~BDLIIA~ LIIA_YES_WEAK_POISON
	IF ~Global("#L_PCMetIreniInRoom","GLOBAL",1) Global("#L_SoDStat_WeakPoison","GLOBAL",0) Global("#L_Snark","GLOBAL",0)~ THEN REPLY @107 /* ~Before I leave, I have some disturbing news.  I received a visitor here in the palace. It seems a mysterious hooded man is stalking me.~ */ EXTERN ~BDBELT~ BELT_SORRY
	IF ~Global("#L_PCMetIreniInRoom","GLOBAL",1) Global("#L_SoDStat_WeakPoison","GLOBAL",0) !Global("#L_Snark","GLOBAL",0)~ THEN REPLY @107 /* ~Before I leave, I have some disturbing news.  I received a visitor here in the palace. It seems a mysterious hooded man is stalking me.~ */ EXTERN ~BDBELT~ BELT_SAME_HOODED_MAN
END

APPEND BDBELT
	IF ~~ THEN BELT_WEAK_POISON1
		SAY @105 /* ~That is disturbing news.~ */
		IF ~Global("#L_Snark","GLOBAL",0)~ THEN REPLY @106 /* ~Even more disturbing was the visitor I had.  It seems a mysterious hooded man is stalking me.~ */ + BELT_SORRY
		IF ~!Global("#L_Snark","GLOBAL",0)~ THEN REPLY @106 /* ~Even more disturbing was the visitor I had.  It seems a mysterious hooded man is stalking me.~ */ + BELT_SAME_HOODED_MAN
	END

	IF ~~ THEN BELT_WEAK_POISON2
		SAY @105 /* ~That is disturbing news.~ */
		IF ~~ EXTERN ~BDENTAR~ 42
	END

	IF ~~ THEN BELT_SAME_HOODED_MAN
		SAY @108 /* ~Could it be the same that commissioned the theft of Sarevok's sword?~ */
		++ @109 /* ~Well, he certainly fit the description.  Mysterious...creepy is closer to the truth.  And ominous.~ */ + BELT_SORRY
	END

	IF ~~ THEN BELT_SORRY
		SAY @110 /* ~I must apologize, <CHARNAME>.  It seems our palace security never ceases to fail you.~ */
		IF ~~ EXTERN ~BDENTAR~ 42
	END
END

ALTER_TRANS BDELTAN
	BEGIN 10 END
	BEGIN 1 END
	BEGIN
		"TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDELTAN 10
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @111 /* ~I'm still not accustomed to people attacking me for no apparent reason, but I could be worse.~ */ GOTO 11
END

ALTER_TRANS BDELTAN
	BEGIN 13 END
	BEGIN 2 END
	BEGIN
		"TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDELTAN 13
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @112 /* ~Not for long. Caelar tried to poison me. She will answer for it.~ */ GOTO 14
END

ALTER_TRANS BDSCHAEL
	BEGIN 162 END
	BEGIN 4 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDSCHAEL 162
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @113 /* ~Someone tried to poison me tonight and I'm in a bar. Hells no, I'm not finished.~ */ GOTO 166
END

ALTER_TRANS BDCORWIJ
	BEGIN 251 END
	BEGIN 2 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDCORWIJ 251
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @114 /* ~Believe this, if nothing else: Caelar Argent tried to poison me and I will pay her back in kind. If you would see the Shining Lady fall, then we are allies, regardless of our history or bloodlines.~ */ GOTO 252
END

ALTER_TRANS BDCORWIN
	BEGIN 11 END
	BEGIN 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDCORWIN 11
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @115 /* ~Caelar attacked me and nearly killed my friend Imoen. That cannot stand.~ */GOTO 12
END

ALTER_TRANS BDDYNAHE
	BEGIN 23 END
	BEGIN 0 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDDYNAHE 23
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @116 /* ~She tried to poison me. She very nearly killed someone I care deeply for. I can't let that stand.~ */ GOTO 24
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @117 /* ~I've little choice in the matter. She sent assassins to try and poison me this morning.~ */ GOTO 24
END

ALTER_TRANS BDDYNAHE
	BEGIN 30 END
	BEGIN 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDDYNAHE 30
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @118 /* ~Caelar the Shining Lady tried to poison me. I can't let that stand. ~ */ GOTO 31
END

ALTER_TRANS BDDYNAHE
	BEGIN 33 END
	BEGIN 0 2 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDDYNAHE 33
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @119 /* ~As would I. Unfortunately, all I really know of her is that she's driven thousands from their homes and she attacked me and Imoen.~ */ GOTO 34
END
EXTEND_BOTTOM BDDYNAHE 33
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @120 /* ~She attacked me and Imoen, and she will pay for that mistake. That is all you need to know.~ */ GOTO 35
END

ALTER_TRANS BDGARRIC
	BEGIN 38 END
	BEGIN 0 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDGARRIC 38
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @121 /* ~We've yet to meet, but I know Caelar all too well. Agents in her service attacked me.~ */ GOTO GARRICK_ATTACK
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @122 /* ~I know of it, yes, but not enough. Assassins bearing Caelar's mark attacked me in the ducal palace, no less.~ */ GOTO GARRICK_ATTACK
END

APPEND BDGARRIC
	IF ~~ THEN BEGIN GARRICK_ATTACK
		SAY @123 /* ~She attacked the hero of Baldur's Gate? A bold move, but a risky one. Failure would surely draw you into the conflict...~ */
		IF ~~ THEN REPLY #234520 /* ~It would seem she judged the risk worth the reward.~ */ GOTO 40
		IF ~~ THEN REPLY #234521 /* ~It has done exactly that. The only question is whether you will join me in this venture.~ */ GOTO 42
		IF ~~ THEN REPLY #234522 /* ~While success would ensure I wasn't. Whatever her reasons, she must pay her actions.~ */ GOTO 41
	END
END

ALTER_TRANS BDRASAAD
	BEGIN 22 END
	BEGIN 0 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDRASAAD 22
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @124	/* ~Agents of Caelar Argent attacked me and Imoen—at the Ducal Palace.~ */ GOTO 23
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @125 /* ~The assassins who attacked me and Imoen a few hours ago. Though it must be said they trouble me less now than they did then.~ */ GOTO 44
END

ALTER_TRANS BDRASAAD
	BEGIN 36 END
	BEGIN 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDRASAAD 36
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @126 /* ~Any day you can get to breakfast without assassins trying to poison you is a good day. Or so I've heard.~ */ GOTO POISON_FOR_BREAKFAST
END

APPEND BDRASAAD
	IF ~~ THEN BEGIN POISON_FOR_BREAKFAST
		SAY @127 /* ~The day's first meal is important. It sets the tone for what is to come— Wait. Are you saying someone tried to poison you?~ */
		COPY_TRANS BDRASAAD 35
	END

	IF ~~ THEN BEGIN RASAAD_ATTACK
  		SAY @132 /* ~You say Caelar Argent attacked you? But why?~ */
		COPY_TRANS BDRASAAD 40
	END
END

ALTER_TRANS BDRASAAD
	BEGIN 38 END
	BEGIN 1 2 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDRASAAD 38
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY #234637 /* ~The Shining Lady Caelar happened. Or assassins who bore her mark did, at any rate.~ */ GOTO RASAAD_ATTACK
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @128 /* ~Assassins in service to Caelar Argent penetrated the Ducal Palace and attempted to poison me.~ */ GOTO 25
END

ALTER_TRANS BDRASAAD
	BEGIN 39 END
	BEGIN 0 1 2 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDRASAAD 39
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @129 /* ~Like them, my life has suffered from her malign influence. Her assassins tried to poison me earlier. They nearly succeeded.~ */ GOTO RASAAD_ATTACK
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @130 /* ~Has she sent multiple assassins to poison any of them? Because that's what she did to me.~ */ GOTO RASAAD_ATTACK
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @131 /* ~These people have run from their troubles. I intend to face mine. Caelar tried to poison me this morning.~ */ GOTO RASAAD_ATTACK
END

ALTER_TRANS BDRASAAD
	BEGIN 32 END
	BEGIN 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDRASAAD 32
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @133 /* ~Imoen was nearly killed earlier this evening. But she wasn't, so all things considered I guess I'm doing well.~ */ GOTO 37
END

ALTER_TRANS BDRASAAD
	BEGIN 45 END
	BEGIN 1 END
	BEGIN "EPILOGUE" ~GOTO RASAAD_ATTACK~ END

ALTER_TRANS BDRASAAD
	BEGIN 46 47 END
	BEGIN 0 END
	BEGIN "EPILOGUE" ~GOTO RASAAD_ATTACK~ END

ALTER_TRANS BDSAFANA
	BEGIN 44 END
	BEGIN 1 END
	BEGIN
	  "TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDSAFANA 44
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @134 /* ~Earlier this night, assassins penetrated the Ducal Palace and attempted to poison me. They were sent by Caelar Argent.~ */ GOTO 46
END

ALTER_TRANS BDEDWIN
	BEGIN 21 END
	BEGIN 1 2 3 END
	BEGIN
		"TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDEDWIN 21
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @135 /* ~Once again, I find myself dragged into events. Caelar Argent seeks to capture me.~ */ GOTO 39
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @136	/* ~Caelar Argent tried to poison me, and now I'm trying to pay her back. Childish, yes, ...~ */ GOTO 32
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1) Global("#L_HistoricalTreatise","GLOBAL",0)~ THEN REPLY @137 /* ~I know not why, but Caelar Argent tried to poison me. ...~ */ GOTO 32
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1) Global("#L_HistoricalTreatise","GLOBAL",1)~ THEN REPLY @138 /* ~For reasons I don't care to go into, ...~ */ GOTO 32
END

ALTER_TRANS BDEDWIN
	BEGIN 31 36 END
	BEGIN 1 2 END
	BEGIN
		"TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDEDWIN 31
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @136	/* ~Caelar Argent tried to poison me, and now I'm trying to pay her back. Childish, yes, ...~ */ GOTO 32
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @139	/* ~I am <CHARNAME>. The Shining Lady tried to poison me. Obviously, she failed, ...~ */ GOTO 32
END
EXTEND_BOTTOM BDEDWIN 36
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @136	/* ~Caelar Argent tried to poison me, and now I'm trying to pay her back. Childish, yes, ...~ */ GOTO 32
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1) Global("#L_HistoricalTreatise","GLOBAL",0)~ THEN REPLY @141 /* ~I am <CHARNAME>. I know not why, but the Shining Lady has targeted me...~ */ GOTO 32
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1) Global("#L_HistoricalTreatise","GLOBAL",1)~ THEN REPLY @142 /* ~I am <CHARNAME>. For reasons I don't care to go into...~ */ GOTO 32
END

ALTER_TRANS BDEDWIN
	BEGIN 35 END
	BEGIN 2 END
	BEGIN
		"TRIGGER" ~Global("#L_SoDStat_WeakPoison","GLOBAL",0)~
	END
EXTEND_BOTTOM BDEDWIN 35
	IF ~Global("#L_SoDStat_WeakPoison","GLOBAL",1)~ THEN REPLY @140 /* ~The Shining Lady attacked me. Now it is my turn.~ */ GOTO 32
END
	



