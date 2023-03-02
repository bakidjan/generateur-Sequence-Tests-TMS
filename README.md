
# generateurSequenceTests-TMS.
## Developpé en python et Tcl
J'ai developpé ce petit script de générateur de sequences de tests pour Airbus.
Le TMS est un générateur d’environnement avionique. C’est un logiciel de pilotage d’interface d’acquisition/génération de signaux, développé par un des clients du secteur aéronautique pour une utilisation sur des bancs de tests. Il propose aux utilisateurs une interface graphique pour visualiser et contrôler les signaux avioniques d’un banc de tests. En fonction de procédures d’essai en entrée au format XLS, l’outil génère des scripts TCL. 
## Fonctions
Ce générateur a trois fonctions principales : la lecture des procédures dans les scenarios d’endurance (document excel), l’association à chaque procédure la fonction correspondance dans la librairie TCL et génère une librairie correspondante au format TCL. Le script produit par l’outil python est par la suite exécuté par TMS, au travers de l’IHM ISPACE, pour jouer des séquences de tests sur des équipements avioniques d’un banc d’essai. Le processus automatise la génération de signaux.

3 Fonctions principales : 
Lire les procédures dans les scénarios d'endurance (document excel) - votre programme Python peut extraire les données des fichiers Excel et les utiliser pour générer des signaux.

Associer à chaque procédure la fonction correspondante dans la librairie TCL - votre programme Python peut utiliser les informations sur les procédures pour sélectionner les fonctions appropriées dans la bibliothèque TCL.

Générer une bibliothèque correspondante au format TCL - votre programme Python peut générer un fichier TCL contenant les instructions pour générer les signaux.

Le script produit par votre outil Python est ensuite exécuté par TMS (Test Management System) via l'interface utilisateur ISPACE pour jouer des séquences de tests sur les équipements avioniques. Le processus automatisé permet de générer des signaux de manière rapide, précise et fiable, ce qui peut améliorer l'efficacité et la qualité des tests effectués sur les équipements avioniques.
