------------------------------------------------
--- Road to Discovery ( Rapport de Mission ) pour BG:SoD et EET:SoD ---
------------------------------------------------

Par Jastey
Avec un composant par Lauriel

Sommaire
--Contenu
--Description des composants
--Compatibilité
--REMARQUE CONCERNANT LA COMPATIBILITÉ AVEC TO THEMED TWEAKS
--NOTE TO ALL TRANSLATORS AND GERMAN PLAYERS
--Installation
--OVERVIEW ON TRACKED KNOWLEDGE
--VARIABLE SYSTEM: GENERAL DESCRIPTION FOR MODDERS
--CREDITS
--HISTORY
--COPYRIGHT NOTE


Contenu

Ce Tweak Mod est destiné à la campagne SoD ( il dispose également d'une compatibilité native avec EET).
Il sert deux objectifs.

Pour les joueurs, ce mod a pour but de faire connaître aux forces de la coalition les plans de Caelar et d'Hephernaan en se concentrant sur le projet principal de la croisade et le danger qu'elle représente, il permet de donner des options de réponse avec lesquelles le PC peut informer les forces de la coalition des événements en cours. Pour cela, toutes les informations que le PC recueille au cours de la campagne sont suivies et évaluées. Les entrées du journal donnent un aperçu des informations que le PC a déjà recueillies.
Dans l'ensemble, ce mod est censé relier les points pour que le PC soit capable de raconter toutes les informations qu'il a recueillies et que les officiers de la coalition reconnaissent et réagissent concrètement au(x) danger(s).

Pour les moddeurs, ce mod introduit un système de suivi basé sur des variables concernant les différents niveaux de connaissances que le PC et les officiers de la coalition acquièrent tout au long de la campagne, Ce système pourrait être utilisé dans vos propres mods, par exemple pour affiner les réactions des PNJ ajoutés par des mods par rapport aux informations acquises sur Caelar, Hephernaan, et la croisade, mais aussi pour les apparitions de l'Homme à la Capuche. De ce fait, il est possible pour qui le souhaite de développer des mods basés les réactions de Road to Discovery, tant que ces mods font de RtD un prérequis et n'incluent pas de contenu modifié ni ne modifient le contenu original de RtD.

Le mod a plusieurs composants afin que chaque joueur et chaque moddeur puissent choisir le nombre de changements et le contenu qu'il souhaite voir ou utiliser.

La liste suivante énumère les informations de la campagne SoD que ce mod prend en compte. Pour une description détaillée des variables utilisées et la définition exacte des informations suivies, voir ci-dessous :
- Quel est le but principal de la croisade - Qu'est-ce que Caelar proclame, et qu'en est-il réellement ?
- Quelle est la vérité dans la proclamation de Caelar et les croyances de ses croisés - est-ce que Caelar protège la croisade avec des "pouvoirs divins du panthéon" ?
- Quel est le contexte de la vie et de la famille de Caelar, et comment cela influence ses motivations ?
- Caelar est-elle une enfant de Bhaal ?
- Caelar est trahie ? Par qui ?
- Quels sont les plans d'Hephernaan ?
- L'homme à la Capuche traque le PC, et pourquoi ?
- Qu'est-ce que Caelar et Hephernaan veulent au PC ?
- À quoi a servi l'attaque au palais avec un poison si faible ?


Description des composants

Le mod est constitué de 8 éléments, dont la plupart sont facultatifs.

1 Composant principal : Système de Pistage.
---------------------------------------------
Ce composant est le composant principal de Road to Discovery. Il intègre un système de suivi basé sur des variables ainsi que le traitement des entrées de journal pour les connaissances pistées/suivies grâce à ce module, comme décrit ci-dessous.
Ce composant n'ajoute aucune réaction ou option de réponse, à lui seul il n'a aucun effet sur les joueurs.
Note : Ce composant est requis pour tous les composants suivants et sera la base pour tous les autres mods qui veulent utiliser le système de pistage des informations.

2 Changements dans les dialogues du jeu pour plus de cohérence.
---------------------------------------------
Ce composant désactive les options de réponse du jeu original qui n'ont plus de sens si le PC a une connaissance plus approfondie de ce qui se passe. Par exemple, après avoir rencontré Hephernaan au Pont de la Voie Côtière, il n'est pas utile d'avoir une option de réponse qui permette au PC de demander "Hepher-qui ?" lorsqu'il parle à Edwin, ou de le laisser dire "Que pourrait me vouloir Caelar ?" après les pourparlers au Défilé du Trépassé s'il sait déjà exactement ce que Caelar veut. Ce composant n'ajoute pas de nouveaux contenus / options de réponse, ceci est fait dans le composant "Donner au PC des options de réponse informée".
Ce composant est facultatif.
Note : toute référence aux assassins de Caelar essayant de "tuer" le PC bien que la faiblesse du poison soit connue n'est pas modifiée par ce composant. Installez le composant "Observations basées sur des statistiques et options de quête" tiré du mod Themed Tweaks de Lauriel pour cela, du Themed Tweaks.

3 Les officiers sont plus attentifs.
---------------------------------------------
Ce composant ajoute mon point de vue sur ce que les officiers pourraient savoir au cours de la campagne sans que le PC ne le leur ait dit. Dès la première rencontre au camp de commandement de la coalition, nous savons qu'ils interrogent les croisés capturés, et le dialogue original avec De Lancie révèle leurs propres enquêtes sur Caelar. 
Néanmoins, ce composant se concentre sur la connaissance des officiers concernant les objectifs et les secrets de la croisade mais dans une mesure minimale pour ne pas gâcher l'expérience de jeu du PC qui est celui qui révélera les informations vraiment cruciales.
Note : Ce composant n'ajoute *pas* de nouvelles réactions aux officiers, il ajoute simplement le niveau de leurs connaissances et de leur conscience afin qu'ils puissent être utilisés dans les composants ultérieurs.
Ce composant est facultatif mais nécessaire pour le composant "Ajouter des interactions aux officiers.".

4 Donnez au PC des options de réponse avisée.
---------------------------------------------
Ce composant ajoute des options de réponse cohérentes aux dialogues de jeu qui reflètent l'état des connaissances du PC. D'une part, il ajoute des options de réponse appropriées là où le composant "Changements dans les dialogues du jeu pour plus de cohérence" a supprimé celles qui ne convenaient pas, à l'exception des exemples mentionnés concernant le poison faible qui est le contenu du composant "Observations basées sur des statistiques et options de quête" tiré du mod Themed Tweaks de Lauriel.
Ce composant ajoute également des options de réponse avisée aux endroits où le PC parle de ce qui se passe avec des personnages du jeu, mais il n'ajoute aucune option pour informer les officiers des conclusions du PC, ce qui est fait dans le composant "Le PC peut informer les officiers".
Ce composant est facultatif.
Il nécessite le composant "Changements dans les dialogues du jeu pour plus de cohérence" et doit être installé après le composant "Les officiers sont plus attentifs" si l'est installé.

5 Le PC peut informer les officiers.
---------------------------------------------
Ce composant ajoute la possibilité pour le PC d'informer les Ducs et les officiers des informations recueillies tout au long de la campagne en ce qui concerne les informations suivies ( les plans plus secrets de Caelar, la trahison d'Hephernaan, le portail, le sang de Bhaal et l'Homme à la Capuche). Les agents prendront connaissance des informations et donneront de brèves remarques en guise de réponse. En dehors de cela, il n'y a pas de modification des dialogues ou d'autres ajouts. Pour des réactions plus approfondies des officiers, installez le composant "Ajouter les réactions des officiers".
Les personnages que le PC peut informer des plans de Caelar avec ce composant sont :
-Capitaine Corwin avant l'assaut du château (c'est-à-dire les trois premiers camps), si elle n'est pas dans le groupe.
-Le Caporal Bence Duncan dans les deux premiers camps (Pont de la Voie Côtière et Bois des Griffes de Troll) quand il est disponible.
-Torsin De Lancie lorsqu'il est disponible.
-Le Maréchal Nederlok dans le grand camp de la coalition (bd3000).
Ce composant est facultatif mais nécessaire pour le composant "Ajouter des réactions d'officiers".

6 Ajouter des interactions aux officiers.
---------------------------------------------
Ce composant reflète mon point de vue sur la façon dont les officiers devraient réagir à l'objectif principal de la croisade, en fonction de ce qu'ils savent.
Ce composant ajoute les réactions des officiers, face à la menace, dans les dialogues, en fonction des informations qu'ils ont obtenues sur les événements concernant la croisade et les autres instances considérées comme décrites ci-dessous : Il y aura de nouvelles lignes de dialogue lors de la réunion des trois officiers, le Général Stonehand, le Maréchal Nederlok et Torsin De Lancie, dans le grand camp de la coalition. Les réactions des trois officiers en entendant parler du portail et du rôle du PC pour l'ouvrir, les officiers demanderont au PC de chercher des informations plus détaillées sur les plans de Caelar, les pourparlers avec Caelar se dérouleront différemment si les officiers savent pourquoi Caelar a besoin du sang de Bhaal, etc.
Ce composant est facultatif et nécessite également les composants "Les officiers sont plus attentifs.", ainsi que "Le PC peut informer les officiers."

7 Points d'information supplémentaires.
---------------------------------------------
Ce composant ajoute quelques possibilités supplémentaires pour recueillir des informations sur les plans de Caelar et qui n'ont pas été prises en compte dans le composant "Observations basées sur des statistiques et options de quête tirées" du mod Themed Tweaks de Lauriel. Par exemple, les soldats qui se trouvent dans le château peuvent être interrogés de manière plus explicite sur les plans de la croisade, et le "rituel de bénédiction" dans le camp du pont de Boarskyr peut être analysé si un clerc ou un paladin se trouve dans le groupe.
Ce composant est facultatif.

8 Ajouter de nouvelles discussions avec les officiers.
---------------------------------------------
Ce composant ajoute un personnage personnalisé, Sir Deggernaut, qui se déplace tout au long de la campagne, de camp en camp, pour une communication directe, afin que le PC puisse toujours raconter ses découvertes, indépendamment de la disponibilité des officiers du jeu d'origine en raison de la progression de la campagne. Dans son dialogue, il est également possible de l'interroger sur l'état des connaissances des officiers. Il énumérera tout ce que les officiers savent à ce stade - ce qui peut être plus que ce que le PC a découvert en fonction de la progression de la campagne. 
Sir Deggernaut peut être trouvé près des tentes des deux premiers camps, et près de Mizhena dans le grand camp de la coalition.
Ce composant est facultatif et nécessite également les composants "Les officiers sont plus attentifs.", ainsi que "Le PC peut informer les officiers." 

Remarque : cette fonctionnalité a été conçue pour faciliter la communication avec les officiers, en particulier dans les deux premiers camps où Bence Duncan n'est pas toujours présent, mais étant donné que le dialogue de Sir Deggernaut est focalisé sur les informations relatives à la croisade, sa présence peut donner l'impression d'être une fonctionnalité de débogage plutôt qu'un véritable personnage du jeu.


REMARQUE CONCERNANT LA COMPATIBILITÉ AVEC TO THEMED TWEAKS

Le composant "1 Observations basées sur des statistiques et options de quête tirées du mod Themed Tweaks de Lauriel." a été supprimé à partir de la version 6.0.

Cependant, le composant "Observations basées sur des statistiques et options de quête tirées" du mod Themed Tweaks réel sera toujours considéré comme auparavant, même si le composant lui-même n'est plus doublé dans les ressources du mod Road to Discovery.

Installez ce composant si vous voulez des réactions plus approfondies et cohérentes aux événements du jeu, en faisant attention à ce que les informations obtenues soient communiquées au groupe :
- Les  informations de la Duchesse Jannath sur le poison trop faible, utilisé par les assassins de Caelar (et toutes les options de réponse ultérieures sur Caelar essayant de faire tuer le PC dans le palais) : Le PC réalise que l'attaque n'était pas destinée à tuer ;
- Un traité d'histoire sur le portail sous le château Paldragon : réactions des PNJ aux révélations sur le portail et sur la façon de l'ouvrir ;
- Faire en sorte qu'Edwin identifie Hephernaan (y compris ses plans) dans le bassin de scrutation avant même de l'avoir rencontré ;
- Faire en sorte que les Ducs interrogent le paladin déchu Dauston pour en savoir plus sur le passé - et les motivations de Caelar.
- Le composant ajoute également des options de réponse supplémentaires aux endroits appropriés pour refléter les expériences du PC, par exemple, informer les Ducs après avoir rencontré l'Homme à la Capuche dans le palais.

Remarque : Le composant 2 "Composant principal" fournira également les variables de suivi nécessaires pour les occurrences en jeu énumérées précédemment au cas où ce composant ne serait pas installé. 


Compatibilité

Installer Road to Discovery vers la fin de votre installation. Ce mod doit être installé APRÈS les mods suivants:
- Themed Tweaks
- Jastey's SoD Tweakpack
- Tout mod ajoutant des options de réponse supplémentaires ou des changements à SoD, comme les mods NPC ou les mods modifiant l'intrigue.

Road to Discovery est compatible EET et doit être installé avant EET_End.


NOTE TO ALL TRANSLATORS AND GERMAN PLAYERS

Translators: please note that all tra-files are in utf8 conversion. Also, please refer to the "note_to_translators.txt" inside sodrtd/docs.

The German version is consistent to the fan-made "Shai Huluds Text-Patch". This means, that names and terms could differ from the official German version shipped with the game. Install the fan made SoD translation for a consistent game experience.
Download Link: https://www.baldurs-gate.de/index.php?threads/shai-huluds-text-patch.45417/


Installation

NOTE: Si vous avez déjà installé le mod, supprimez-le avant d'extraire une nouvelle version. Pour cela: désinstallez tous les composants installés précédemment via le setup, et supprimez le dossier du mod ainsi que les exécutables. 

Quand vous installez ou désinstallez le mod, ne fermez pas la fenêtre DOS en cliquant sur la croix ! Au lieu de ça, appuyez sur "entrer" quand cela est demandé.


BG:EE
Si vous utilisez SoD depuis GoG ou Steam, vous devez préparer votre jeu avec DLC Merger ou modmerge avant d'installer n'importe quel mod:
DLC Merger par argent77 :
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

modmerge (en cas de doute, utilisez le DLC Merger à la place):
https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1

 
Général (Windows, Mac OS X, and Linux)

Extrayez le contenu de l'archive du mod dans le dossier de votre jeu. 
NOTE: Pour les Enhanced Edition, il est important d'installer les mods dans le langage que vous utilisez dans le jeu. Autrement, les dialogues provenant des mods seront affichés sous forme de messages d'erreurs.


Windows
Après extraction, vous devriez trouver dans votre dossier de jeu: un dossier "sodrtd" et un fichier "setup-sodrtd.exe". Pour installer le mod, double-cliquez sur setup-sodrtd.exe et suivez les instructions à l'écran.
Lancez setup-sodrtd.exe dans votre dossier de jeu pour réinstaller, désinstaller ou changer des composants.

Mac OS X
Le Tweak Pack est compressé et installé avec WeiDU. Pour l'installer, extrayez l'archive du mod, puis copiez le contenu du dossier dans votre dossier de jeu (le dossier qui contient le fichier CHITIN.KEY). Si l'extraction se passe correctement, vous devriez avoir un dossier "sodrtd", setup-sodrtd, et setup-sodrtd.command dans votre dossier de jeu. Pour installer le mod, il suffit de double-cliquer sur setup-sodrtd.command et de suivre les instructions à l'écran.

Linux
Extrayez le contenu du mod dans le dossier de votre jeu que vous souhaitez modifier. Téléchargez la dernière version de WeiDU pour Linux depuis https://github.com/WeiDUorg/weidu/releases et copiez WeiDU et WeInstall vers /usr/bin. Ensuite, ouvrez un terminal et accédez au répertoire d'installation de BG(2), exécutez "tolower" et répondez Y aux deux questions. Vous pouvez éviter d'exécuter la deuxième option (linux.ini) si vous l'avez déjà exécutée une fois dans le même répertoire. Si vous n'êtes pas sûr, lancer tolower et choisir les deux options est la meilleure solution. 
Exécutez WeInstall sodrtd dans votre dossier de jeu pour installer le mod. Exécutez ensuite le Wine BGMain.exe et commencez à jouer.

NOTE: BG(II):EE sont des jeux qui sont mis à jour régulièrement. Sachez qu'à chaque nouvelle mise à jour, votre jeu ne reconnaîtra plus les mods installés ! Si vous êtes au milieu d'une partie avec des mods, il est préférable de retarder la mise à jour car même après avoir réinstallé les mods, vous ne pourrez peut-être pas continuer avec vos anciennes sauvegardes. 

Si vous avez des problèmes d'installation ou rencontrez des bugs, veuillez poster votre rapport de bug sur le forum.


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

ElGamerViejuno - Spanish translation (v2.0)
Frenzgyn - Italian translation (new lines v1)
improb@bile - Italian translation (v0.7 Beta)
jastey - author, main mod head
JohnBob - French translation (v1)
Lauriel - author of component 1, ideas, design help, proofreading English (v0.1 Beta) 
Machiavélique - proofreading French (v0.4 Beta)
MephistoSatanDevil: setup.tra format corrections for Chinese (simplified) (v4.0)
Shai Hulud - German translation (v0.2 Beta)
yoshimo0417: Chinese (simplified) (v4.0)

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

Version 6.0
-Component "Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod" removed. Recognition and integration remains the same; install it via Lauriel's Themed Tweaks mod.
-Fixed install error if component "Add Stat-Based Observations and Quest Options" from Lauriel's Themed Tweaks Mod was installed.
-typo corrections, by basicals.
-variable names should not be too long (no ingame bug).

Version 5.0
-update chinese translation, by yoshimo0417
-fix NVLOR in Bence's dialogue at Boareskyr Bridge if Bridgfort was not saved
-fix install error if SoD Tweakpack is installed in Spanish or SChinese

Version 4.0
-Simplified Chinese translation added, by yoshimo0417, setup.tra format corrections by MephistoSatanDevil

Version 3.0
-Russian translation, by Arkie.
-All lines in scripts should be traified.

Version 2.0
- Spanish version, by ElGamerViejuno.
- Fixed install error in case Jastey's SoD Tweaks were installed in other language.

Version 1.3
- Fixed a looping scriptblock in the journal handling script.
- Link correction: "Shai Huluds Text-Patch".
- Removed recommendation to install Themed Tweak's "Add Stat-Based Observations and Quest Options" because personally, I prefer a more subtle approach.

Version 1.2
- French version completed, by JohnBob.

Version 1.1
- Sir Deggernaut should not be in the camp and in front of the castle both.
- Added reactions from officers to the knowledge of Hephernaan's plans to the meeting at Dead Man's Pass.
- minor corrections.

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