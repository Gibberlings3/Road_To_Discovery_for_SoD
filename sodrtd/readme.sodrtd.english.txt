------------------------------------------------
--- Road to Discovery for BG:SoD and EET:SoD ---
------------------------------------------------

by jastey
with one component from Lauriel

LIST OF CONTENTS
--CONTENTS
--DESCRIPTION OF COMPONENTS
--COMPATIBILITY NOTE
--NOTE TO ALL TRANSLATORS AND GERMAN PLAYERS
--INSTALLATION
--OVERVIEW ON TRACKED KNOWLEDGE
--VARIABLE SYSTEM: GENERAL DESCRIPTION FOR MODDERS
--CREDITS
--USED TOOLS AND RESSOURCES
--HISTORY
--COPYRIGHT NOTE


CONTENTS

This Tweak Mod is for the SoD campaign (also with native EET compatibility).
It serves two purposes.

For players, this mod aims to make the coalition forces aware of Caelar's and Hephernaan's plans with focus on the actual important aim and danger of the crusade, and give reply options with which the PC can inform the coalition forces about what is going on. For this, all bits and pieces of information the PC can gather along the campaign are tracked and evaluated. Journal entries give an overview on what information the PC already gathered.
All in all, this mod is supposed to connect the dots so the PC is able to tell about all the inside info they gathered as well as have the coalition officers acknowledge and react to the actual danger(s).

For modders, this mod introduces a variable-based tracking system about the different levels of knowledge the PC and the coalition officers gain throughout the campaign, which could be used for own mods, e.g. for fine tuning mod NPCs reactions to the depths of gained information about Caelar, Hephernaan, and the crusade, but also the Hooded Man's appearances. Also, own reaction mods based on any components of Road to Discovery can be developped by whoever wants to, as long as those mods make (components of) RtD a prerequisite and do not include changed content of this mod nor tweak any of RtD original writing.

The mod is modular so every player as well as modder can chose how much changes and content they want to see/use.

The following lists the information from the SoD campaign this mod is considering. For detailed description of the used variables and the exact definition of the tracked infomation see below:
-What is the main purpose of the crusade - what is Caelar proclaiming, and what is it really?
-What truth lies in Caelar's proclamation - and her crusaders' belief - that Caelar protects the crusade with "divine powers of the pantheon"?
-What is the background of Caelar's life and family, and how does it influence her motives?
-Is Caelar a Bhaal Spawn?
-Caelar is being betrayed? By who?
-What are Hephernaan's plans?
-The Hooded Man is stalking the PC, and why?
-What does Caelar and Hephernaan want with the PC?
-What was the attack in the palace with the weak poison for?


DESCRIPTION OF COMPONENTS 

The mod consists of 9 components, most of them optional.

1 Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod
---------------------------------------------

This imports the component "Add Stat-Based Observations and Quest Options" from Lauriel's Themed Tweaks Mod. Install this if you want more depth and consistent reactions to the following ingame occurrences with regard to making the gained information aware to the group:
- Duke Jannath's info about weak poison of Caelar's palace assassins (and all later reply options about Caelar trying to have the PC killed in the palace): PC realizes the attack was not meant to kill;
- treatise about portal below Dragonspear Castle: reactions from NPCs to the revelations about the portal beneath Dragonspear Castle and how to open it;
- have Edwin identify Hephernaan (including his plans) in the scry pool before having met him in persona;
- make the Dukes question the fallen paladin Dauston to learn more about Caelar's background - and motives.
-The component also adds some more reply options at appropriate places to reflect the PC's experiences, e.g. tell the Dukes after meeting the Hooded Man inside the palace.
If the component is installed via Themed Tweaks, it will be skipped here.
This component is optional. 
Note: This component works without any of the other components. 
Component 2 "Main Component" will also provide the needed basic tracking variables for the listed ingame occurrences in case this component is not installed. 
Installing component 1 (or the same component of Themed Tweaks) is recommended for the whole ingame experience.

2 Main Component: Tracking System
---------------------------------------------
Component 2 is the main component of Road to Discovery which inserts the variable-based tracking system as well as journal entry handling for the level of knowledge this mod is tracking as described below.
This component adds no reactions or reply options, on its own it has no effect for players.
Note: This component is required for all following components and would be the base for any other mods that want to make use of the information tracking system.

3 Consistency Changes to Game Dialogues
---------------------------------------------
Component 3 disables reply options from the original game that do not make sense any more if the PC has more in-depth knowledge about the ongoings. For example, having met Hephernaan at Coast Way Crossing, it doesn't make sense to have a reply option that lets the PC ask "Hepher-who?" when talking to Edwin, or let them say "What could [Caelar] want with me?" after the parley at Dead Man's Pass if they already know exactly what Caelar needs the PC for. This component does not add new content / reply options, this is done in component 5 "Give PC Informed Reply Options".
This component is optional.
Note: any references to Caelar's assassins trying to "kill" the PC although the weakness of the poison is known are not changed by this component. Install Lauriel's "Add Stat-Based Observations and Quest Options" component for this, either via RtD or Themed Tweaks.

4 Officers Are Aware
---------------------------------------------
Component 4 adds my view on what the officers would know when along the campaign without the PC telling them. From the first meeting at the big coalition camp we know they interrogate captured crusaders, for example, and the original dialogue with De Lancie reveals their own investigations about Caelar. 
Nevertheless, this component focusses on keeping officers' knowledge of the crusade's goals and secrets at an absolute minimum not to spoil the ingame experience of the PC being the one revealing the really crucial intel.
Note: This component does *not* add any reactions to the officers, it just adds the level of their knowledge and awareness so it can be used in the later components.
This component is optional but needed for component 7 "Add Officers Reactions".

5 Give PC Informed Reply Options
---------------------------------------------
This component adds consistent reply options to relevant game dialogues which reflect the PC's status of knowledge. For one it adds according reply options where component 3 "Consistency Changes to Game Dialogues" removed the unfitting ones except for the mentioned instances with regard to the weak poison that is content of Lauriel's "Add Stat-Based Observations and Quest Options from Themed Tweaks Mod". Component 5 also adds informed reply options at places where the PC talks about the ongoings with ingame characters, but it adds no options to inform the officers about the PC's findings, this is done in component 6 "PC Can Tell the Officers".
This component is optional.
It requires component 3 "Consistency Changes to Game Dialogues" and needs to be installed after component 4 "Officers Are Aware" if component 4 is installed.

6 PC Can Tell the Officers
---------------------------------------------
This component adds the possibility for the PC to inform the Dukes and officers about the gathered information throughout the campaign with regard to the tracked information (e.g. Caelar's deeper plans, Hephernaan's betrayal, the portal and the needed Bhaal blood, and the Hooded Man). Officers will aknowledge the information and give short remarks as a reply. Apart from that, there is no changes to dialogues or other additions. For further, in-depth reactions of the officers, install component 7 "Add Officers Reactions".
Characters the PC can tell about Caelar's plans with this component are:
-Captain Corwin before the castle assault (i.e. the first three camps areas), if she is not in party.
-Corporal Bence Duncan in the first two camps (Coast Way Crossing and Troll Claw Woods) when he is available.
-Torsin De Lancie when available.
-Marshal Nederlok in the big coalition camp (bd3000).
This component is optional but needed for component 7 "Add Officers Reactions".

7 Add Officers Reactions
---------------------------------------------
This component is my view on how the officers should react to the crusade's main purpose depending on how much they know.
Component 7 adds reactions of the officers to the threat in dialogues depending on how much information they got about the ongoings regarding the crusade and the other instances considered as described below: There will be new dialogue lines at the gathering of the three officers General Stonehand, Marshal Nederlok, and Torsin De Lancie in the big coalition camp, reactions of the three upong hearing about the portal and the PC's role to open it, the officers will ask the PC to look out for more detailed knowledge about Caelar's plans, the parley with Caelar will go differently if the officers know about what Caelar needs the Bhaal blood for, etc.
This component is optional and also needs components 4 "Make Officers Aware", as well as 6 "PC can tell the officers". 

8 Additional Info Points
---------------------------------------------
Component 8 adds a few more possibilities to gather information about Caelar's plans not considered in component 1 "Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod". For example, crusaders in the castle encampment can be asked more explicitely about the crusade's plans, and the "blessing ritual" in the camp at Boareskyr Bridge can be analysed if a cleric or paladin is in the group.
This component is optional.

9 Add Additional Communication with Officers
---------------------------------------------
Component 9 adds a custom character, Sir Deggernaut, who moves along the campaign from camp to camp for direct communication so the PC can always tell their findings independent on avilability of original game officers due to campaign progress. His dialogue features also a possibility to ask him about the status of the officers' knowledge, where he will list everything the officers are aware of at this point - which might be more than the PC found out depending on campaign progress. 
Sir Deggernaut can be found by the camp tents in the first two camps, and near Mizhena in the big coalition camp.
This component is optional and also needs components 4 "Officers Are Aware", as well as 6 "PC can tell the officers". 
Please note: This was meant as a feature to simplify reporting to the officers, especially in the first two camps where Bence Duncan is not always present, but due to how Sir Deggernaut's dialogue is focussed on the status of information about the crusade, his presence could feel more like a debug feature, and less like a real ingame character.

 


COMPATIBILITY NOTE

Install Road to Discovery very late in install order. This mod should be installed AFTER the following mods:
-Themed Tweaks
-Jastey's SoD Tweakpack
-any mod that adds reply options or transactions to SoD, like NPC mods or story tweak mods.

Road to Discovery has native EET compatibility and needs to be installed before EET_End.


NOTE TO ALL TRANSLATORS AND GERMAN PLAYERS

Translators: please note that all tra-files are in utf8 conversion. Also, please refer to the "note_to_translators.txt" inside sodrtd/docs.

The German version is consistent to the fan-made "Deutsche Übersetzung für SoD". This means, that names and terms could differ from the official German version shipped with the game. Install "Deutsche Übersetzung für SoD" for a consistent game experience.
Download Link: https://baldurs-gate.de/index.php?resources/deutsche-%C3%9Cbersetzung-f%C3%BCr-sod.49/


INSTALLATION

NOTE: If you've previously installed the mod, remove it before extracting a new version. To do this, uninstall all previously installed components and delete the mod folder and executables. 

When installing or uninstalling, do not close the DOS window by clicking on the X button! Instead, press the Enter key when instructed to do so.

BG:EE
If you use SoD from GOG or Steam, you need to prepare your game with DLC Merger or modmerge before installing any mods:
argent77's DLC Merger:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

modmerge (if in doubt, use the DLC Merger instead):
https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1

General (Windows, Mac OS X, and Linux)

Extract the contents of the mod archive to your game's main directory. 
NOTE: For Enhanced Edition it is important that you istall the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.

Windows
On successful extraction, there should be an sodrtd folder and a setup-sodrtd.exe file in your game folder. To install, simply double-click setup-sodrtd.exe and follow the instructions on screen.
Run setup-sodrtd.exe in your game folder to reinstall, uninstall or otherwise change components.

Mac OS X
The Tweak Pack is packaged and installed with WeiDU. To install, extract the mod archive, then copy of the contents of the folder into your game folder (the folder which contains the CHITIN.KEY file). If properly extracted, you should have a "sodrtd" folder, setup-sodrtd, and setup-sodrtd.command in your game folder. To install, simply double-click setup-sodrtd.command and follow the instructions on screen.

Linux
Extract the contents of the mod to the folder of the game you wish to modify. Download the latest version of WeiDU for Linux from https://github.com/WeiDUorg/weidu/releases and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal and cd to your BG2 installation directory, run 'tolower' and answer Y to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. If you're unsure, running tolower and choosing both options is the safe bet.
Run WeInstall sodrtd in your game folder to install the mod. Then run wine BGMain.exe and start playing. 

NOTE: BG(II):EE are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update as even after reinstalling the mods, you might not be able to continue with your old savegames. 

If you have installation problems or encounter any bugs, please post your bug report in one of the forum threads.


OVERVIEW ON TRACKED KNOWLEDGE

The following game story events are being tracked. Note to modders: the variables are also listed in "docs/outline_sod_variables.txt".

PC's knowledge:
------------------------------------------

--Caelar being betrayed? ("C#RtD_CaelarBetrayal"):
0 - PC doesn't know that Caelar is betrayed by someone in her crusade
1 - PC knows that Caelar is betrayed by someone in her crusade, that there is a deeper level to the crusade's purpose she has no influence on

--Caelar Child of Bhaal? ("C#RtD_CaelarBhaalChild"):
0 - PC didn't hear rumor yet
1 - PC heard rumors that Caelar is a child of Bhaal
2 - PC reasons / concludes / speculates that [rumors that Caelar is a child of Bhaal] is not true
3 - PC knows that [rumors that Caelar is a child of Bhaal] is not true

--Caelar Blessed by the Gods? ("C#RtD_CaelarGodBless"):
0 - PC didn't hear rumor yet
1 - PC heard rumor about Caelar being divinely blessed
2 - PC knows that Caelar claims to be blessed by "the pantheon" / all gods /several gods
3 - PC knows that [Caelar claims to be blessed by "the pantheon" / all gods /several gods] is false

--Caelar trying to kidnap PC? ("C#RtD_CaelarKidnap"): 
0 - PC didn't discuss weak poison yet
1 - PC discussed with someone/NPCs that Caelar's assassin probably wanted to kidnap PC in Palace (instead of killing)

--Caelar's Plan ("C#RtD_CaelarPlan"):
0 - PC isn't aware of Caelar's crusade yet
1 - PC acknowledges the existance of the crusade which is rampaging through the lands
2 - PC knows that they want to free souls from Dragonspear War from Avernus
3 - PC knows that they are planning on marching into Avernus
4 - PC knows that they are planning on opening a portal at Dragonspear Castle to enter Avernus
5 - PC speculates that Caelar wants to save her uncle Aun Argent from Avernus
6 - PC knows that the whole purpose of the crusade is all for Aun Argent

--Caelar's Protection of Crusaders ("C#RtD_CaelarProtection"):
0 - PC didn't hear rumor yet
1 - PC heard rumor about Caelar/divine forces through Caelar protecting the crusade
2 - PC knows that her followers believe that the gods are protecting Caelar and them
3 - PC watched Hormorn's "blessing" in Bridgefort camp
4 - PC knows that [the gods are protecting Caelar and them] is a lie 

--Caelar Wants PC ("C#RtD_CaelarWantsPC"): 
1 - PC assumes that Caelar wants to capture the PC [alive]
2 - PC Knows that Caelar has plans for the PC / wants the PC for [something]

--Hephernaan's Betrayal ("C#RtD_HephernaanBetrayal"):
0 - PC doesn't know that [a man called] Hephernaan is betraying Caelar
1 - PC knows that [a man called] Hephernaan is betraying Caelar
2 - PC knows that Hephernaan [who is Caelar's advisor] is betraying Caelar

--Hephernaan's real Master ("C#RtD_HephernaanFiend"):
0 - PC doesn't know that [a man being called] Hephernaan is working for a fiend to open the portal
1 - PC knows that [a man being called] Hephernaan is working for a fiend to open the portal
2 - PC knows that Hephernaan [who is Caelar's advisor] is working for a fiend to open the portal 
3 - PC knows that Hephernaan [who is Caelar's advisor] is working for Belhifet

--Who is "Hephernaan"? ("C#RtD_HephernaanIdentity"):
0 - PC couldn't connect face and name of Hephernaan yet or didn't meet/hear about him at all
1 - PC knows Hephernaan by name and face and that he is Caelar's advisor

--PC heard Hephernaan's Name ("C#RtD_HephernaanName"):
0 - PC never heard Hephernaan's name
1 - PC heard Hephernaan's name in connection with Caelar

--PC saw Hephernaan's Face in scrypool scene / knows he is working for Umbral Accord ("C#RtD_HephernaanVisual"):
0 - PC never saw Hephernaan's face
1 - PC knows that [a man looking like] Hephernaan is working with Umbral/a fiend
2 - PC knows that Hephernaan [who is Caelar's advisor] is working with Umbral Accord

--Aun's and Caelar's Story ("C#RtD_KnowsAunArgent"):
0 - No knowledge that Caelar had an uncle named Aun and something happened 
1 - PC knows that Caelar had an uncle named Aun and something happened
2 - PC heard rumors about Caelar being disgraced from Aster Order at the same time as Aon vanished
3 - PC knows that Caelar was in Avernus and came back at the same time Aun vanished
4 - PC knows that Aun took place for Caelar in Avernus

--Hooded Man's Motives to stalk PC ("C#RtD_KnowsHoodedMan"):
0 - PC does not know why the Hooded Man is stalking them or haven't met the Hooded Man at all
1 - PC knows that Hooded Man is stalking PC because of Bhaal heritage
2 - PC knows that Hooded Man killed Skie

--Portal beneath Dragonspear Castle and how to Open it ("C#RtD_KnowsPortalBlood"):
0 - No knowledge about portal at all
1 - PC heard about a portal/rift in Dragonspear Castle
2 - PC knows that blood of Bhaal child is needed/sufficient to open portal to Avernus under DC
3 - PC reasons / concludes / speculates that Caelar / Hephernaan want PC's blood for [open portal to Avernus] -- also for [C#RtD_WantBhaalBlood = 2]
4 - PC knows that Caelar / Hephernaan want PC's blood for [open portal to Avernus] -- also for [C#RtD_WantBhaalBlood = 3]

--PC met Hooded Man ("C#RtD_MetHoodedMan"):
0 - PC didn't meet Hooded Man at all
1 - PC met Hooded Man once
2 - PC met Hooded Man more than once

--Caelar needs PC's Blood ("C#RtD_WantBhaalBlood"):
0 - PC doesn't know Caelar / Hephernaan want the PC's Bhaal child blood [for something]
1 - PC knows that Caelar / Hephernaan want the PC's Bhaal child blood [for something]
2 - PC reasons / concludes / speculates that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal -- also for [C#RtD_KnowsPortalBlood = 3]
3 - PC knows that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal -- also for [C#RtD_KnowsPortalBlood = 4]

--Poison of Palace Attack too Weak to Kill ("C#RtD_WeakPoison"):
0 - PC is not aware that the poison was too weak to kill
1 - PC knows that poison from palace assassins was too weak to kill

Knowledge of Dukes and coalition officers:
------------------------------------------

Caelar being betrayed? ("C#RtD_CoalCaelarBetrayal"):
1 - Dukes and officers know that Caelar is betrayed by someone in her crusade, that there is a deeper level to the crusade's purpose - PC told them
2 - Dukes and officers know that Caelar is betrayed by someone in her crusade, that there is a deeper level to the crusade's purpose - heard it elsewhere 

--Caelar Bhaal Child? ("C#RtD_CoalCaelarBhaalChild"):
1 - Dukes and officers heard rumors that Caelar is a child of Bhaal
2 - Dukes and officers reason / conclude / speculate that [rumors that Caelar is a child of Bhaal] is not true - PC told them
3 - Dukes and officers reason / conclude / speculate that [rumors that Caelar is a child of Bhaal] is not true - heard it elsewhere
4 - Dukes and officers know that [rumors that Caelar is a child of Bhaal] is not true - PC told them
5 - Dukes and officers know that [rumors that Caelar is a child of Bhaal] is not true - heard it elsewhere

--Caelar Blessed by the Gods? ("C#RtD_CoalCaelarGodBless"):
1 - Dukes and officers know rumor about Caelar being divinely blessed
2 - Dukes and officers know that Caelar claims to be blessed by "the pantheon" / all gods /several gods - PC told them
3 - Dukes and officers know that Caelar claims to be blessed by "the pantheon" / all gods /several gods - heard it elsewhere
4 - Dukes and officers know that [Caelar claims to be blessed by "the pantheon" / all gods /several gods] is false - PC told them
5 - Dukes and officers know that [Caelar claims to be blessed by "the pantheon" / all gods /several gods] is false - heard it elsewhere

--Caelar trying to kidnap PC? ("C#RtD_CoalCaelarKidnap"):
1 - PC told Dukes and officers idea about kidnapping in Palace (instead of killing)
2 - Dukes and officers heard elsewhere/deducted themselves (e.g. after hearing of needed Bhaal Blood to open the portal or after "CaelarWantsPC" is "1")

--Caelar's Plan ("C#RtD_CoalCaelarPlan"):
1 - Dukes and officers acknowledged the existence of the crusade which is rampaging through the lands 
2 - Dukes and officers know that they want to free souls from Dragonspear War from Avernus - PC told them
3 - Dukes and officers know that they want to free souls from Dragonspear War from Avernus - heard it elsewhere
4 - Dukes and officers know that they are planning on marching into Avernus - PC told them
5 - Dukes and officers know that they are planning on marching into Avernus - heard it elsewhere
6 - Dukes and officers know that they are planning on opening a portal at Dragonspear Castle to enter Avernus - PC told them
7 - Dukes and officers know that they are planning on opening a portal at Dragonspear Castle to enter Avernus - heard it elsewhere
8 - Dukes and officers speculate that Caelar wants to save her uncle Aun Argent from Avernus - PC told them
9 - Dukes and officers speculate that Caelar wants to save her uncle Aun Argent from Avernus - heard it elsewhere
10 - Dukes and officers know that the whole purpose of the crusade is all for Aun Argent - PC told them
11 - Dukes and officers know that the whole purpose of the crusade is all for Aun Argent - heard it elsewhere

--Caelar's Protection of Crusaders ("C#RtD_CoalCaelarProtection"):
1 - Dukes and officers heard rumor about Caelar protecting the crusade
2 - Dukes and officersknow that her followers believe that the gods are protecting Caelar and them - PC told them
3 -  Dukes and officersknow that her followers believe that the gods are protecting Caelar and them - heard it elsewhere
4 -  Dukes and officersknow about Hormorn's "blessing" in Bridgefort camp - PC told them 
5 - Dukes and officers know "CaelarProtection" is a lie - PC told them
6 - Dukes and officers know "CaelarProtection" is a lie - heard it elsewhere

--Caelar Wants PC ("C#RtD_CoalCaelarWantsPC"):
1 - Dukes and officers assume that Caelar wants to capture the PC [alive] - PC told them
2 - Dukes and officers assume that Caelar wants to capture the PC [alive] - heard it elsewhere
3 - Dukes and officers know that Caelar has plans for the PC / wants the PC for [something] - PC told them
4 - Dukes and officers know that Caelar has plans for the PC / wants the PC for [something] - heard it elsewhere

--Hephernaan's Betrayal ("C#RtD_CoalHephernaanBetrayal"):
1 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is betraying Caelar - PC told them
2 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is betraying Caelar - heard it elsewhere

--Hephernaan's real Master ("C#RtD_CoalHephernaanFiend"):
1 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is working for a fiend to open the portal - PC told them
2 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is working for a fiend to open the portal - heard it elsewhere 
3 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is working for Belhifet - PC told them
4 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is working for Belhifet - heard it elsewhere 

--Who is "Hephernaan"? ("C#RtD_CoalHephernaanIdentity"):
1 - Dukes and officers know Hephernaan by name and face and that he is Caelar's advisor - heard it elsewhere

--Hephernaan's Face working for Umbral Accord ("C#RtD_CoalHephernaanVisual"):
1 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is working with Umbral Accord - PC told them
2 - Dukes and officers know that Hephernaan [who is Caelar's advisor] is working with Umbral Accord - heard it elsewhere 


--Aun's and Caelar's Story ("C#RtD_CoalKnowsAunArgent"):
1 - Dukes and officers heard rumors about Caelar being disgraced from Aster Order at the same time as Aun vanished - PC told them
2 - Dukes and officers heard rumors about Caelar being disgraced from Aster Order at the same time as Aun vanished - heard it elsewhere 
3 - Dukes and officers know that Caelar was in Avernus and came back at the same time Aun vanished - PC told them
4 - Dukes and officers know that Caelar was in Avernus and came back at the same time Aun vanished - heard it elsewhere
5 - Dukes and officers know that Aun took place for Caelar in Avernus - PC told them
6 - Dukes and officers know that Aun took place for Caelar in Avernus - heard it elsewhere

--Hooded Man's Motives to stalk PC ("C#RtD_CoalKnowsHoodedMan"):
1 - Dukes and officers know that Hooded Man is stalking PC because of Bhaal heritage - PC told them
2 - Dukes and officers know that Hooded Man is stalking PC because of Bhaal heritage - heard it elsewhere
3 - Dukes and officers know that Hooded Man killed Skie - PC told them
4 - Dukes and officers know that Hooded Man killed Skie - heard it elsewhere

--Portal beneath Dragonspear Castle and how to Open it ("C#RtD_CoalKnowsPortalBlood"):
1 - Dukes and officers heard about a portal/rift in Dragonspear Castle - PC told them
2 - Dukes and officers heard about a portal/rift in Dragonspear Castle - heard it elsewhere 
3 - Dukes and officers know that blood of Bhaal child is needed/sufficient to open portal to Avernus under DC - PC told them
4 - Dukes and officers know that blood of Bhaal child is needed/sufficient to open portal to Avernus under DC - heard it elsewhere 
5 - Dukes and officers reason / conclude / speculate that Caelar / Hephernaan want PC's blood for [open portal to Avernus] - PC told them -- also for [C#RtD_CoalWantBhaalBlood = 3]
6 - Dukes and officers reason / conclude / speculate that Caelar / Hephernaan want PC's blood for [open portal to Avernus] - heard it elsewhere -- also for [C#RtD_CoalWantBhaalBlood = 4]
7 - Dukes and officers know that Caelar / Hephernaan are planning PC's blood for [open portal to Avernus] - PC told them -- also for [C#RtD_CoalWantBhaalBlood = 5]
8 - Dukes and officers know that Caelar / Hephernaan are planning PC's blood for [open portal to Avernus] - heard it elsewhere -- also for [C#RtD_CoalWantBhaalBlood = 6]

--PC met Hooded Man ("C#RtD_CoalMetHoodedMan"):
1 - Dukes and officers know that PC met Hooded Man - PC told them
2 - Dukes and officers know that PC met Hooded Man - heard it elsewhere
3 - Dukes and officers know that PC met Hooded Man more than once - PC told them
4 - Dukes and officers know that PC met Hooded Man more than once - heard it elsewhere

--Caelar needs PC's Blood ("C#RtD_CoalWantBhaalBlood"):
1 - Dukes and officers know that Caelar / Hephernaan want the PC's Bhaal child blood - PC told them
2 - Dukes and officers know that Caelar / Hephernaan want the PC's Bhaal child blood - heard it elsewhere 
3 - Dukes and officers reason / conclude / speculate that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal - PC told them -- also for [C#RtD_CoalKnowsPortalBlood = 5]
4 - Dukes and officers reason / conclude / speculate that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal- heard it elsewhere -- also for [C#RtD_CoalKnowsPortalBlood = 6]
5 - Dukes and officers know that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal - PC told them -- also for [C#RtD_CoalKnowsPortalBlood = 7]
6 - Dukes and officers know that Caelar / Hephernaan want the PC's Bhaal child blood for opening the portal - heard it elsewhere -- also for [C#RtD_CoalKnowsPortalBlood = 8] 

--Poison of Palace Attack too Weak to Kill ("C#RtD_CoalWeakPoison"):
1 - Dukes and officers know that poison was too weak to kill - heard it elsewhere


VARIABLE SYSTEM: GENERAL DESCRIPTION FOR MODDERS

Note: "C#" is my personal prefix. The tracking variables should be used as they are named inside Road to Discovery. But for own mod projects, use your own perfix. If you do not have an own personal prefix yet, register one for yourself (link below).

The first time the evaluation script is called, the variable Global("C#RtD_RoadToDiscovery","GLOBAL",1) is set for other mods to check for the variables tracking system.

For TRACKING the knowledge the PC and the coalition forces have about the game events, use the variables *without* postfix "_SET" in your mod.

For FEEDING variables from your mod in case your mod offers new ways to learn about game events, set the variables *with* the postfix "_SET" in your mod. Do not set the varibales without the postfix "_SET" in your mod, as it could screw up the overall variable and journal system.
For every instance, the global variable which triggers the evaluation script "C#RtD_VariableEvaluation" has to be set to "1", as well. 
Example:
In Dynaheir's meeting dialogue, she says a line about hearing the rumor of Caelar being a child of Bhaal (bddynahe, state 20): "I know of this woman. There are those who believe her to be a daughter of the divine—perhaps even a child of Bhaal... She merits further investigation, and is the reason I still linger in the region. When dost thou leave?". 
We want the variable "C#RtD_CaelarBhaalChild" to be evaluated to "1" if the PC didn't hear about this yet. So what we do is we add the action:
DO ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~.
The variable Global("C#RtD_VariableEvaluation","GLOBAL",1) will trigger the evaluation script (via bdbaldur.bcs). The variable Global("C#RtD_CaelarBhaalChild_SET","GLOBAL",1) will then be checked, and the overall tracking variable "C#RtD_CaelarBhaalChild" will be set to 1 if it was still at 0.
Using the variables with the postfix "_SET" ensures that knowledge is not lost: in our example, if the variable would be already at "2", i.e. the PC already knows that Calear is no child of Bhaal, then this dialogue with Dynaheir should not revert the overal tracking variable to "1". Therefore we work with two sets of variables - one with the postfix along with the trigger of the evaluation script, and one without it that only gets evaluated inside the evaluation script - to ensure no information is reverted to a less informed state.


CREDITS

Frenzgyn - Italian translation (new lines v1)
improb@bile - Italian translation (v0.7 Beta)
jastey - author, main mod head
JohnBob - French translation (v1)
Lauriel - author of component 1, ideas, design help, proofreading English (v0.1 Beta) 
Machiavélique - proofreading French (v0.4 Beta)
Shai Hulud - German translation (v0.2 Beta)

Thanks to BioWare, Black Isle and Wizards of the Coast for Baldur's Gate 1, 2 and the Infinity Engine, and BeamDog for the revival of the games including the SoD campaign.
Thanks to Kerzenburgforum and GibberlingsThree for giving a place for exchange of ideas and technical advice.
Thanks to all modders who developed and are maintaining the IE modding tools, without which this mod would not have been possible.
Thanks to all who play this mod or any of my mods, and also those of you who give feedback to help improving my mods. Modding would not be as much fun without you.
I totally mean this although I use this text modules in other readmes, too! :-)


USED TOOLS AND RESSOURCES

The SoD Road to Discovery Mod was created using the resources provided by the IESDP (https://gibberlings3.github.io/iesdp/index.htm) and with the following software:

Near Infinity		https://github.com/Argent77/NearInfinity/releases/latest
WeiDU			http://www.weidu.org
grepWin			http://tools.stefankueng.com/grepWin.html
Notepad++		https://notepad-plus-plus.org/downloads/

Further links, modding communities, tutorials, technical assistance, walkthroughs used while creating this mod:

Kerzenburgforum				https://www.baldurs-gate.de/index.php
The Gibberlings Three			http://gibberlings3.net
Pocket Plane Group			http://pocketplane.net
Spellhold Studios			http://www.shsforums.net/

Lauriel's Themed Tweak Mod
https://github.com/lzenner/themed_tweaks/releases

Jastey's SoD Tweak Mod
https://www.gibberlings3.net/mods/tweaks/jasteys-sod-tweak-pack/

jastey's SoD NPC Modding Tutorials:
https://www.gibberlings3.net/forums/topic/30139-jasteys-sod-npc-modding-tutorials/

SoD Walkthrough at GameBanshee http://www.gamebanshee.com/baldursgate/walkthrough/sod-korlaszstomb.php

Filename Prefix Reservation List
https://www.gibberlings3.net/forums/topic/1649-community-filename-prefix-reservations/


HISTORY

Version 1.0
- Scrypool Scene with Hephernaan will no longer lead to hints about fiend master. PC can tell officers about "Umbral Accord" instead.
- Scrypool Scene will no longer lead to conclusion that Hephrnaan is betraying Caelar.
- Sir Deggernaut will have appropriate scripts in camps.
- Added extra reply option to Daeros dialogue to learn about fiend master. Hearing about "dark creature in mirror" will no longer lead to this knowledge directly.
- Variable "C#RtD_HephernaanVisual" has value of 2: "PC knows that Hephernaan [who is Caelar's advisor] is working with Umbral Accord"; added "C#RtD_CoalHephernaanVisual" accordingly; updated readme and docs with description.
- Updated links in sodrtd.ini.

Version 0.8 Beta
- Updated Themed Tweaks "Add stat-based observations and options" component to TT v0.4: Info about fallen paladin Dauston should be available if Corwin joins the party at first camp, too; Edwin's dialogue about scrying pool scene should close propely.
- Dialogue with officers in bd3000.are should not skip parts if PC has nothing to report, and thre should be no doubled reply options.
- Viconia's or Glint's interjection into PC's self-talk about crusader camp "blessing" should not break the dialogue.
- Marshal Nederlok should be aware there were already two fiend wars at Dragonspear Castle.
- Sir Deggernaut's dialogue should not double reply options.
- Optimized variable triggers for PC's conclusions regarding Caelar's plans.

Version 0.7 Beta
- added Italian version by improb@bile 
- refined variable triggers for conclusion that Caelar is no child of Bhaal.

Version 0.6 Beta
- Cutscene in Dragonspear Basement should not loop if one of the new reply options is chosen.
- Reply options should cycle back to correct dialogues states in all cases.

Version 0.5 Beta
- Fixed installation problems if "Add Stat-Based Observations and Quest Options" component was installed via Themed Tweaks mod.
- Component 1 "Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod" updated to changes v0.2: Wrong variable references fixed; Reply option about Hooded Man inside the palace will only show if the Hooded Man was inide the palace; Added WEIGHT #-1 to Edwin's dialogue so it won't get blocked; cutscene changed to make texts better readable; setting of variable for generic NPC dialogues will not loop; Corrected string reference error for BG:SoD.
- Corrected oversights in scripts and dialogues: wrong variable values, missing setting of variables, missing interconnections in scripts.
- Scripting generally improved for compatibility.
- assumptions and speculations will no longer be triggered by script but will offered as reply options with the officers.
- Component "Add Additional Communication with Officers": Sir Deggernaut can be asked to list all new and already known facts separately.
- Silenced ingame debug notifications about variables evaluation.
- Corrcted remnants to other mod names in readme.

Version 0.4 Beta
- added French version by JohnBob, proofreading by Machiavélique

Version 0.3 Beta
- new reply option of Jastey's SoD Tweakpack (v6) will be tagged accordingly.
- restructured tp2 so dependent components will be deinstalled automatically if main component is deinstalled.

Version 0.2 Beta
- German version added, by Shai Hulud
- added a paragraph "note to all translators and German players" to readme
- removed the tra handling: no copying to "autotra" folder; no iconv convertion; tra-files are in utf8.

Version 0.1 Beta
-first public release


COPYRIGHT NOTE

This mod was created to be freely enjoyed by all Baldur's Gate II players, and its content is free of rights. However, it should not be sold, published, compiled or redistributed in any form without the consent of the authors.
Please note that any and all redistribution and/or hosting of this mod is prohibited without permission from the authors.
The modding community for the Infinity Engine has been going strong for more than 10 years now, and is the culmination of thousands of unpaid modding hours by fellow fans of the game. Modders produce their best work and players get the best, well-supported mods when we all work together.
There are two big ways to upset this harmony. One is to claim someone else's work as your own. The second is to host and redistribute a mod without permission from the author(s).
Be kind to your fellow players and modders. Don't do either.

================================================================================
Road to Discovery mod for SoD is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC.
This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.
================================================================================