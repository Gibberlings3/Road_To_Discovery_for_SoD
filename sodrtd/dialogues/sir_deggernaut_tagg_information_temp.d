
CHAIN
IF ~~ THEN C#RtDdeg %information_chain_name%
@282 /* Let me check... */

/* "C#RtD_CoalCaelarPlan" */
== C#RtDdeg IF ~%CheckCaelarPlan_1% Global("C#RtD_CoalCaelarPlan","GLOBAL",1)~ THEN @273 /* We all know Caelar's crusade is rampaging through the lands, plundering and murdering. We do not know what exactly it is they are seeking at Dragonspear Castle, though. */ 
DO ~%Set_CheckCaelarPlan_1% SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",1) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarPlan_2_OR_3% OR(2)
Global("C#RtD_CoalCaelarPlan","GLOBAL",2)
Global("C#RtD_CoalCaelarPlan","GLOBAL",3)~ THEN @274 /* We know Caelar's crusade is planning on freeing souls from Avernus trapped there since the Dragonspear Wars, but we do not know the exact means by which she is trying to achieve it. */ 
DO ~%Set_CheckCaelarPlan_2_OR_3% SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",2) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarPlan_4_OR_5% OR(2)
Global("C#RtD_CoalCaelarPlan","GLOBAL",4)
Global("C#RtD_CoalCaelarPlan","GLOBAL",5)~ THEN @275 /* We know Caelar's crusade is planning on freeing souls from Avernus trapped there since the Dragonspear Wars by marching into hell itself, but we do not know yet how exactly she will achieve this. */
DO ~%Set_CheckCaelarPlan_4_OR_5% SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",3) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarPlan_6_OR_7% OR(2)
Global("C#RtD_CoalCaelarPlan","GLOBAL",6)
Global("C#RtD_CoalCaelarPlan","GLOBAL",7)~ THEN @276 /* We know Caelar's crusade is planning on freeing souls from Avernus trapped there since the Dragonspear Wars by opening a portal at Dragonspear Castle and marching into hell itself. */
DO ~%Set_CheckCaelarPlan_6_OR_7% SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalHephernaanIdentity" */
== C#RtDdeg IF ~%CheckHephernaanIdentity_1% Global("C#RtD_CoalHephernaanIdentity","GLOBAL",1)~ THEN @277 /* We know that Caelar's most trusted advisor is a priest called Hephernaan. */
DO ~%Set_CheckHephernaanIdentity_1% SetGlobal("C#RtD_HephernaanName_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarBetrayal" */
== C#RtDdeg IF ~%CheckCaelarBetrayal_1_OR_2% OR(2)
Global("C#RtD_CoalCaelarBetrayal","GLOBAL",1)
Global("C#RtD_CoalCaelarBetrayal","GLOBAL",2)~ THEN @235 /* We know that Caelar is being betrayed. There is a deeper level to the crusade's purpose than what Caelar is proclaiming. */
DO ~%Set_CheckCaelarBetrayal_1_OR_2% SetGlobal("C#RtD_CaelarBetrayal_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalHephernaanBetrayal" */
== C#RtDdeg IF ~%CheckHephernaanBetrayal_1_OR_2% OR(2)
Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",1)
Global("C#RtD_CoalHephernaanBetrayal","GLOBAL",2)~ THEN @236 /* We know that her advisor Hephernaan is betraying her. */
DO ~%Set_CheckHephernaanBetrayal_1_OR_2% SetGlobal("C#RtD_HephernaanBetrayal_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalHephernaanFiend" */
== C#RtDdeg IF ~%CheckHephernaanFiend_GT_0% GlobalGT("C#RtD_CoalHephernaanFiend","GLOBAL",0)
//OR(2)
//Global("C#RtD_CoalHephernaanFiend","GLOBAL",1)
//Global("C#RtD_CoalHephernaanFiend","GLOBAL",2)
~ THEN @237 /* We know that Hephernaan is working for a fiend behind Caelar's back! */
DO ~%Set_CheckHephernaanFiend_GT_0% SetGlobal("C#RtD_HephernaanFiend_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* -- not considered
== C#RtDdeg IF ~OR(2)
Global("C#RtD_CoalHephernaanFiend","GLOBAL",3)
Global("C#RtD_CoalHephernaanFiend","GLOBAL",4)~ THEN ~Hephernaan is working for Belhifet, no less.~
DO ~SetGlobal("##_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
*/

/* "C#RtD_CoalHephernaanVisual" */
== C#RtDdeg IF ~%CheckHephernaanVisual_GT_0% GlobalGT("C#RtD_CoalHephernaanVisual","GLOBAL",0)
~ THEN@294 /* Hephernaan is also in liege with a secret organization called Umbral Accord. We do not have any further information what the name stands for so far. */
DO ~%Set_CheckHephernaanVisual_GT_0% SetGlobal("C#RtD_HephernaanVisual_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarGodBless" */
== C#RtDdeg IF ~%CheckCaelarGodBless_1% Global("C#RtD_CoalCaelarGodBless","GLOBAL",1)~ THEN @238 /* We heard rumors about Caelar being divinely blessed, but we do not know how exactly. */
DO ~%Set_CheckCaelarGodBless_1% SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarGodBless_2_OR_3% OR(2)
Global("C#RtD_CoalCaelarGodBless","GLOBAL",2)
Global("C#RtD_CoalCaelarGodBless","GLOBAL",3)~ THEN @239 /* We know that Caelar proclaims to be divinely blessed - by the whole pantheon, no less. */
DO ~%Set_CheckCaelarGodBless_2_OR_3% SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarBhaalChild" */
== C#RtDdeg IF ~%CheckCaelarBhaalChild_1% Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)~ THEN @252 /* We consider Caelar to be a child of Bhaal - these are only rumors, though, so we do not know for sure. */
DO ~%Set_CheckCaelarBhaalChild_1% SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarBhaalChild_2_3% OR(2)
Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)
Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",3)~ THEN @253 /* We concluded from what we heard that Caelar would be no child of Bhaal, despite the rumors we heard elsewhere. */
DO ~%Set_CheckCaelarBhaalChild_2_3% SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarBhaalChild_4_5% OR(2)
Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",4)
Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",5)~ THEN @254 /* We know that Caelar is no child of Bhaal. */
DO ~%Set_CheckCaelarBhaalChild_4_5% SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarProtection" */
== C#RtDdeg IF ~%CheckCaelarProtection_1% Global("C#RtD_CoalCaelarProtection","GLOBAL",1)~ THEN @240 /* With her proclaimed divine powers, Caelar is said to protect her crusaders from harm. */
DO ~%Set_CheckCaelarProtection_1% SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarProtection_2_OR_3_OR_4% OR(3)
Global("C#RtD_CoalCaelarProtection","GLOBAL",2)
Global("C#RtD_CoalCaelarProtection","GLOBAL",3)
Global("C#RtD_CoalCaelarProtection","GLOBAL",4)~ THEN @241 /* We know that her followers believe that the gods are protecting them through Caelar. */
DO ~%Set_CheckCaelarProtection_2_OR_3_OR_4% SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarProtection_5_OR_6% OR(4)
Global("C#RtD_CoalCaelarGodBless","GLOBAL",4)
Global("C#RtD_CoalCaelarGodBless","GLOBAL",5)
Global("C#RtD_CoalCaelarProtection","GLOBAL",5)
Global("C#RtD_CoalCaelarProtection","GLOBAL",6)~ THEN @242 /* We know that whatever godly protection Caelar proclaims for her crusade is not the truth. They do not have any divine blessing strong enough to truly shield them from harm. */
DO ~%Set_CheckCaelarProtection_5_OR_6% SetGlobal("C#RtD_CaelarGodBless_SET","GLOBAL",3)
SetGlobal("C#RtD_CaelarProtection_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalWeakPoison" */
== C#RtDdeg IF ~%CheckWeakPoison_1% Global("C#RtD_CoalWeakPoison","GLOBAL",1)~ THEN @243 /* The poison the assassins attacked Imoen and you at the palace with was much too weak to kill. */
DO ~%Set_CheckWeakPoison_1% SetGlobal("C#RtD_WeakPoison_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarKidnap" */
== C#RtDdeg IF ~%CheckCaelarKidnap_1_OR_2% OR(2)
Global("C#RtD_CoalCaelarKidnap","GLOBAL",1)
Global("C#RtD_CoalCaelarKidnap","GLOBAL",2)~ THEN @244 /* Caelar's assassins came probably to kidnap you, not to kill as we originally assumed. */
DO ~%Set_CheckCaelarKidnap_1_OR_2% SetGlobal("C#RtD_CaelarKidnap_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarWantsPC" */
== C#RtDdeg IF ~%CheckCaelarWantsPC_1_OR_2% OR(2)
Global("C#RtD_CoalCaelarWantsPC","GLOBAL",1)
Global("C#RtD_CoalCaelarWantsPC","GLOBAL",2)~ THEN @245 /* We assume that Caelar wants to capture you alive. */
DO ~%Set_CheckCaelarWantsPC_1_OR_2% SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckCaelarWantsPC_3_OR_4% OR(2)
Global("C#RtD_CoalCaelarWantsPC","GLOBAL",3)
Global("C#RtD_CoalCaelarWantsPC","GLOBAL",4)~ THEN @246 /* We know that Caelar has definite plans for you, the Bhaal spawn - alive. */
DO ~%Set_CheckCaelarWantsPC_3_OR_4% SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalWantBhaalBlood" */
== C#RtDdeg IF ~%CheckWantBhaalBlood_1_OR_2% OR(2)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",1)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",2)~ THEN @247 /* We know the crusade has use for your Bhaal blood. */
DO ~%Set_CheckWantBhaalBlood_1_OR_2% SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* -- is considered via /* "C#RtD_CoalKnowsPortalBlood" */
== C#RtDdeg IF ~%CheckWantBhaalBlood_3_OR_4% OR(2)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",3)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",4)~ THEN ~We assume that the crusade has use for your Bhaal blood to open the dormant potal beneath Dragonspear Castle.~
DO ~%Set_CheckWantBhaalBlood_3_OR_4% SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckWantBhaalBlood_5_OR_6% OR(2)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",5)
Global("C#RtD_CoalWantBhaalBlood","GLOBAL",6)~ THEN ~We know they want your Bhaal blood to open the dormant potal beneath Dragonspear Castle.~
DO ~%Set_CheckWantBhaalBlood_5_OR_6% SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
*/

/* "C#RtD_CoalKnowsPortalBlood" */
== C#RtDdeg IF ~%CheckKnowsPortalBlood_1_OR_2% OR(2)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",1)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",2)~ THEN @248 /* We know there is a dormant rift to Avernus beneath Dragonspear Castle. */
DO ~%Set_CheckKnowsPortalBlood_1_OR_2% SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckKnowsPortalBlood_3_OR_4% OR(2)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",3)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",4)~ THEN @249 /* We know that the blood of a child of Bhaal would suffice to open the dormant portal to Avernus beneath Dragonspear Castle. */
DO ~%Set_CheckKnowsPortalBlood_3_OR_4% SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckKnowsPortalBlood_5_OR_6% OR(2)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",5)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",6)~ THEN @250 /* We know that the blood of a child of Bhaal would suffice to open the dormant portal to Avernus beneath Dragonspear Castle and therefore concluded that this is what Caelar wants you for. */
DO ~%Set_CheckKnowsPortalBlood_5_OR_6% SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckKnowsPortalBlood_7_OR_8% OR(2)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",7)
Global("C#RtD_CoalKnowsPortalBlood","GLOBAL",8)~ THEN @251 /* We know that the blood of a child of Bhaal would suffice to open the dormant portal to Avernus beneath Dragonspear Castle and are aware that this is what Caelar wants you for. */
DO ~%Set_CheckKnowsPortalBlood_7_OR_8% SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalKnowsAunArgent" */
== C#RtDdeg IF ~%CheckKnowsAunArgent_1_OR_2% OR(2)
Global("C#RtD_CoalKnowsAunArgent","GLOBAL",1)
Global("C#RtD_CoalKnowsAunArgent","GLOBAL",2)~ THEN @255 /* We gathered some information about Caelar. Appearently, she was being disgraced from the Order of the Aster as a child. As a coincidence, her uncle Aun Aster, also a very respected member of the Order seem to have vanished around the same time. */
DO ~%Set_CheckKnowsAunArgent_1_OR_2% SetGlobal("C#RtD_KnowsAunArgent_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckKnowsAunArgent_3_OR_4% OR(2)
Global("C#RtD_CoalKnowsAunArgent","GLOBAL",3)
Global("C#RtD_CoalKnowsAunArgent","GLOBAL",4)~ THEN @256 /* We know that Caelar was in Avernus and came back at the same time her uncle Aun Argent vanished. */
DO ~%Set_CheckKnowsAunArgent_3_OR_4% SetGlobal("C#RtD_KnowsAunArgent_SET","GLOBAL",3)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckKnowsAunArgent_5_OR_6% OR(2)
Global("C#RtD_CoalKnowsAunArgent","GLOBAL",5)
Global("C#RtD_CoalKnowsAunArgent","GLOBAL",6)~ THEN @257 /* We know that her uncle Aun Aster took place for Caelar in Avernus, freeing her from her own arogance that trapped her there. */
DO ~%Set_CheckKnowsAunArgent_5_OR_6% SetGlobal("C#RtD_KnowsAunArgent_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

/* "C#RtD_CoalCaelarPlan" 8,9 */
== C#RtDdeg IF ~%CheckCaelarPlan_8_OR_9% OR(2)
Global("C#RtD_CoalCaelarPlan","GLOBAL",8)
Global("C#RtD_CoalCaelarPlan","GLOBAL",9)~ THEN @258 /* We believe that Caelar is using the crusade to free her uncle Aun Argent from Avernus. */
DO ~%Set_CheckCaelarPlan_8_OR_9% SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",5) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* "C#RtD_CoalCaelarPlan" 10,11 not considered */

/* "C#RtD_CoalMetHoodedMan" */
== C#RtDdeg IF ~%CheckMetHoodedMan_1_OR_2% OR(2)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",1)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",2)~ THEN @259 /* We are also aware of your reporting of a hooded man seeking you out in what should have been a secured place. */
DO ~%Set_CheckMetHoodedMan_1_OR_2% SetGlobal("C#RtD_MetHoodedMan_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
== C#RtDdeg IF ~%CheckMetHoodedMan_3_OR_4% OR(2)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",3)
Global("C#RtD_CoalMetHoodedMan","GLOBAL",4)~ THEN @260 /* We are also aware of your reportings about a hooded man seeking you out more than once. */
DO ~%Set_CheckMetHoodedMan_3_OR_4% SetGlobal("C#RtD_MetHoodedMan_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~
/* "C#RtD_CoalKnowsHoodedMan" (3,4 not considered) */
== C#RtDdeg IF ~%CheckKnowsHoodedMan_1_OR_2% OR(2)
Global("C#RtD_CoalKnowsHoodedMan","GLOBAL",1)
Global("C#RtD_CoalKnowsHoodedMan","GLOBAL",2)~ THEN @261 /* We noticed that the hooded man you spoke of is taking an interest in your Bhaal heritage. */
DO ~%Set_CheckKnowsHoodedMan_1_OR_2% SetGlobal("C#RtD_KnowsHoodedMan_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~

== C#RtDdeg IF ~Global("C#RtD_OnlyOld","LOCALS",2)~ THEN @283 /* This was a summary about the information we already shared. Let me know if you want to talk about new knowledge. */ 
== C#RtDdeg IF ~Global("C#RtD_OnlyOld","LOCALS",0)~ THEN @284 /* I told you all that is known to us. */ 
END
IF ~~ THEN DO ~SetGlobal("C#RtD_OnlyOld","LOCALS",0)~ + information_07