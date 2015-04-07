//============================================
// cmEarplugs Script
// written by computermancer
// superfunserver.com
//============================================
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//CONFIG : CHOOSE YOUR BEHAVIOR
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//CHOOSE IF YOU WANT AUTOINSERT & AUTOREMOVE OF EARPLUGS
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
InsertAutoEarplugs=true;
RemoveAutoEarplugs=true;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//CHOOSE AUTO-INSERT & REMOVE BEHAVIOR
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//FIRST NUMBER : Choose how LONG it takes  until sound is REDUCED
//SECOND NUMBER:" CHoose how LOUD the sound is when it is REDUCED
cmMuteSound = {
5 fadeSound 0.25;
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//FIRST NUMBER : Choose how LONG it takes  until sound RETURNS
//SECOND NUMBER:" CHoose how LOUD the sound is when it is done RETUNRNING
cmReturnSound = {
10 fadeSound 1;
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//CHOOSE YOUR AUTO-INSERT MESSAGE
cmMuteMessage = {
hint "Earplugs have been auto-inserted...";
systemchat "Earplugs have been auto-inserted...";
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//CHOOSE YOUR AUTO-REMOVE MESSAGE
cmReturnSoundMsg = {
hint "Earplugs have been auto-removed.";
systemchat "Earplugs have been auto-removed.";
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//CHOOSE HOW LONG BEFORE THEY CAN RE-TOGGLE EARPLUGS MANUALLY
cmTImeToWaitEP = 5;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//END CONFIGURABLES
