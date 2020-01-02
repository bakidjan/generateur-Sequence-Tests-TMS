proc PopUp {message} {
	#creer un thread
	#Verifier que ISPACE est ouvert
	#creer une nouvelle fenetre ISPACE 
		#afficher le $message
		#creer un bouton fermer qui va clore le thread
	#afficher la fenetre

	#A faire
	puts "PopUp $message"
}

proc SetValue {NomDuParametre Value} {
	#check existance paramètre
	# afaire
	
	#check type valeur
	# Afaire
	
	puts "SetValueParametre $NomDuParametre $Value"
}

proc StartLoop {NomDuFichier} {
	#creer un thread
	#a faire

	#check existance fichier
	# afaire

	#ouvrir, lire/recupérer les données
	# a faire

	#calculer les temps entre les emissions
	#a faire

	#envoyer les données en boucle
	#A faire

	puts "StartLoop $NomDuFichier"
}

proc StartLoopSendFile {NomDuFichier} {
	#creer un thread
	#a faire

	#check existance fichier
	# afaire

	#ouvrir, lire/recupérer les données
	# a faire

	#calculer les temps entre les emissions
	#a faire

	#envoyer les données en boucle
	#A faire

	puts "StartLoopSendFile $NomDuFichier"
}

# ...

proc Wait {TempsAttenteSeconde} {
	after $TempsAttenteSeconde

	puts "wait $TempsAttenteSeconde"
}

proc CheckData {ListeParametreValeur} {
	#parcourir la liste
		#verifier que les paramètres existes
		#verifier que les valeurs sont cohérentes avec le type des paramètres
	#A faire

	#Récuperer les valeurs des paramètres
		#verifier que le test de valeur est OK
	#a faire

	#retourner les résultats
	#a faire

	puts "CheckData $ListeParametreValeur"
}

proc StopLoop {NomDeLaBoucle} {
	#arreter la boucle $NomDeLaBoucle
	#a faire

	puts "StopLoop $NomDeLaBoucle"
}

# ...

proc Record {ListeParametre NomFichierSortie} {
	#Creer un thread

	#verifier que les paramètres existes
	#verifier que le fichier de sortie n'existe ou proposer un renommage
	# A faire

	#En boucle
		#Récupérer les valeurs de chaque paramètre
		#Tagguer le temps de la récupération
		#enregistrer les donnees dans le fichier de sortie
	#A faire

	puts "Record $ListeParametre $NomFichierSortie"
}

proc StopRecord {NonEnregistrement} {
	#Creer un thread

	#verifier que les paramètres existes
	#verifier que le fichier de sortie n'existe ou proposer un renommage
	# A faire

	#En boucle
		#Récupérer les valeurs de chaque paramètre
		#Tagguer le temps de la récupération
		#enregistrer les donnees dans le fichier de sortie
	#A faire

	puts "Record $ListeParametre $NomFichierSortie"
}

proc SendFile {NomDufichier} {
	#Creer un thread

	#verifier que le fichier source existe
	
	#en boucle
		#parser ligne à ligne 
			#verifier que le paramètre du fichier existe
			#verifier que la valeur a rejouer est compatible du type du paramètre
			#envoyer la valeur
	# A faire

	puts "SendFile $NomDufichier"
}
# ...

proc IncrValue {NomDuParametre} {
	#check que le paramètre existe
	#recuperer la valeur du paramatre
	#verifier que c'est un nombre
	#incrimenter le nombre

	puts "IncrValue $NomDuParametre"
}
