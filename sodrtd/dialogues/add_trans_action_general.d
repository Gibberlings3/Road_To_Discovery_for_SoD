/* dlgs considered. Some are covered by area scripts.

bdaun
bdbaeloj
bdbaelot
bdbarghe
bdbelhif
bdbelt
bdbence
bdcaelar
bdcorint
bdcorwij (not completely)
bdcrus
bdcrus10
bddaeros
bddagf
bddamarr
bddarnas
bddausto
bddelanc
bddeneld
bddm03
bddynahe
bddynahj
bdedwin
bdedwinj
bdeltan
bdentar
bdesseri
bdfamari
bdfamcru
bdferrus
bdffsol01
bdgarric
bdgarrij
bdglint
bdglintj
bdhalat
bdhepher
bdhormor
bdimoen
bdireni
bdjaheij
bdjaheir
bdjospil
bdjulann
bdjunia
bdkhalid
bdkhalij
bdkharmy
bdkherr
bdleopas
bdliia
bdmkhiij
bdmkhiin
bdmerc02
bdmerc03
bdnederl
bdolonei
bdolvena
bdpolvi
bdpool24
bdpool42
bdpool46
bdqing
bdrasaad
bdrasaaj
bdravoc
bdrayphu
bdrhynwi
bdrumor1
bdrumor3
bdsafana
bdsafanj
bdschael
bdscry
bdsindr2
bdsindre
bdskie
bdstoneh
bdtristi
bdvoice
bdwaizah
bdzare

*/

/* BDBARGHE */

/* get the blessing of the gods */
/* BDBARGHE 8
  SAY #42751 /* ~Thank you, Hormorn, and thank you, servants of the Shining Lady. Return to your tasks, secure in the knowledge that we have the favor of the gods. ~ */
*/
ADD_TRANS_ACTION BDBARGHE BEGIN 8 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDDAEROS */
/* Daeros inside DS castle
bddaeros: tells about portal, blood of a godly descendant, Hephernaan's fiend master:
*/
/* bddaeros 2
  SAY #61352 /* ~He plays the pious, kindhearted priest, but he's trying to open a gate to the Nine Hells, the snake. I first saw Hephernaan when he came down here with that aasimar, what's her name—Caelar. You know what an aasimar is? Celestial-blooded, you could say. They needed divine blood to open the gate, but Caelar's wasn't strong enough to do the job.~ [BD61352] */
*/
ADD_TRANS_ACTION BDDAEROS BEGIN 2 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddaeros 5
  SAY #61367 /* ~I don't know. Probably. I overheard Hephernaan say Caelar's blood was too weak, too diluted by generations. A god's direct descendent? Open a vein and that portal could pop right open.~ [BD61367] */
*/
ADD_TRANS_ACTION BDDAEROS BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",2)
SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddaeros 15
  SAY #61388 /* ~I know he wants to open a portal to the Nine Hells, and he needs divine blood to do it. Caelar's is too weak to do the trick.~ [BD61388] */
*/
ADD_TRANS_ACTION BDDAEROS BEGIN 15 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDYNAHE */
/* bddynahe 20
  SAY #56954 /* ~I know of this woman. There are those who believe her to be a daughter of the divine—perhaps even a child of Bhaal... She merits further investigation, and is the reason I still linger in the region. When dost thou leave?~ [BD56954] */
*/
ADD_TRANS_ACTION BDDYNAHE BEGIN 20 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddynahe 24
  SAY #34753 /* ~I know of this woman. There are those who believe her to be a daughter of the divine—perhaps even a child of Bhaal... She merits further investigation, and is the reason I still linger in the region.~ [BD34753] */
*/
ADD_TRANS_ACTION BDDYNAHE BEGIN 24 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDCAELAR */
/* learns about Hephernaan's identity: when bridge gets destroyed at Coast Way Crossing */
/* bdcaelar 0
  SAY #35794 /* ~Hephernaan. What happened here?~ [BD35794] */ */
ADD_TRANS_ACTION BDCAELAR BEGIN 0 END BEGIN END ~SetGlobal("C#RtD_HephernaanIdentity_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* weak poison */
/* bdcaelar 14  
  SAY #35817 /* ~I am not your enemy, <CHARNAME>... Consider for a moment the "poison" my agents sought to use against you.~ [BD35817] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 14 END BEGIN END ~SetGlobal("C#RtD_WeakPoison_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdcaelar 15 [putting this here, too, in case another mod added reply options to state 14] 
  SAY #56577 /* ~It may seem that we stand on opposite sides, but it is not so. Our goals align closer than you know, and there is much we could achieve together.~ [BD56577] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 15 END BEGIN END ~SetGlobal("C#RtD_WeakPoison_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* no child of Bhaal */
/* bdcaelar 17
  SAY #59535 /* ~Nay, no child of Bhaal am I, nor any other god. I am an aasimar, descended from a solar that blessed my line generations ago. Is blood what matters to you, or the message?~ [BD59535] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 17 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* learn about the crusade's plans: Caelar at Coast Way Crossing */
/* bdcaelar 21
  SAY #35829 /* ~In our lifetimes, two Dragonspear Wars have ravaged this land. Fiends set out from the castle, bringing ruin to the land and dragging thousands of innocent souls into the inferno before being beaten back for a time. Those who follow me lost wives and husbands, parents, children, friends... But what was lost can be restored. I will bring those tortured souls back to Toril.~ [BD35829] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 21 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2)
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* also putting this here in case a mod adds reply options to state 21 */
/* bdcaelar 5
  SAY #35688 /* ~I KNOW YOU HEAR MY WORDS! I WOULD SPEAK WITH YOU!~ [BD35688] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2)
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdcaelar 26
  SAY #35835 /* ~But it does not end there. They are taken to the Nine Hells. Their blood boils; their skin blisters and bursts. Devils' claws rend their soul, tearing it to shreds—but they CANNOT DIE. I hear them, <CHARNAME>. I hear the screams of the unjustly damned. And I will not turn a deaf ear.~ [BD35835] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 26 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* Caelar blessed by (all) the gods */
/*   SAY #35847 /* ~What gods? The pantheon shines its light upon me—Lathander, Tyr, Helm, Tempus—all see the righteousness of my cause. Soon, the Hells shall see that light as well.~ [BD35847] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 28 END BEGIN END ~SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdcaelar 39 - coalition is listening
  SAY #38656 /* ~Listen to me, <CHARNAME>. The lost souls of the Dragonspear dead need a hero. That hero is you. Join me, and together we shall liberate the souls trapped in the Nine Hells.~ [BD38656] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 39 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdcaelar 45 - DS castle exterior; coalition is listening
  SAY #38358 /* ~Then I discovered the truth! I tell you that the Dragonspear dead are NOT lost! I shall lead an army into Avernus and retrieve them if you will but LET me. Do not toss this opportunity aside. Do not let the devils take so much more than their due!~ [BD38358] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 45 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ 

/* Hephernaan's betrayal at the portal - now all know */
/* bdcaelar 52
  SAY #66602 /* ~YOUR plan? What do you mean? Hephernaan, what are you doing?~ [BD66602] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 52 END BEGIN END ~SetGlobal("C#RtD_HephernaanIdentity_SET","GLOBAL",1)
SetGlobal("C#RtD_HephernaanFiend_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* plan was to free Aun - finally PC knows */
/* bdcaelar 68
  SAY #39190 /* ~I can scarcely believe it. Everything I did, every sacrifice I made, all to reach this moment... You are free at last, Uncle.~ [BD39190] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 45 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",6)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* learn the story behind Aun and Caelar */
/* bdcaelar 73 leads to the story being told
  SAY #39206 /* ~I was told to watch over the library. To guard the volumes within, for they held knowledge critical to the order's success in the battle against darkness. I coveted that knowledge. In my arrogance, I read aloud from the pages, not understanding the forces I was invoking...~ [BD39206] */
*/
ADD_TRANS_ACTION BDCAELAR BEGIN 45 END BEGIN END ~SetGlobal("C#RtD_KnowsAunArgent_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDCORWIJ */
/* Caelar child of Bhaal? */
/* bdcorwij 250
  SAY #67154 /* ~I hope I like what they say. Remember, there are rumors that Caelar is a child of Bhaal as well. That could complicate matters. Significantly.~ */
*/
ADD_TRANS_ACTION BDCORWIJ BEGIN 250 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* bdcorwij 252
  SAY #67160 /* ~Very well. I'll not tell anyone else of your... connection to Sarevok. Even so, take care of how you're seen by those around you. One of those people may be all that stands between you and a sword someday. And if the rumors are true, if Caelar's a child of Bhaal, that could complicate matters. Significantly.~ */
*/
ADD_TRANS_ACTION BDCORWIJ BEGIN 252 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* bdcorwij 253
  SAY #67161 /* ~Very well, I'll not speak of your alleged connection to Sarevok, or address any of the other rumors regarding you. But you should take care of how you're perceived by those around you. One of those people may be all that stand between you and a sword someday. And if the rumors are true and Caelar is also a child of Bhaal, that will complicate matters. Significantly.~ */
*/
ADD_TRANS_ACTION BDCORWIJ BEGIN 253 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDCRUS */
/* bdcrus 5
  SAY #62922 /* ~The divine protection granted Caelar and her acolytes will allow us to triumph. Never forget, the gods stand beside us.~ */
*/
ADD_TRANS_ACTION BDCRUS BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdcrus 19
  SAY #63181 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ */
*/
ADD_TRANS_ACTION BDCRUS BEGIN 19 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDCRUS10 */
/* bdcrus10 1
  SAY #66695 /* ~Does I look like someone who does the gods' work? 'Specially the gods her Shiningness serves... Don't care what that Hephernaan says, Caelar's kind'd never lower 'emselves t' our level.~ */
*/
ADD_TRANS_ACTION BDCRUS10 BEGIN 1 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDAGF */
/* bddagf 13
  SAY #63133 /* ~Some say Caelar's forces have divine protection. Her people fall easy enough, but I heard tell of her priests doing weird resurrection ceremonies.~ */
*/
ADD_TRANS_ACTION BDCRUS BEGIN 19 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDAMARR */
/* bddamarr 6
  SAY #47754 /* ~Valis has no love for Corinth. I don't know how far she'd go to see him dead. And we are talking about Corinth's life and death here. If he's found guilty of betraying Caelar, he'll be heading to Avernus before any of us do.~ */
*/
ADD_TRANS_ACTION BDDAMARR BEGIN 6 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddamarr 12
  SAY #47782 /* ~It's all right. Not all of us are blinded by Caelar's light. Most are, it's true. You don't march into a Hell if you don't BELIEVE, no matter how much you're being paid.~ */
*/
ADD_TRANS_ACTION BDDAMARR BEGIN 12 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDAUSTO */
/* need to work with intermediate variables here */
/* bddausto 4
  SAY #58423 /* ~The tales I could tell you of Caelar, my friend. She was a hellacious child, but her uncle, noble Aun, was patient with her. It cost him everything. It cost ME everything. I—I...~ */
*/
ADD_TRANS_ACTION BDDAUSTO BEGIN 4 END BEGIN END ~SetGlobal("C#RtD_KnowsAunArgent_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDDELANC */
/* bddelanc 36
  SAY #43944 /* ~Few seem to know what happened, and those who do are spread out across Faerûn, beyond our reach in any practical sense. We believe it's significant that an uncle of hers, Aun Argent, vanishes from the official record around the same time Caelar was cast out. Unlike his niece, the order holds Aun in the highest regard.~ [BD43944] */
*/
ADD_TRANS_ACTION BDDELANC BEGIN 36 END BEGIN END ~SetGlobal("C#RtD_KnowsAunArgent_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddelanc 38
  SAY #43949 /* ~I suspect it involves her advisor, the so-called "Revered Brother" Hephernaan. As you are already aware, we know little of him.~ [BD43949] */
*/
ADD_TRANS_ACTION BDDELANC BEGIN 38 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bddelanc 44
  SAY #38635 /* ~If I understand you correctly then, you're willing to surrender your troops and abandon Dragonspear Castle. All we have to do is give you the Bhaalspawn.~ [BD38635] */
*/
ADD_TRANS_ACTION BDDELANC BEGIN 44 END BEGIN END ~SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDELEND */
/* bddelend 8
  SAY #67395 /* ~Of the Shining Lady herself I know little. They say she is advised by a priest named Hephernaan, though. Back in Silverymoon I knew of a boy by that name—most everyone did. A vile lad he was.~ */
*/
ADD_TRANS_ACTION BDDELEND BEGIN 8 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDM03 */
/* bddm03 1
  SAY #50227 /* ~I won't go along with this. Hephernaan will be furious.~ [BD50227] */
*/
ADD_TRANS_ACTION BDDM03 BEGIN 1 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDDSSEN1 */
/* bddssen1 8
  SAY #63181 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ */
*/
ADD_TRANS_ACTION BDDSSEN1 BEGIN 8 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDEDWIN */
/* bdedwin 46
  SAY #42205 /* ~Caelar? That glittering serpent? A curse upon her, and a curse upon the hedge magic of her lackey Hephernaan!~ */
*/
ADD_TRANS_ACTION BDEDWIN BEGIN 46 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdedwin 48
  SAY #42210 /* ~The "Revered Brother" Hephernaan. A wolf in a robe, but he smiles and nods well enough, and such gestures seem to please Caelar.~ */
*/
ADD_TRANS_ACTION BDEDWIN BEGIN 48 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDEDWINJ */
/* bdedwinj 5
  SAY #69574 /* ~There are few who'd like to see Caelar's light snuffed out more than I, but you're a fool if you think it might happen this day. Her advisor, Hephernaan, and the mage Oloneiros are with her. Their magic is proof against all but the most powerful spells.~ [BD69574] */

ADD_TRANS_ACTION BDEDWINJ BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
*/

/* bdedwinj 6
  SAY #64770 /* ~There are few who'd like to see Caelar's light snuffed out more than I, but you're a fool if you think it might happen this night. Her advisor, Hephernaan, and the mage Oloneiros are with her. Their magic is proof against all but the most powerful spells.~ [BD64770] */
*/
ADD_TRANS_ACTION BDEDWINJ BEGIN 5 6 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDESSERI */
/* bdesseri 0
  SAY #37849 /* ~Lord Hephernaan, look! We're not alone! ~ */
*/
ADD_TRANS_ACTION BDEDWINJ BEGIN 6 END BEGIN END ~SetGlobal("C#RtD_HephernaanIdentity_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDFAMARI */
/* bdfamari 17
  SAY #58507 /* ~I've more important things to do than talk right now. The Shining Lady bid us ready ourselves for the attack just as soon as she and Hephernaan finish whatever they're up to in the castle.~ [BD58507] */
*/
ADD_TRANS_ACTION BDFAMARI BEGIN 17 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDFAMCRU */
/* bdfamcru 11
  SAY #63181 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ */
*/
ADD_TRANS_ACTION BDFAMCRU BEGIN 11 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDFERRUS */
/* bdferrus 3
  SAY #41427 /* ~You trespass in my home. Surface-dwellers are not welcome here, save for Hephernaan and those who bow to him.~ [BD41427] */
*/
ADD_TRANS_ACTION BDFERRUS BEGIN 3 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdferrus 5
  SAY #41432 /* ~My circle tends this area. Though you are a fellow druid, if you continue down this path, you will receive no succor from me. Only followers of Hephernaan are spared my children's attentions.~ */
*/
ADD_TRANS_ACTION BDFERRUS BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdferrus 6
  SAY #41440 /* ~I know his people by sight, sound, and smell. You do not follow him. Do not think I can be tricked into thinking otherwise. I grant Hephernaan and his servants safe passage. I make no such promise to you.~ */
*/
ADD_TRANS_ACTION BDFERRUS BEGIN 6 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdferrus 16
  SAY #41489 /* ~You try to trick me. Hephernaan is not so foolish. He has dealt fairly with me, I shall abide by the terms of our agreement.~ */
*/
ADD_TRANS_ACTION BDFERRUS BEGIN 16 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdferrus 21
  SAY #41509 /* ~Some in the circle refused to accept my authority. Fools! With Hephernaan and his followers' help, I drove them off.~ [BD41509] */
*/
ADD_TRANS_ACTION BDFERRUS BEGIN 21 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdferrus 25
  SAY #41527 /* ~By the terms of my bargain with Hephernaan, I am permitted to perform my experiments.~ */
*/
ADD_TRANS_ACTION BDFERRUS BEGIN 25 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDGARRIC */
/* bdgarric 48
  SAY #38706 /* ~Rumors. Whispers of echoes, nothing more. Some say she is an aasimar. Others the child of a god. Some believe she is Sarevok's own sister.~ */
*/
ADD_TRANS_ACTION BDGARRIC BEGIN 48 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDHALAT */
/* bdhalat 5
  SAY #50328 /* ~I have heard this name. My captors mentioned her on occasion, and in every instance, they spoke with contempt. A puppet, they called her, doing their dark master's work.~ [BD50328] */
*/
ADD_TRANS_ACTION BDHALAT BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_CaelarBetrayal_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ 

/* bdhalat 8
  SAY #50347 /* ~A man—if man he truly be—named Hephernaan. He is a creature of deception, a worm wrapped in rose petals. His evil is insidious. He is a sickness growing inside a healthy body, destroying it unawares until it is too late. Be wary of him.~ [BD50347] */
*/
ADD_TRANS_ACTION BDHALAT BEGIN 8 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_HephernaanBetrayal_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDHEPHER */
/* bdhepher 10
  SAY #37852 /* ~No matter. Olvenaun, Esserin, bring me the Bhaalspawn's blood!~ [BD37852] */
*/
ADD_TRANS_ACTION BDHEPHER BEGIN 10 END BEGIN END ~SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdhepher 16
  SAY #38474 /* ~You'll find out soon enough, my puppet, once the devils begin their march into this world. Bleed, Bhaalspawn. Bleed for my master.~ [BD38474] */
*/
ADD_TRANS_ACTION BDHEPHER BEGIN 16 END BEGIN END ~
SetGlobal("C#RtD_HephernaanIdentity_SET","GLOBAL",2)
SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",1)
SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",4)
SetGlobal("C#RtD_HephernaanFiend_SET","GLOBAL",2)
SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdhepher 29
  SAY #63939 /* ~You are trying to influence Bhaal's spawn and in doing so you interfere with my master's business. The Accord will not let this continue.~ [BD63939] */
*/
ADD_TRANS_ACTION BDHEPHER BEGIN 29 END BEGIN END ~SetGlobal("C#RtD_KnowsHoodedMan_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDHORMOR */

/* get the blessing of the gods */
/* BDHORMOR 3
  SAY #42749 /* ~That path will take us to the darkest place. The most hideous of devils we will face, but we know no devil shall harm us.~ [BD42749] */
*/
ADD_TRANS_ACTION BDHORMOR BEGIN 3 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDIRENI */

/* bdireni 21
  SAY #66800 /* ~Only the passage of time will provide us answers. I am curious to see how this plays out. I will be watching.~ [BD66800] */
*/
ADD_TRANS_ACTION BDIRENI BEGIN 21 END BEGIN END ~SetGlobal("C#RtD_KnowsHoodedMan_SET","GLOBAL",1)
IncrementGlobal("C#RtD_MetHoodedMan","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdireni 42 - Caelar is no child of Bhaal
  SAY #66119 /* ~Caelar Argent has but the tiniest portion of divine essence, yet she has boldly claimed her birthright and taken control of her destiny. You have half a god flowing through your veins, and yet you stumble your way toward your destiny as if blind.~ [BD66119] */
*/
ADD_TRANS_ACTION BDIRENI BEGIN 42 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdireni 43 - increment the "met him" variable
  SAY #66120 /* ~Spread your wings; feel their power. Let this test you. If you are lucky—if you do well—further tests will come. Perhaps, eventually, you will learn what you need to soar.~ [BD66120] */
*/
ADD_TRANS_ACTION BDIRENI BEGIN 43 END BEGIN END ~SetGlobal("C#RtD_KnowsHoodedMan_SET","GLOBAL",1)
IncrementGlobal("C#RtD_MetHoodedMan","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdireni 60
  SAY #66829 /* ~Dragonspear Castle offers more to you than an opportunity for reconnaissance and sabotage. There, you may spy the snake that nestles in Caelar's bosom. Use the gifts you have and you may learn more about the threat you truly face.~ [BD66829] */
*/
ADD_TRANS_ACTION BDIRENI BEGIN 60 END BEGIN END ~SetGlobal("C#RtD_KnowsHoodedMan_SET","GLOBAL",1)
IncrementGlobal("C#RtD_MetHoodedMan","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdireni 73 - after seeing that he murdered Skie
  SAY #37736 /* ~You are more powerful than I dared hope. But no matter. Sleep now. We must begin a long journey together. ~ */
*/
ADD_TRANS_ACTION BDIRENI BEGIN 73 END BEGIN END ~SetGlobal("C#RtD_KnowsHoodedMan_SET","GLOBAL",2)
IncrementGlobal("C#RtD_MetHoodedMan","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdireni 78
  SAY #63940 /* ~Perhaps you are right. Perhaps not. You do not speak for the Accord—and I do not bow to the demands of some broken fiend's lickspittle.~ [BD63940] */
*/
/* scrying pool (Hooded man scene): knows that [a man looking like] Hephernaan is working with Umbral Accord */
ADD_TRANS_ACTION BDIRENI BEGIN 78 END BEGIN END ~SetGlobal("C#RtD_HephernaanVisual_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDJAHEIR */
/* bdjaheir 77
  SAY #68385 /* ~Possible, yes. Some believe the crusade is as much the design of Hephernaan as Caelar.~ */
*/
ADD_TRANS_ACTION BDJAHEIR BEGIN 77 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* BDJOSPIL */
/* bdjospil 14
  SAY #44780 /* ~She's an Argent, a family known for its service to Lathander the Morninglord. Most of her ancestors were paladins in the Order of the Aster. Some say there's divine blood in her veins. She's convinced her followers they can face any challenge and emerge triumphant.~ */
*/
ADD_TRANS_ACTION BDJOSPIL BEGIN 14 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDJULANN */
/* bdjulann 24
  SAY #52530 /* ~No! No, no, no, no, no, no, not in the least. One of Caelar's lieutenants, Hephernaan his name is, made us a very attractive offer, though.~ [BD52530] */
*/
ADD_TRANS_ACTION BDJULANN BEGIN 24 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDMERC02 */
/* bdmerc02 1
  SAY #47827 /* ~She's in the castle, but you'll not find it easy to reach her. And by not easy, I really mean impossible. She speaks to no one but Hephernaan and the Revered Brothers of late. But hey, luck to you.~ */
*/
ADD_TRANS_ACTION BDMERC02 BEGIN 1 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDMERC03 */
/* bdmerc03 7
  SAY #47848 /* ~She's in the castle, but you won't be able to get to her. They say she only talks to that priest of hers, whatsisname, the Revered whatever Hephernaan.~ */
*/
ADD_TRANS_ACTION BDMERC03 BEGIN 7 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDLIIA */
/* weak poison: "fatal only to the weakest of victims": */
/* Duke Jannath 
  SAY #65121 /* ~The intruders' weapons were poisoned, but Tymora smiled upon us—the poison was weak, and fatal only to the weakest of victims. Imoen's heart beats much stronger than that.~ [BD65121] */
*/
ADD_TRANS_ACTION BDLIIA BEGIN 14 END BEGIN END ~SetGlobal("C#RtD_WeakPoison_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* Caelar on divine mission / being blessed by gods: */
/* Duke Jannath 
  SAY #56036 /* ~Precious little. She claims herself an instrument of the gods—which gods are a matter of some debate—on a divine mission. As to what that mission is? It is as countless as the mouths that praise her—and those that curse her.~ [BD56036] */
*/
ADD_TRANS_ACTION BDLIIA BEGIN 16 END BEGIN END ~SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDNEDERL */
/* bdnederl 28
  SAY #60891 /* ~We have reason to believe Caelar Argent's top advisor, a priest named Hephernaan, is quartered in Dragonspear's basement. We know very little of Hephernaan, other than he apparently has Caelar's ear.~ [BD60891] */
*/
ADD_TRANS_ACTION BDNEDERL BEGIN 28 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdnederl 41
  SAY #38650 /* ~She wants you, <CHARNAME>. She says she'll disband her army and surrender if you go with her. Sounds too good to be true, doesn't it?~ [BD38650] */
*/
ADD_TRANS_ACTION BDNEDERL BEGIN 41 END BEGIN END ~SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDOLONEI */
/* bdolonei 3
  SAY #59756 /* ~It's the Bhaalspawn! To me, crusaders! Take them alive!~ [BD59756] */
*/
ADD_TRANS_ACTION BDOLONEI BEGIN 3 END BEGIN END ~SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdolonei 10
  SAY #36988 /* ~Damn you, Barghest. You don't understand. The Lady has plans for them.~ [BD36988] */
*/
ADD_TRANS_ACTION BDOLONEI BEGIN 10 END BEGIN END ~SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdolonei 12
  SAY #37194 /* ~That's the hero of Baldur's Gate! Take <PRO_HIMHER> now, in Caelar's name! I want <PRO_HIMHER> alive!~ */
*/
ADD_TRANS_ACTION BDOLONEI BEGIN 12 END BEGIN END ~SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDPOLVI */
/* bdpolvi 14
  SAY #56702 /* ~The loss of our loved ones is a test the gods have set before us, a test we too often fail. We bow our heads, shed some tears, and shrug our shoulders, accepting what should be unacceptable. The Dragonspear dead were not lost—they were taken. And what was taken once can be taken back.~ */
*/
ADD_TRANS_ACTION BDPOLVI BEGIN 14 END BEGIN END ~SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDPOOL24 */
/* bdpool24 5
  SAY #62922 /* ~The divine protection granted Caelar and her acolytes will allow us to triumph. Never forget, the gods stand beside us.~ */
*/
ADD_TRANS_ACTION BDPOOL24 BEGIN 5 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDPOOL42 */
/* bdpool42 13
  SAY #63133 /* ~Some say Caelar's forces have divine protection. Her people fall easy enough, but I heard tell of her priests doing weird resurrection ceremonies.~ */
*/
ADD_TRANS_ACTION BDPOOL42 BEGIN 13 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDPOOL46 */
/* bdpool46 4
  SAY #63181 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ */
*/
ADD_TRANS_ACTION BDPOOL46 BEGIN 4 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDRAYPHU */
/* bdrayphu 15
  SAY #58156 /* ~Her closest advisor is a priest who calls himself the Revered Brother Hephernaan. He claims to serve not one god or pantheon, but all of them. Caelar has accepted this heresy.~ [BD58156] */
*/
ADD_TRANS_ACTION BDRAYPHU BEGIN 15 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdrayphu 16
  SAY #58160 /* ~The "Shining Lady," as she is called, has promised the gods' protection to all who join her army. For many, that is enough.~ */
*/
ADD_TRANS_ACTION BDRAYPHU BEGIN 16 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdrayphu 24
  SAY #58171 /* ~I know little of Caelar beyond the heresies she speaks. She claims no single god or pantheon as her own, but professes to act on behalf of them all.~ */
*/
ADD_TRANS_ACTION BDRAYPHU BEGIN 16 END BEGIN END ~SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDRUMOR1 */
/* Caelar Bhaal Spawn? */
/* BDRUMOR1 6 
  SAY #61560 /* ~I've heard tales that Caelar, the leader of this so-called crusade, is really another of those Bhaalspawn! Maybe she was Sarevok's sister. Or his lover!~ */
*/
ADD_TRANS_ACTION BDRUMOR1 BEGIN 6 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdrumor1 8 - Caelar god blessed 
  SAY #61562 /* ~Seems that faithful of many different religions have joined under the crusade's banner. This Caelar woman claims to be working for the light, but what does that mean? Selûne maybe? No one knows what her plan is.~ */
*/
ADD_TRANS_ACTION BDRUMOR1 BEGIN 8 END BEGIN END ~SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)
SetGlobal("C#RtD_CaelarGodBless_Journal","GLOBAL",1)~


/* BDRUMOR3 */
/* bdrumor3 15
*/
ADD_TRANS_ACTION BDRUMOR3 BEGIN 15 END BEGIN END ~SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* bdrumor3 30
  SAY #67076 /* ~I hear there's a rift 'twixt the Prime and the Fugue Plane in Dragonspear Castle. Wonder if that's why the crusade's made its base there?~ */
*/
ADD_TRANS_ACTION BDRUMOR3 BEGIN 30 END BEGIN END ~SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDSINDR2 */
/* bdsindr2 8
  SAY #63181 /* ~I've never been in battle before, but the gods will shield me. Caelar has promised it.~ */
*/
ADD_TRANS_ACTION BDSINDR2 BEGIN 8 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDSINDRE */
/* bdseindre 31
  SAY #49098 /* ~Instead, I gained a new appreciation of the power of faith. Caelar is so pure, so driven. She has accessed power that will protect us in the Nine Hells themselves.~ [BD49098] */
[will patch 33 instead - end of dialogue]
*/
ADD_TRANS_ACTION BDSINDRE BEGIN 33 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDSKIE */
/* Caelar Bhaal Spawn? */
/* bdskie 13
  SAY #59664 /* ~Daddy hasn't told you everything. Did he mention he thinks Caelar might be one of Bhaal's children? Yeah, I thought not. We can't talk here—I'll tell you more later.~ [BD59664] */
*/
ADD_TRANS_ACTION BDSKIE BEGIN 13 END BEGIN END ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDTRISTI */
/* bdtristi 22
  SAY #51398 /* ~I have healing magic as well, but that's not my primary use. The fiends of the Nine Hells are orderly, regimented. It will take all our skill to outmaneuver them.~ [BD51398] */
*/
ADD_TRANS_ACTION BDHORMOR BEGIN 3 END BEGIN END ~SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~


/* BDZARE
... the PC knows that the crusade is about to descend into Avrnus - journal entry! I'll leave this for now. They probably do know by then.
  SAY #49135 /* ~Sorry, I didn't catch that. My mind was elsewhere. It's time for a drill now, but I can speak with you later. ~ */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_zare","bd4000",1)
~ UNSOLVED_JOURNAL #58811 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

I spoke to new recruit named Zare. He's utterly committed to Caelar, willing to do anything and everything she asks. I begin to understand how he, and others, are willing to follow Caelar into the Hells themselves.~ */ EXIT
*/