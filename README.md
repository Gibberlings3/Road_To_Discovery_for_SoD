# Road To Discovery
## Connect the SoD Story Dots: make PC and officers aware of and talk about the crusade's real purpose!

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

-What does Caelar and Hephrnaan want with the PC?

-What was the attack in the palace with the weak poison for?


## DESCRIPTION OF COMPONENTS 

The mod consists of 9 components, most of them optional.

### 1 Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod
---------------------------------------------

This imports the component "Add Stat-Based Observations and Quest Options" from Lauriel's Themed Tweaks Mod. Install this if you want more depth and consistent reactions to the following ingame occurrences with regard to making the gained information aware to the group:
- Duke Jannath's info about weak poison of Caelar's palace assassins (and all later reply options about Caelar trying to have the PC killed in the palace): PC realizes the attack was not meant to kill;
- treatise about portal below Dragonspear Castle: reactions from NPCs to the revelations about the portal beneath Dragonspear Castle and how to open it;
- have Edwin identify Hephernaan (including his plans) in the scry pool before having met him in persona;
- make the Dukes question the fallen paladin Dauston to learn more about Caelar's background - and motives.
-The component also adds some more reply options at appropriate places to reflect the PC's experiences, e.g. tell the Dukes after meeting the Hooded Man inside the palace.
If the component is installed via Themed Tweaks, it will be skipped here.
This component is optional. 
Note: This component works without any of the other components. Component 2 "Main Component" will also provide the needed basic tracking variables for the listed ingame occurrences in case this component is not installed. Installing component 1 (or the same component of Themed Tweaks) is recommended for the whole ingame experience.

### 2 Main Component: Tracking System
---------------------------------------------
Component 2 is the main component of Road to Discovery which inserts the variable-based tracking system as well as journal entry handling for the level of knowledge this mod is tracking as described below.
This component adds no reactions or reply options, on its own it has no effect for players.
Note: This component is required for all following components and would be the base for any other mods that want to make use of the information tracking system.

### 3 Consistency Changes to Game Dialogues
---------------------------------------------
Component 3 disables reply options from the original game that do not make sense any more if the PC has more in-depth knowledge about the ongoings. For example, having met Hephernaan at Coast Way Crossing, it doesn't make sense to have a reply option that lets the PC ask "Hepher-who?" when talking to Edwin, or let them say "What could [Caelar] want with me?" after the parley at Dead Man's Pass if they already know exactly what Caelar needs the PC for. This component does not add new content / reply options, this is done in component 5 "Give PC Informed Reply Options".
This component is optional.
Note: any references to Caelar's assassins trying to "kill" the PC although the weakness of the poison is known are not changed by this component. Install Lauriel's "Add Stat-Based Observations and Quest Options" component for this, either via RtD or Themed Tweaks.

### 4 Officers Are Aware
---------------------------------------------
Component 4 adds my view on what the officers would know when along the campaign without the PC telling them. From the first meeting at the big coalition camp we know they interrogate captured crusaders, for example, and the original dialogue with De Lancie reveals their own investigations about Caelar. 
Nevertheless, this component focusses on keeping officers' knowledge of the crusade's goals and secrets at an absolute minimum not to spoil the ingame experience of the PC being the one revealing the really crucial intel.
Note: This component does *not* add any reactions to the officers, it just adds the level of their knowledge and awareness so it can be used in the later components.
This component is optional but needed for component 7 "Add Officers Reactions".

### 5 Give PC Informed Reply Options
---------------------------------------------
This component adds consistent reply options to relevant game dialogues which reflect the PC's status of knowledge. For one it adds reply options where component 3 "Consistency Changes to Game Dialogues" removed the unfitting ones except for the mentioned instances with regard to the weak poison that is content of Lauriel's "Add Stat-Based Observations and Quest Options from Themed Tweaks Mod". Component 5 also adds informed reply options at places where the PC talks about the ongoings with ingame characters, but it adds no options to inform the officers about the PC's findings, this is done in component 6 "PC Can Tell the Officers".
This component is optional.
It requires component 3 "Consistency Changes to Game Dialogues" and needs to be installed after component 4 "Officers Are Aware" if component 4 is installed.

### 6 PC Can Tell the Officers
---------------------------------------------
This component adds the possibility for the PC to inform the Dukes and officers about the gathered information throughout the campaign with regard to the tracked information (e.g. Caelar's deeper plans, Hephernaan's betrayal, the portal and the needed Bhaal blood, and the Hooded Man). Officers will aknowledge the information and give short remarks as a reply. Apart from that, there is no changes to dialogues or other additions. For further, in-depth reactions of the officers, install component 7 "Add Officers Reactions".
Characters the PC can tell about Caelar's plans with this component are:
-Captain Corwin before the castle assault (i.e. the first three camps areas), if she is not in party.
-Corporal Bence Duncan in the first two camps (Coast Way Crossing and Troll Claw Woods) when he is available.
-Torsin De Lancie when available.
-Marshal Nederlok in the big coalition camp (bd3000).
This component is optional but needed for component 7 "Add Officers Reactions".

### 7 Add Officers Reactions
---------------------------------------------
This component is my view on how the officers should react to the crusade's main purpose depending on how much they know.
Component 7 adds reactions of the officers to the threat in dialogues depending on how much information they got about the ongoings regarding the crusade and the other instances considered as described below: There will be new dialogue lines at the gathering of the three officers General Stonehand, Marshal Nederlok, and Torsin De Lancie in the big coalition camp, reactions of the three upong hearing about the portal and the PC's role to open it, the officers will ask the PC to look out for more detailed knowledge about Caelar's plans, the parley with Caelar will go differently if the officers know about what Caelar needs the Bhaal blood for, etc.
This component is optional and also needs components 4 "Make Officers Aware", as well as 6 "PC can tell the officers". 

### 8 Additional Info Points
---------------------------------------------
Component 8 adds a few more possibilities to gather information about Caelar's plans not considered in component 1 "Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod". For example, crusaders in the castle encampment can be asked more explicitely about the crusade's plans, and the "blessing ritual" in the camp at Boareskyr Bridge can be analysed if a cleric or paladin is in the group.
This component is optional.

### 9 Add Additional Communication with Officers
---------------------------------------------
Component 9 adds a custom character, Sir Deggernaut, who moves along the campaign from camp to camp for direct communication so the PC can always tell their findings independent on avilability of original game officers due to campaign progress. His dialogue features also a possibility to ask him about the status of the officers' knowledge, where he will list everything the officers are aware of at this point - which might be more than the PC found out depending on campaign progress. 
Sir Deggernaut can be found by the camp tents in the first two camps, and near Mizhena in the big coalition camp.
This component is optional and also needs components 4 "Make Officers Aware", as well as 6 "PC can tell the officers". 


## COMPATIBILITY NOTE

Install Road to Discovery very late in install order. This mod should be installed AFTER the following mods:

-Themed Tweaks

-Jastey's SoD Tweakpack

-any mod that adds reply options or transactions to SoD, like NPC mods or story tweak mods.

Road to Discovery has native EET compatibility and needs to be installed before EET_End.


## COPYRIGHT NOTE

This mod was created to be freely enjoyed by all Baldur's Gate II players, and its content is free of rights. However, it should not be sold, published, compiled or redistributed in any form without the consent of the authors.
Please note that any and all redistribution and/or hosting of this mod is prohibited without permission from the authors.
The modding community for the Infinity Engine has been going strong for more than 10 years now, and is the culmination of thousands of unpaid modding hours by fellow fans of the game. Modders produce their best work and players get the best, well-supported mods when we all work together.
There are two big ways to upset this harmony. One is to claim someone else's work as your own. The second is to host and redistribute a mod without permission from the author(s).
Be kind to your fellow players and modders. Don't do either.

Road to Discovery mod for SoD is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC.
This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.

