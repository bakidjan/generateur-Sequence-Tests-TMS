
# generateurSequenceTests-TMS.
## Developpé en python et Tcl
J'ai developpé ce petit script de générateur de sequences de tests pour Airbus
Le TMS est un générateur d’environnement avionique. C’est un logiciel de pilotage d’interface d’acquisition/génération de signaux, développé par un des clients du secteur aéronautique pour une utilisation sur des bancs de tests. Il propose aux utilisateurs une interface graphique pour visualiser et contrôler les signaux avioniques d’un banc de tests. En fonction de procédures d’essai en entrée au format XLS, l’outil génère des scripts TCL. 
## Fonctions
ce générateur a trois fonctions principales : la lecture des procédures dans les scenarios d’endurance (document excel), l’association à chaque procédure la fonction correspondance dans la librairie TCL et génère une librairie correspondante au format TCL. Le script produit par l’outil python est par la suite exécuté par TMS, au travers de l’IHM ISPACE, pour jouer des séquences de tests sur des équipements avioniques d’un banc d’essai. Le processus automatise la génération de signaux.
