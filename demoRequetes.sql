

------------------ LA BASE DE DONNEES ---------------------------

-- Ajout des CLIENTS --

INSERT INTO client VALUES 
(NULL,"smith","harry","0645126325","harrysmith@gmail.com",1),
(NULL,"doe","john","0641528596","johndoe@gmail.com",2),
(NULL,"williams","arianne","0752416385","ariannewilliams@gmail.com",3),
(NULL,"smith","adam","0645786512","adamsmith@hotmail.fr",4),
(NULL,"daniel","jack","0745854523","jackdaniel@outlook.fr",5)

-- Ajout des adresses de livraison --

INSERT INTO adresse_livraison VALUES
(NULL,"15 mail du commandant jacques-yves cousteau","Batiment A","appartement 12","44300","nantes","zone 4"),
(NULL,"35 route de carquefou","Batiment A","appartement 21","44300","nantes","zone 4"),
(NULL,"16 rue des chaumes",NULL,NULL,"44000","nantes","zone 1"),
(NULL,"31 rue de vaudouzil","Batiment 1","appartement 23","44100","nantes","zone 2"),
(NULL,"11 avenue de genève","résidence soleil","appartement 12","44200","nantes","zone 3")

-- Ajout des LIVREURS --

INSERT INTO livreur VALUES
(NULL,"armando","garry",1,"zone 4",6),
(NULL,"becot","marissa",0,"zone 4",7),
(NULL,"benoun","alexandre",1,"zone 1",8),
(NULL,"swayer","thom",1,"zone 2",9),
(NULL,"pipin","mario",1,"zone 3",10)

-- Création d'un compte UTILISATEUR --

INSERT INTO utilisateur VALUES 
(NULL,"harrypotter","beta_22z","client"),
(NULL,"superman","alpha12-c","client"),
(NULL,"arianne","tango_88q","client"),
(NULL,"scoubidou","fasto.ze3","client"),
(NULL,"lacasadepapel","azert_12c","client"),
(NULL,"garrydu93","effe8_a","livreur"),
(NULL,"marissa1981","zefrz2_1","livreur"),
(NULL,"azerty12","hldvr_17","livreur"),
(NULL,"topgun22","cec_88zde","livreur"),
(NULL,"mario","efrg_23d","livreur"),
(NULL,"administration","superpass18","Administration")


-- Création de nouveau plat --

INSERT INTO article VALUES
(NULL,"12.00",10,"plat en sauce",250,"boeuf bourguigon","plat",1),
(NULL,"13.00",10,"plat cuit au four",150,"poulet rôti","plat",1),
(NULL,"9.00",10," fruit de saison en tarte",79,"tarte aux pommes","dessert",1),
(NULL,"8.00",10," du glacé pour les grosses chaleurs",215,"glace aux fruits rouges","dessert",1)

-- Ajout d'une commande --

INSERT INTO commande VALUES
(NULL,true,"2018-06-10 10:30",1,1,0,1,0),
(NULL,true,"2018-06-10 10:30",1,1,0,2,0),
(NULL,true,"2018-06-10 10:30",1,1,0,3,0),
(NULL,true,"2018-06-10 10:30",1,2,0,4,0),
(NULL,false,"2018-06-10 10:30",2,2,0,5,0)

__ Ajout des clés étrangères de facture --
UPDATE commande SET facture_id_facture=1 WHERE id_commande=1;
UPDATE commande SET facture_id_facture=2 WHERE id_commande=2;
UPDATE commande SET facture_id_facture=3 WHERE id_commande=3;
UPDATE commande SET facture_id_facture=4 WHERE id_commande=4;
UPDATE commande SET facture_id_facture=5 WHERE id_commande=5

-- Ajout de la ligne de commande --

INSERT INTO ligne_commande VALUES
(1,1,2),
(1,2,0),
(1,3,1),
(1,4,1),
(2,1,3),
(2,2,0),
(2,3,1),
(2,4,2),
(3,1,1),
(3,2,4),
(3,3,1),
(3,4,1),
(4,1,1),
(4,2,1),
(4,3,1),
(4,4,1),
(5,1,0),
(5,2,4),
(5,3,0),
(5,4,2)

-- Mettre à jour l'identifiant CLIENT sur les commandes --

UPDATE commande SET client_id_client=1 WHERE id_commande=1;
UPDATE commande SET client_id_client=2 WHERE id_commande=2;
UPDATE commande SET client_id_client=3 WHERE id_commande=3;
UPDATE commande SET client_id_client=4 WHERE id_commande=4;
UPDATE commande SET client_id_client=5 WHERE id_commande=5;

-- Mettre à jour le montant des commandes --

UPDATE commande Set montant=042.94 WHERE id_commande=1;
UPDATE commande Set montant=063.86 WHERE id_commande=2;
UPDATE commande Set montant=083.34 WHERE id_commande=3;
UPDATE commande Set montant=043.95 WHERE id_commande=4;
UPDATE commande Set montant=070.12 WHERE id_commande=5

-- Mise à jour de la ligne de livraison_commande --

INSERT INTO livraison_commande VALUES
(1,1,"2018-06-10 10:42"),
(3,2,"2018-06-10 10:47"),
(4,3,"2018-06-10 10:41"),
(5,4,"2018-06-10 10:38"),
(2,5,"2018-06-10 10:44")

--  Ajouter le contenu des factures --

INSERT INTO facture VALUES
(NULL,"001","2018-06-10"),
(NULL,"002","2018-06-10"),
(NULL,"003","2018-06-10"),
(NULL,"004","2018-06-10"),
(NULL,"005","2018-06-10")

-- /////////////////////////////// DEMONSTRATION DE REQUETES SQL  //////////////////////////////////////////////// --

------------ COMPTES UTILISATEURS / CLIENT / LIVREUR / administration -----------

-- Création d'un compte UTILISATEUR --
INSERT INTO utilisateur
VALUES (NULL,"harrypotter","beta_22z","client")

-- Exemple insertion multiple --
INSERT INTO utilisateur VALUES 
(NULL,"superman","alpha12-c","client"),
(NULL,"arianne","tango_88q","client")

-- Exemple de modification pour la soutenance --
UPDATE utilisateur SET nom_utilisateur="Guillaume_Rémy", mot_de_passe="Mentorexaminateur15062018"  WHERE id_utilisateur=21;

-- Suppression d'un utilisateur --
DELETE FROM utilisateur WHERE id_utilisateur=1
-- Pour l'exemple:
DELETE FROM utilisateur WHERE id_utilisateur=21 or id_utilisateur=22


-- Ajout d'un nouveau CLIENT --
INSERT INTO client 
VALUES (NULL, "turlet","nicolas", 0645126325, "turletnicolas@gmail.com")
INSERT INTO adresse_livraison
VALUES (NULL,"35 route de carquefou","Batiment A","Appartement 21",44300,"nantes","zone 4"),
INSERT INTO utilisateur VALUES 
(NULL,"superclient","alpha15_6","client")

-- Ajout d'un LIVREUR --
INSERT INTO livreur VALUES
(NULL,"armando","garry",1,"zone 4",6);
INSERT INTO utilisateur
VALUES (NULL,"garrydu93","effe8_a","livreur")

--------------  1: PASSER UNE COMMANDE / REQUETES --------------

-- Afficher les articles au menu du jour --
SELECT * FROM article WHERE article_au_menu=true

-- Création de la commande --
INSERT INTO commande
VALUES (NULL,false,"2018-06-10 10:30",0,0,0,1,0)

-- Ajout des articles dans la ligne de commande --
INSERT ligne_commande
VALUES 
(1,1,2),
(1,2,0),
(1,3,1),
(1,4,1)

-- Modifier un produit dans la commande --
UPDATE ligne_commande SET quantite="nombre de produits souhaités" WHERE article_id_article="type d'article" AND comande_id_commande="id de commande";

-- Réglement d'une commande --
UPDATE commande SET reglement=1 WHERE id_commande=1;  -- 1=TRUE / 0=FALSE--
-- If 1 = la commande a été réglée
-- If 0 = la commande est en attente de réglement

-------------- 2: LIVRER UNE COMMANDE  ---------------

-- Vérification disponibilité livreurs classés par zone de livraison --
SELECT * FROM livreur WHERE statut_disponible="1" ORDER BY geo_localisation LIMIT 10

-- Vérification stock dans le sac du livreur --
SELECT * FROM sac_livreur  WHERE  quantite >0 IN (SELECT quantite FROM ligne_commande GROUP BY article_id_article)

-- Vérification de l’emplacement livreur(exemple de type CONCAT: X columns) --
SELECT geo_localisation, CONCAT (prenom, " ",nom, " // Identifiant de livreur = ",id_livreur) as "Livreur sur place" FROM livreur ORDER BY geo_localisation

-- Affichage du contenu de la commande au livreur --
SELECT * FROM ligne_commande WHERE commande_id_commande="id de la commande à livrer";

-- le livreur prend en charge la commande --
UPDATE livreur SET statut_disponible=0; WHERE id_livreur="id du livreur en charge de la commande";
UPDATE commande SET prise_charge=1 WHERE id_commande="id de la commande à livrer";

-- Temps de livraison estimé actualisé par le livreur à la prise en charge de la commande --
UPDATE  livraison SET temps_livraison="temps estimee de livraison" WHERE commande_id_commande="id de la commande à livrer"

-- Le livreur a effectué la livraison --
UPDATE commande SET commande_recue=1 WHERE id_commande=1;
UPDATE sac_livreur SET quantite=quantite-1 WHERE livreur_id_livreur=1 AND article_id_article=1;
UPDATE article SET stock=stock-1 WHERE id_article=1;
UPDATE livreur SET statut_disponible=1 WHERE id_livreur="id du livreur concerné";

---------------- 2bis: SUIVI COMMANDE POUR LE CLIENT -------------

-- Affichage de la prise en charge --
SELECT prise_charge FROM commande WHERE id_commande=1;
--if 1 = La commande a été prise en charge
--if 0 = La commande est en attente de prise en charge

-- Affichage l'heure estimée de livraison --
SELECT Temps_livraison AS heure_estimée_de_livraison FROM livraison_commande WHERE commande_id_commande=1


--------------  3: AJOUT DE PLAT AU MENU DU JOUR -------------

-- Création de nouveaux plats --
INSERT INTO article VALUES
(NULL,"12.00",10,"plat en sauce",250,"boeuf bourguigon",1,"plat")

-- Afficher les articles au menu du jour par PRIX croissant (Pagination de 4) --
SELECT * FROM article WHERE article_au_menu=1 ORDER BY prix_unitaire_ht ASC LIMIT 0, 4

-- Suppression de plats --
DELETE FROM article WHERE id_article=1 LIMIT 1

-- Retrait des articles à J-1 --
UPDATE article SET article_au_menu=false WHERE id_article=5;
UPDATE article SET article_au_menu=0 WHERE id_article=6;
UPDATE article SET article_au_menu=false WHERE id_article=7;
UPDATE article SET article_au_menu=0 WHERE id_article=8

-- Passage d'artcles au menu du jour --
UPDATE  article SET article_au_menu=true WHERE id_article=1;
UPDATE  article SET article_au_menu=1 WHERE id_article=2;
UPDATE  article SET article_au_menu=true WHERE id_article=3;
UPDATE  article SET article_au_menu=1 WHERE id_article=4

------------  MISE A JOUR DU SAC A DOS DU LIVREUR (Rappel) -------------

-- Afficher le stock d'articles du sac d'un des livreurs --
SELECT * FROM sac_livreur WHERE livreur_id_livreur=1;

-- Modifier les stocks suite à la livraison d'une commande -- 
UPDATE sac_livreur SET quantite=quantite-1 WHERE article_id_article=1;
UPDATE article SET stock=stock-1 WHERE id_article=1;


----------------- STATISTIQUES: EXEMPLES ----------------


-- Prix moyen des articles au Menu --
SELECT AVG(prix_unitaire_ht) AS "Prix Moyen des articles au menu" FROM article

-- Liste des commandes du jour--
SELECT * FROM commande WHERE date LIKE "2018-06-10%"
