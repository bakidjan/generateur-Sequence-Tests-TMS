PopUp "Eteindre le CFDIU" 
PopUp "Sélectionner un F/N et un City Pair" 
SetValue "LGCIU_ground" 1.0
StartLoopSendFile "Conf_GPWC" 
StartLoopSendFile "Conf_FDIU" 
StartLoopSendFile "Conf_ZC" 
StartLoopSendFile "Conf_AMU" 
StartLoopSendFile 
StartLoopSendFile "Conf_SDCU" 
StartLoopSendFile "Conf_DMU" 
StartLoopSendFile "Conf_RMP1" 
StartLoopSendFile "Conf_FWC1" 
StartLoopSendFile "Conf_FWC2" 
PopUp "Allumer le CFDIU" 
Wait 180 
CheckData 
StopLoop "Conf_FWC1" 
StopLoop "Conf_FWC2" 
StartLoop "Nb_Loop" 
Record 
SendFile "Auto_Flight_FWC2" 
Wait 180 
SetValue "LGCIU_ground" 0.0
CheckData 
Wait 180 
StartLoopSendFile "Fails_ATC1" 
StartLoopSendFile "Fails_RA2" 
StartLoopSendFile "Fails_AEVC" 
Wait 
SetValue "LGCIU_ground" 1.0
Wait 180 
CheckData 
StopLoop "Fails_ATC1" 
StopLoop "Fails_RA2" 
StopLoop "Fails_AEVC" 
StopRecord 
Wait 180 
IncrValue "Nb_Loop" 
StopLoop 