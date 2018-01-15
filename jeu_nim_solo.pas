{
ALGORITHME : jeu_nim_solo
//BUT: Réaliser un jeu des allumetes qui joue seul contre un joueur
//ENTREES: Le nombre d'allumetes que le joueur souhaite retirer
//SORTIES: Le nombre d'allumetes restantes, qui a gagné



CONST
	allumettes_max <- 21 : ENTIER
	gagner <- 1 : ENTIER


VAR
	choix, allumettes : ENTIER 
	joueur : BOOLEAN


DEBUT
	
	allumettes <- allumettes_max
	REPETER

		ECRIRE 'C''est a votre tour, il reste actuellement ', allumettes,' allumetes'	//Tour du joueur
		joueur <- VRAI 	//Joueur prends VRAI car c'est son tour
		
		REPETER //On teste si le choix des alumettes est correct
			ECRIRE 'Veuillez entrez un bon choix'
			LIRE choix
		JUSQUA (choix > 0) ET (choix <= 3)	//On teste si on choisi bien entre 1 et 3 allumettes

		SI (choix = 1)	//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes
			 allumettes <-  allumettes -1
		SINON SI (choix = 2)
			 allumettes <-  allumettes -2
		SINON SI (choix = 3)
			 allumettes <-  allumettes -3
		FINSI

		choix <- 0

		ECRIRE 'Votre adversaire joue'	//Tour du bot donc JOUEUR = FAUX
		joueur <- FAUX
		choix <- (ALEATOIRE(3)+1) //Le bot retire entre 1 et 3 allumettes

		SI (choix = 1)	//On choisi combien l
			 allumettes <-  allumettes -1
		SINON SI (choix = 2)
			 allumettes <-  allumettes -2
		SINON SI (choix = 3)
			 allumettes <-  allumettes -3

		choix <- 0

	JUSQUA ( allumettes = NBMIN)

	SI (joueur = VRAI) ALORS //On regarde qui a laisser la derniere allumette
		ECRIRE "Le joueur 1 gagne la partie !"	//On affiche le vainqueur
	SINON
		ECRIRE "Votre adversaire gagne la partie !" 

FIN
}

PROGRAM jeu_nim_solo;
//BUT: Réaliser un jeu des allumetes qui joue seul contre un joueur
//ENTREES: Le nombre d'allumetes que le joueur souhaite retirer
//SORTIES: Le nombre d'allumetes restantes, qui a gagné

USES crt;

CONST
	allumettes_max=21;
	gagner=1;


VAR
	choix, allumettes : INTEGER ;
	joueur : BOOLEAN;


BEGIN
	clrscr;
	RANDOMIZE;
	
	allumettes := allumettes_max;
	
	REPEAT //Boucle du jeu qui se repete jusqu'a ce qu'il ne reste qu'une allumettes

		writeln('C''est a votre tour, il reste ', allumettes,' allumettes');	//Tour du joueur
		joueur := TRUE;	//Joueur prends VRAI car c'est son tour
		
		REPEAT
			writeln('Veuillez entrez un bon choix');
			readln(choix);
		UNTIL (choix > 0) AND (choix <= 3);	//Il choisi un chiffre entre 1 et 3, nous testons ce chiffre

		IF (choix=1) THEN
			BEGIN	//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes
				allumettes:=allumettes-1
			END

		ELSE IF (choix=2) THEN
			BEGIN
				allumettes:=allumettes-2
			END

		ELSE IF (choix=3) THEN
			BEGIN
				allumettes:=allumettes-3
			END;

		choix:=0;

		writeln('Votre adversaire joue');	//Tour du jeu de jouer nous affectons FAUX a joueur
		joueur:=FALSE;
		choix:=(RANDOM(3)+1);	//Le bot choisi un chiffre aleatoire entre 1 et 3.

		IF (choix = 1) THEN	
			BEGIN	//Une fois le chiffre choisi nous retirons donc le chiffre choisi du nombre restant d'allumetes
				allumettes:=allumettes-1
			END
		ELSE IF (choix = 2) THEN
			BEGIN
				allumettes:=allumettes-2
			END
		ELSE IF (choix = 3) THEN
			BEGIN
				allumettes:=allumettes-3
			END;

		choix:=0

	UNTIL (allumettes = gagner);	

	IF (joueur = TRUE) THEN 
		BEGIN	//On affiche la derniere personne qui a jouer
			writeln('Le joueur 1 gagne la partie !')	//On affiche le vainqueur
		END
	ELSE
		BEGIN
			writeln('Votre adversaire gagne la partie !')
		END;

	readln;

END.