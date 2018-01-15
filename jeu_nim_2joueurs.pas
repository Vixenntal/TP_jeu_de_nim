{
Algorithme : Jeu_Nim_2Joueurs
//BUT: Réaliser un jeu des allumettes qui permet à deux joueurs de jouer
//ENTREES: Le nombre d'allumettes que le joueur veux retirer
//SORTIES: Le nombre d'allumettes qui reste


CONST
	allumettes_max <- 21 : ENTIER
	gagner <- 1 : ENTIER

VAR
	choix, joueur,allumettes : ENTIER 


DEBUT

	allumettes <- allumettes_max
	joueur <- 1
	REPETER

		ECRIRE 'C''est au tour du joueur ',joueur,' il reste actuellement ',allumettes,' allumettes'	//Tour du joueur 1 on affecte 1 à joueur
		
		REPETER //Boucle du jeu, qui se repete jusqu'a ce qu'il ne reste qu'une seule allumette
				ECRIRE 'Veuillez entrez un bon choix'
				LIRE choix
			JUSQUA (choix > 0) ET (choix <= 3)	//On test si le joueur choisi bien le bon nombre d'allumettes

			SI (choix = 1) ALORS	//On retire le nombre d'allulettes choisi
				allumettes <- allumettes - 1
			SINON SI (choix = 2)
				allumettes <- allumettes - 2
			SINON SI (choix = 3)
				allumettes <- allumettes - 3
			FINSI

			choix <- 0

			SI (joueur = 1) ALORS
				joueur <- 2
			SINON
				joueur <- 1
			FINSI

	JUSQUA (allumettes = gagner)

	SI (joueur = 1) ALORS 	//On regarde qui a laissé la derniere allumette
		ECRIRE 'Le joueur 2 gagne la partie !'	//On affiche le vainqueur
	SINON
		ECRIRE 'Le joueur 1 gagne la partie !' 

FIN
}

Program jeu_Nim_2Joueurs;
//BUT: Réaliser un jeu des allumettes qui permet à deux joueurs de jouer
//ENTREES: Le nombre d'allumettes que le joueur souhaite retirer
//SORTIES: Le nombre d'allumettes restantes, qui a gagné

USES crt;

CONST
	allumettes_max = 21;
	gagner = 1;

VAR
	choix, joueur, allumettes : INTEGER;


BEGIN
	clrscr;

	allumettes:=allumettes_max;
	joueur := 1;
	REPEAT //Boucle du jeu, qui se repete jusqu'a ce qu'il ne reste qu'une seule allumette

		writeln('C''est au tour du joueur ',joueur,' il reste actuellement ',allumettes,' allumettes');	//C'est au tour du joueur 1 nous affectons 1 à joueur
		
		REPEAT
			writeln('Veuillez entrez un bon choix');
			readln(choix);
		UNTIL (choix > 0) AND (choix <= 3);	//On test si le joueur choisi bien le bon nombre d'allumettes

			IF (choix=1) THEN	//On retire le nombre d'allulettes choisi
				BEGIN	
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

			choix := 0;

			IF (joueur = 1) THEN
				BEGIN
					joueur := 2
				END
			ELSE
				BEGIN
					joueur := 1
				END;

	UNTIL (allumettes = gagner);

	IF (joueur = 1) THEN
		BEGIN 	//On regarde qui a laissé la derniere allumette
			writeln('Le joueur 2 gagne la partie !')	//On affiche le vainqueur
		END	
	ELSE
		BEGIN
			writeln('Le joueur 1 gagne la partie !')
		END;
readln;
END.