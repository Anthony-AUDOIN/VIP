# VIP - Gestionnaire de stars

![forthebadge](https://forthebadge.com/images/badges/made-with-javascript.svg) ![forthebadge](https://forthebadge.com/images/badges/0-percent-optimized.svg)

Ce projet d'apprentissage du node Js (Semestre 4 IUT Informatique) est un dictionnaire permettant de répertorier toutes les personnes célèbres ou VIP dedans avec des informations complémentaires comme les mariages, les films pour les acteurs / réalisateurs et pleins d'autres choses à aller découvrir. De plus, vous pouvez retrouver les fonctionnalités d'articles et d'album par VIP. Une partie administration est aussi présente, et permet d'ajouter / modifier / supprimer des VIP.

## Pour commencer

Veuillez à télécharger ou clone le repository sur votre machine.

### Pré-requis

Vous devez installer sur votre machine a minima NodeJs et un environnement de développement serveur comme MAMP ou XAMP.

### Installation

Démarrer MAMP puis sur votre navigateur, aller a l'adresse ``http://localhost/phpMyAdmin/`` et créer une nouvelle base de données nommée ``vip``.
Insérer dans la base de données ce [fichier](SQL/vip.sql).
Pour finir, lancer une console, mettez-vous dans le répertoire du projet et exécutait la commande ``npm i``.

## Démarrage

Démarrer MAMP et en etant toujours dans le repertoire du projet, faite ``node app`` puis lancé votre navigateur a l'adresse ``http://localhost:6800/``

## Information base de données

| Propriétés  | Valeur         |
| :--------------- |:---------------:|
| host  |   localhost        |
| user  | bd             |  
| password  | bede          |  
| database  | vip          |  
| port  | 3306          |  

## Fabriqué avec

* [NodeJs](https://nodejs.org/) - Plateforme logicielle
* [Express](https://expressjs.com/) - Framework NodeJs
* [Handlebars](https://handlebarsjs.com/) - Moteur de template
* [MAMP](https://www.mamp.info/fr/) - Environnement serveur
* [WebStorm](https://www.jetbrains.com/fr-fr/webstorm/) - IDE 

## Auteurs
* **Anthony AUDOIN** _alias_ [@Anthony-AUDOIN](https://github.com/Anthony-AUDOIN)

## License

Ce projet est sous licence ``mit`` - voir le fichier [LICENSE.md](LICENSE.md) pour plus d'informations

