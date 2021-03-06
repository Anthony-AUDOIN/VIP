-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: vip
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acteur`
(
    `VIP_NUMERO`       int(11) NOT NULL,
    `ACTEUR_DATEDEBUT` datetime DEFAULT NULL,
    PRIMARY KEY (`VIP_NUMERO`),
    CONSTRAINT `FK_ACTEUR_EST4_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acteur`
--

LOCK TABLES `acteur` WRITE;
/*!40000 ALTER TABLE `acteur`
    DISABLE KEYS */;
INSERT INTO `acteur`
VALUES (1, '1992-07-16 00:00:00'),
       (2, '1989-04-23 00:00:00'),
       (3, '1965-01-30 00:00:00'),
       (4, '1984-12-15 00:00:00'),
       (5, '1974-05-12 00:00:00'),
       (6, '1980-01-01 00:00:00'),
       (7, '1990-01-02 00:00:00'),
       (8, '1995-05-06 00:00:00'),
       (9, '1996-04-05 00:00:00'),
       (11, NULL),
       (12, '1978-01-01 00:00:00'),
       (14, NULL),
       (15, '1983-01-02 00:00:00'),
       (16, '1986-01-01 00:00:00'),
       (17, '1969-01-01 00:00:00'),
       (18, '1973-01-01 00:00:00'),
       (19, '1998-01-01 00:00:00'),
       (20, '0000-00-00 00:00:00'),
       (21, '0000-00-00 00:00:00'),
       (22, '0000-00-00 00:00:00'),
       (23, '0000-00-00 00:00:00'),
       (24, '0000-00-00 00:00:00'),
       (25, '0000-00-00 00:00:00'),
       (26, '0000-00-00 00:00:00'),
       (34, '0000-00-00 00:00:00'),
       (39, NULL),
       (40, '2017-12-25 00:00:00');
/*!40000 ALTER TABLE `acteur`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agence`
(
    `AGENCE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
    `AGENCE_NOM`    varchar(20) DEFAULT NULL,
    PRIMARY KEY (`AGENCE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence`
    DISABLE KEYS */;
INSERT INTO `agence`
VALUES (1, 'Ellamarianne'),
       (2, 'Quellebella'),
       (3, 'Griffithia'),
       (4, 'City Models'),
       (5, 'MADISON MODEL');
/*!40000 ALTER TABLE `agence`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album`
(
    `ALBUM_NUMERO`        int(11) NOT NULL AUTO_INCREMENT,
    `MAISONDISQUE_NUMERO` int(11) NOT NULL,
    `ALBUM_TITRE`         varchar(20) DEFAULT NULL,
    `ALBUM_DATE`          datetime    DEFAULT NULL,
    PRIMARY KEY (`ALBUM_NUMERO`),
    KEY `CIF1_FK` (`MAISONDISQUE_NUMERO`),
    CONSTRAINT `FK_ALBUM_CIF1_MAISONDI` FOREIGN KEY (`MAISONDISQUE_NUMERO`) REFERENCES `maisondisque` (`MAISONDISQUE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album`
    DISABLE KEYS */;
INSERT INTO `album`
VALUES (1, 5, 'Quelqu\'un m\'a dit', '2002-01-17 00:00:00'),
       (2, 6, 'Alors Regarde', '2006-01-23 00:00:00'),
       (3, 6, 'Entre deux', '2006-01-23 00:00:00'),
       (4, 6, 'Au caf?? des d??lices', '2000-01-24 00:00:00');
/*!40000 ALTER TABLE `album`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apouragence`
--

DROP TABLE IF EXISTS `apouragence`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apouragence`
(
    `AGENCE_NUMERO` int(11) NOT NULL,
    `VIP_NUMERO`    int(11) NOT NULL,
    PRIMARY KEY (`AGENCE_NUMERO`, `VIP_NUMERO`),
    KEY `LIEN_136_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_APOURAGE_LIEN_125_AGENCE` FOREIGN KEY (`AGENCE_NUMERO`) REFERENCES `agence` (`AGENCE_NUMERO`),
    CONSTRAINT `FK_APOURAGE_LIEN_136_MANNEQUI` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `mannequin` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apouragence`
--

LOCK TABLES `apouragence` WRITE;
/*!40000 ALTER TABLE `apouragence`
    DISABLE KEYS */;
INSERT INTO `apouragence`
VALUES (5, 19),
       (4, 29);
/*!40000 ALTER TABLE `apouragence`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apoursujet`
--

DROP TABLE IF EXISTS `apoursujet`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoursujet`
(
    `ARTICLE_NUMERO` int(11) NOT NULL,
    `VIP_NUMERO`     int(11) NOT NULL,
    PRIMARY KEY (`ARTICLE_NUMERO`, `VIP_NUMERO`),
    KEY `LIEN_153_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_APOURSUJ_LIEN_126_ARTICLE` FOREIGN KEY (`ARTICLE_NUMERO`) REFERENCES `article` (`ARTICLE_NUMERO`),
    CONSTRAINT `FK_APOURSUJ_LIEN_153_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apoursujet`
--

LOCK TABLES `apoursujet` WRITE;
/*!40000 ALTER TABLE `apoursujet`
    DISABLE KEYS */;
INSERT INTO `apoursujet`
VALUES (5, 6),
       (9, 9),
       (11, 11),
       (10, 12),
       (6, 18),
       (3, 19),
       (12, 19),
       (4, 21),
       (8, 25),
       (7, 26),
       (1, 34),
       (2, 40),
       (12, 40);
/*!40000 ALTER TABLE `apoursujet`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article`
(
    `ARTICLE_NUMERO`          int(11) NOT NULL AUTO_INCREMENT,
    `EXEMPLAIRE_NUMERO`       int(11)       DEFAULT NULL,
    `ARTICLE_TITRE`           varchar(100)  DEFAULT NULL,
    `ARTICLE_NUMEROPAGEDEBUT` int(11)       DEFAULT NULL,
    `ARTICLE_RESUME`          varchar(5500) DEFAULT NULL,
    `ARTICLE_DATE_INSERT`     date    NOT NULL,
    PRIMARY KEY (`ARTICLE_NUMERO`),
    KEY `CIF2_FK` (`EXEMPLAIRE_NUMERO`),
    CONSTRAINT `FK_ARTICLE_CIF2_EXEMPLAI` FOREIGN KEY (`EXEMPLAIRE_NUMERO`) REFERENCES `exemplaire` (`EXEMPLAIRE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 13
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article`
    DISABLE KEYS */;
INSERT INTO `article`
VALUES (1, 1, 'A la sauce Tarantino!', 12,
        'La jolie M??lanie Laurent, rendue c??l??bre par le film \" Je vais bien ne t\'en fais pas\" - pour lequel elle a remport?? le C??sar du meilleur espoir f??minin - entre d??finitivement dans la cour des grandes. Apr??s l\'??vocation de plusieurs noms, parmi lesquels celui de Louise Bourgoin, c\'est finalement la petite blonde qui a en effet ??t?? choisie par le g??nial Quentin Tarantino ( Reservoir Dogs, Pulp Fiction, Kill Bill), pour rejoindre l\'??quipe de son prochain long m??trage Inglorious Bastards. M??lanie Laurent h??ritera du r??le f??minin principal, et donnera ainsi la r??plique ??  Brad Pitt en personne, dans ce film dont l\'intrigue se situe en Europe pendant la seconde guerre mondiale.',
        '2010-01-13'),
       (2, 3, 'L\'homme fid??le', 1,
        'Fils de Philippe Garrel et de Brigitte Sy.\r\n\r\nCin??aste de l\'intime, Philippe Garrel filme volontiers les membres de son entourage. C\'est ainsi que le jeune Louis appara??t ?? l\'??cran ?? 6 ans dans Les Baisers de secours, aux c??t??s notamment de sa m??re Brigitte Sy et de son grand-p??re Maurice Garrel. Adolescent, cet admirateur de Jean-Pierre L??aud joue la com??die dans la cadre de son coll??ge et du conservatoire d\'arrondissement. El??ve au Conservatoire National d\'Art Dramatique, dont il sort dipl??m?? en 2004, Louis Garrel fait ses vrais d??buts au cin??ma en 2001, incarnant un gar??on brillant et tourment?? dans Ceci est mon corps de Rodolphe Marconi.\r\n\r\nJeune premier au regard farouche, il est bient??t le h??ros de deux ??vocations de Mai 68 : il forme avec Michael Pitt et Eva Green (autre \"fille de\") le trio de The Dreamers (2003), r??cit d\'une initiation sexuelle sign?? Bertolucci, puis campe, devant la cam??ra de son p??re, un insurg?? amoureux dans Les Amants r??guliers, une prestation qui lui vaut le C??sar du Meilleur espoir masculin en 2005. L\'ann??e suivante, le jeune homme joue l\'amant passionn?? de Valeria Bruni Tedeschi dans Actrices. C\'est sur ce tournage que les deux acteurs se rencontrent et partagent leur vie jusqu\'en 2012.\r\n\r\nNe craignant pas les personnages sulfureux, Louis Garrel interpr??te le fils - et compagnon de d??bauche - d\'Isabelle Huppert dans Ma m??re (2004), adaptation du livre de Bataille par Christophe Honor??. Il retrouve le cin??aste en 2006 pour une autre affaire de famille, Dans Paris avec Romain Duris, ??tude des rapports entre deux fr??res, tr??s remarqu??e au Festival de Cannes.\r\n\r\nLa complicit?? entre Louis et Christophe Honor?? ne tarit pas puisque, l\'ann??e suivante, ils se retrouvent pour Les Chansons d\'amour, com??die musicale o?? Garrel chante et incarne un amant tortur?? par la mort de sa compagne (jou??e par Ludivine Sagnier) et qui va chercher consolation dans des bras inattendus. Les deux hommes se retrouveront encore en 2007 pour tourner La Belle personne, o?? Louis Garrel est un professeur d\'italien ayant une liaison avec une de ses jeunes ??l??ves. La m??me ann??e, il retrouve ??galement son p??re Philippe Garrel, qui le dirige pour La Fronti??re de l\'aube.\r\n\r\nEn 2008, Louis Garrel passe pour la premi??re fois derri??re la cam??ra en sc??narisant et r??alisant Mes copains, un court m??trage intimiste de 26 minutes o?? il filme ses propres amis, se d??battant avec le temps qui passe, leurs ??checs, leurs espoirs et leur besoin de cr??er. Laur??at du Prix Patrick Dewaere en 2009, il appara??t dans le dernier film de son cin??aste f??tiche Christophe Honor?? (Non ma fille, tu n\'iras pas danser), avant de s\'afficher aux c??t??s de Julie Depardieu et de Pascal Greggory dans Le Mariage ?? trois de Jacques Doillon.\r\n\r\nGarrel est ensuite honor?? d\'une s??lection ?? la Quinzaine des R??alisateurs cannoise en 2010, avec son moyen m??trage Petit tailleur, qui met en sc??ne une romance m??lancolique entre L??a Seydoux et Arthur Igual. L\'ann??e suivante, il interpr??te Cl??ment dans la nouvelle com??die musicale de Christophe Honor??, Les Bien-aim??s, et joue le compagnon de Monica Bellucci dans Un ??t?? br??lant r??alis?? par Philippe Garrel.\r\n\r\nApr??s une courte apparition dans son propre r??le dans la com??die Les coquillettes de Sophie Letourneur, Louis Garrel s\'illustre l\'ann??e suivante dans deux films r??alis??s par des personnes dont il est proche. Tout d\'abord, sa compagne, Valeria Bruni-Tedeschi pour Un Ch??teau en Italie, pr??sent?? en s??lection officielle au Festival de Cannes suivi de La Jalousie dans lequel il forme un couple avec Anna Mouglalis devant la cam??ra de son p??re, Philippe Garrel.\r\n\r\nActeur embl??matique du cin??ma d\'auteur fran??ais, Louis Garrel est dirig?? l\'ann??e suivante par Bertrand Bonello dans Saint-Laurent, le biopic sulfureux consacr?? au c??l??bre couturier. Le com??dien interpr??te Jacques De Bascher, l\'amant d\'Yves Saint-Laurent dans les ann??es 1970. Son interpr??tation est salu??e par la critique et lui permet de d??crocher une nomination au C??sar du meilleur acteur dans un second r??le.\r\n\r\nEn 2015, le com??dien collabore de nouveau avec ses parents. Dans L\'Astragale r??alis?? par sa m??re, Louis Garrel campe un photographe et pr??te sa voix en incarnant le narrateur dans le nouveau film de son p??re L\'Ombre des femmes. Il est en outre pr??sent au Festival de Cannes pour deux occasions. D\'une part, il figure au casting du nouveau film de Ma??wenn, Mon Roi aux c??t??s d\'Emmanuelle Bercot et Vincent Cassel mais surtout, il vient d??fendre son premier long m??trage en tant que r??alisateur, Les Deux amis dans lequel il joue face ?? Vincent Macaigne et sa compagne Golshifteh Farahani.\r\n\r\nLouis donne ensuite la r??plique ?? Marion Cotillard dans Mal de pierres, sorti en octobre 2016. Il tourne l\'ann??e suivante sous la direction d\'Arnaud Desplechin dans Les Fant??mes d\'Isma??l avant de se glisser dans la peau de Robespierre dans la freque historique Un Peuple et son roi. Il s\'illustre ??galement dans le costume d\'une autre grande figure, celle de Jean-Luc Godard, dans la com??die Le Redoutable de Michel Hazanavicius. En 2018, il retourne derri??re la cam??ra avec L\'Homme fid??le, dirigeant Lily-Rose Depp et Laetitia Casta.',
        '2019-01-16'),
       (3, 4, 'l\'homme fid??le', 5,
        'N??e en Normandie et d??couverte ?? 15 ans sur une plage corse, Laetitia Casta d??bute une carri??re de mannequin qui la rend d\'embl??e tr??s populaire aupr??s du grand public. En 1998, elle fait ses premiers pas au cin??ma avec le r??le de Falbala, dont est amoureux Ob??lix/G??rard Depardieu, dans Ast??rix et Ob??lix contre C??sar.\r\n\r\nApr??s le succ??s de la s??rie t??l??vis??e La Bicyclette bleue, elle joue Les Ames fortes sous la direction de Raoul Ruiz, puis incarne Marion, une prostitu??e du Palais Oriental dans Rue des plaisirs de Patrice Leconte, en 2002. A l\'affiche du drame Gitano (2002), Laetitia Casta donne ??galement la r??plique ?? Beno??t Magimel dans le remarqu?? Errance (2003) de Damien Odoul.\r\n\r\nAbsente des ??crans pendant trois ans, Laetitia Casta s\'invite en 2006, aux c??t??s de Mathieu Amalric et Pierre Arditi, dans Le Grand appartement de Pascal Thomas. Apr??s s\'??tre illustr??e au g??n??rique de La Jeune fille et les loups, elle conna??t une ann??e 2009 faste : elle joue dans Visage de Tsai Ming-liang, puis incarne l\'ic??ne Brigitte Bardot dans Gainsbourg - (vie h??ro??que), biopic sur le c??l??bre chanteur. Ce r??le lui permet de d??crocher une nomination pour la Meilleure Actrice dans un Second R??le aux C??sars. Toujours aussi pr??sente sur les ??crans en 2011, l\'actrice pr??te sa voix au perroquet Perla dans le film d\'animation Rio, appara??t dans un clip de la chanteuse Rihanna, puis tient le r??le-titre de Derri??re les murs, le premier film fran??ais en 3D relief hors film d\'animation. Elle y joue une romanci??re dans les ann??es 1920 confront??e ?? d\'??tranges visions. ',
        '2019-01-02'),
       (4, 4, 'Tout sur Binoche', 5,
        '\r\nFille cadette de parents divorc??s, la jeune Juliette prend ses premiers cours de th????tre avec sa m??re, puis s\'installe ?? Paris o??, parall??lement ?? sa scolarit??, elle s\'adonne ?? ses deux passions : la peinture et le th????tre. Elle monte Le Roi se meurt dans son lyc??e, et s\'inscrit ?? 17 ans au Conservatoire du Xe arrondissement, avant de poursuivre sa formation aupr??s de V??ra Gregh.\r\n\r\n\r\nJuliette Binoche, qui a d??j?? jou?? Tchekhov ou Pirandello sur les planches, fait sa premi??re apparition au cin??ma en 1983 dans Liberty Belle, et obtient rapidement des petits r??les chez Godard (Je vous salue Marie) et Doillon (La Vie de famille). En 1985, Rendez-vous de T??chin??, dans lequel elle incarne une com??dienne en herbe, l\'impose comme l\'une des actrices les plus prometteuses de sa g??n??ration. R??compens??e par le Prix Romy-Schneider en 1986, elle donne deux ans plus tard la r??plique ?? Daniel Day-Lewis dans L\'Insoutenable l??g??ret?? de l\'??tre, sa premi??re exp??rience hors de nos fronti??res. Eg??rie de Leos Carax, qui l\'initie ?? la cin??philie, elle tourne Mauvais sang puis Les Amants du Pont-Neuf (1991), une ??uvre ambitieuse, qui la mobilisera durant trois ans.\r\n\r\n\r\nApr??s deux films en anglais (Fatale, Les Hauts de Hurlevent), Bleu de Kieslowski marque, en 1993, une nouvelle ??tape dans la carri??re de Binoche, qui voit sa prestation salu??e par un C??sar et un Prix d\'interpr??tation ?? Venise. Gr??ce ?? sa composition d\'infirmi??re d??vou??e dans Le Patient anglais de Minghella, elle d??croche en 1997 un Ours d\'argent ?? Berlin et devient, 37 ans apr??s Simone Signoret, la deuxi??me Fran??aise r??compens??e par un Oscar. En qu??te de personnages forts et d\'univers romanesques, elle multiplie les films d\'??poque, du Hussard sur le toit (1996) au Chocolat (2001) en passant par La Veuve de Saint-Pierre (2000).\r\n\r\n\r\nAussi cr??dible en George Sand (Les Enfants du si??cle, 1999) qu\'en esth??ticienne gouailleuse (D??calage horaire, 2002), Juliette Binoche ne d??laisse pas le cin??ma d\'auteur : apr??s des retrouvailles avec T??chin?? (Alice et Martin), elle ??claire les ??uvres d??rangeantes de Haneke (Code inconnu en 2000, puis Cach?? en 2005) et Ferrara (Mary en 2005). Curieuse et passionn??e, elle prend part ?? des films qui abordent des questions politiques : les crimes de l\'Apartheid (In my country), le sort des r??fugi??s (Par effraction) ou le conflit isra??lo-palestinien (D??sengagement).\r\n\r\n\r\nSa stature internationale lui permet d\'appara??tre dans des blockbusters (Godzilla, Ghost in the Shell) ou de travailler avec des ma??tres du cin??ma mondial tels que Hou Hsiao Hsien (Le Voyage du ballon rouge, 2008), Abbas Kiarostami (Shirin, Copie conforme pour lequel elle obtient le Prix d???interpr??tation f??minine ?? Cannes), David Cronenberg (Cosmopolis, 2012) et les Japonais Naomi Kawase (Voyage ?? Yoshino, 2018) et Hirokazu Kore-eda (La V??rit?? (???), 2019).\r\n\r\n\r\nToujours l?? o?? on ne l\'attend pas, elle s???offre en 2017 une parenth??se t??l??vis??e et joue avec son image le temps d???un ??pisode de Dix pour Cent aux c??t??s de Camille Cottin, qu???elle retrouve la m??me ann??e dans Telle M??re, telle fille. Malgr?? sa popularit?? hors de nos fronti??res, elle d??montre sa fid??lit?? ?? des cin??astes fran??ais tels que Claire Denis (la com??die Un beau soleil int??rieur et le controvers?? film de SF High Life), Bruno Dumont (l???aust??re biopic Camille Claudel, 1915 et l???extravagant Ma Loute) et Olivier Assayas (L???Heure d?????t??, Sils Maria, Doubles vies). ',
        '2019-01-31'),
       (5, 3, 'Tout sur Bonnaire', 2,
        'Septi??me d\'une famille de onze enfants, Sandrine Bonnaire d??bute en 1982 comme figurante dans La Boum et Les Sous-dou??s en vacances. Alors qu\'elle accompagne sa soeur ?? un casting, elle est choisie par Maurice Pialat pour un projet qui n\'aboutira pas, Les Meurtri??res. Mais le cin??aste en fait l\'h??ro??ne du film auquel il songe depuis dix ans, A nos amours, portrait d\'une ado ??prise de libert??. Par l\'intensit?? qui se d??gage de son jeu spontan??, Sandrine Bonnaire fait, ?? 16 ans, une irruption spectaculaire dans le cin??ma fran??ais, salu??e par un C??sar du Meilleur jeune espoir en 1984.\r\n\r\n\r\nLa com??dienne entretiendra avec Pialat des rapports passionnels, refusant le r??le principal de Police, dans lequel elle appara??t n??anmoins, puis incarnant en 1987 Mouchette dans Sous le soleil de Satan, le film dont elle se dit le plus fi??re. La jeune actrice trouve d\'autres r??les tr??s forts aupr??s de cin??astes exigeants : clocharde dans Sans toit ni loi de Varda -composition qui lui vaut un C??sar de la Meilleure actrice en 1986-, Captive du desert en 1989 pour Depardon, Jeanne d\'Arc en 1992 chez Rivette (qu\'elle retrouvera plus tard dans Secret d??fense), elle tourne ??galement avec Sautet (Quelques jours avec moi), Doillon, Techin?? et Leconte.\r\n\r\n\r\nLe Prix d\'interpr??tation qu\'elle re??oit ?? Venise en 1995 pour sa stup??fiante composition de domestique analphab??te dans La C??r??monie de Chabrol (avec qui elle tournera aussi Au coeur du mensonge) est un nouveau t??moignage de reconnaissance de la profession, mais Sandrine Bonnaire est toujours per??ue par le grand public comme une ??g??rie du cin??ma d\'auteur. Elle s\'oriente donc ?? la fin des ann??es 90 vers un cin??ma plus accessible, avec la fresque Est-Ouest (1999), le m??lo C\'est la vie et Mademoiselle, la p??tillante com??die de Philippe Lioret (qu\'elle retrouvera sur L\'Equipier) qui permet aux spectateurs de d??couvrir son lumineux sourire. A la m??me p??riode, son personnage de chirurgien dans la s??rie ?? succ??s Une femme en blanc conforte sa popularit??.\r\n\r\n\r\nStar en tandem avec Luchini (Confidences trop intimes, 2004), Lindon (Je crois que je l\'aime, 2006) ou Catherine Frot (L\'Empreinte de l\'ange, 2008), elle continue pourtant de tourner dans des oeuvres moins ??videntes (Un coeur simple d\'apr??s Flaubert). En 2007, la com??dienne cr??e la surprise en passant derri??re la cam??ra avec Elle s\'appelle Sabine, un documentaire consacr?? ?? sa soeur autiste, chaleureusement accueilli lors de sa pr??sentation ?? Cannes dans le cadre de la Quinzaine des R??alisateurs. Loin d\'avoir abandonn?? sa carri??re d\'actrice, elle incarne en 2009 une joueuse d\'??checs passionn??e, dans Joueuse de Caroline Bottaro aux c??t??s de l\'acteur am??ricain Kevin Kline.\r\n\r\n\r\nSe faisant plus rare sur les ??crans, Sandrine Bonnaire est s??duite par Johnny Hallyday dans la com??die dramatique Salaud, on t\'aime de Claude Lelouch qui sort en salles en 2014. L\'ann??e suivante, on peut la voir au haut de l\'affiche La Derni??re le??on, qui traite de la difficile question de l\'euthanasie.',
        '2019-01-30'),
       (6, 3, 'Jack Sparrow', 1,
        '\r\nFils d\'un ing??nieur et d\'une femme de m??nage, Johnny Depp se passionne pour la musique en assistant ?? un spectacle de gospel. Il rejoint alors le groupe The Flame, qui devient The Kids, et fait la premi??re partie de la tourn??e d\'Iggy Pop. Deux ans plus tard, les musiciens se rendent ?? Los Angeles, mais la formation ne remporte pas le succ??s escompt??. C\'est ?? cette p??riode que Depp fait la connaissance de Nicolas Cage, qui lui fait rencontrer son agent. Il obtient ainsi un petit r??le dans Les Griffes de la nuit (1984) de Wes Craven.\r\n\r\nJohnny Depp s\'inscrit ensuite au Loft Studio de Los Angeles pour suivre des cours de com??die. Une fois sorti de l\'??cole, il est enr??l?? chez les marines de Platoon, puis conna??t la c??l??brit?? avec le lancement, en 1987, de la s??rie 21 jump street. Sa carri??re lanc??e, il choisit de rompre avec l\'image v??hicul??e par la t??l??vision, celle d\'un jeune acteur pour midinettes, en jouant sous la direction de John Waters dans le satirique Cry-baby (1990). A partir de ce film, l\'acteur ne cessera d\'??tre en marge, incarnant r??guli??rement des personnages d??cal??s et hors-normes. Toujours en 1990, en interpr??tant Edward aux mains d\'argent, il entame avec le r??alisateur Tim Burton une fructueuse collaboration qui se poursuivra avec Ed Wood (1994), Sleepy hollow, la l??gende du cavalier sans t??te (1999), Charlie et la chocolaterie (2004), Les Noces fun??bres (2005), film d\'animation pour lequel il pr??te sa voix, et la com??die musicale Sweeney Todd (2008).\r\n\r\nPrenant quelque peu ses distances vis-??-vis de l\'industrie hollywoodienne, Johnny Depp collabore avec des cin??astes aussi talentueux que Emir Kusturica (Arizona dream, 1992), Lasse Hallstr??m (Gilbert Grape, 1993 ; Le Chocolat, 2001) ou encore Jim Jarmusch (Dead man, 1995). Fort de cette exp??rience, il passe ?? la r??alisation en 1997 avec The Brave, qui ne remportera pas le succ??s escompt??, et ce malgr?? la pr??sence au g??n??rique de son ami Marlon Brando. De retour devant la cam??ra, il s\'??loigne des personnages romantiques et po??tiques pour jouer les flics infiltr??s dans la mafia dans Donnie Brasco (1997), les journalistes d??jant??s dans Las Vegas parano (1998), les chercheurs de livres rares en proie au fantastique dans La Neuvi??me porte (1999) ou les trafiquants de drogue dans Blow (2001).\r\n\r\nMalgr?? l\'??chec du thriller Intrusion (1999) et l\'abandon du tournage chaotique de L\'Homme qui tua Don Quichotte, film inachev?? de Terry Gilliam qui donnera naissance au documentaire Lost in la Mancha (2003), le charismatique Johnny Depp garde la confiance des studios. Pr??dispos?? ?? interpr??ter des films ?? costumes comme From Hell (2002), Neverland (2004) et Rochester, le dernier des libertins (2006), il renoue avec le succ??s gr??ce ?? l\'ultra rentable quadrilogie Pirates des Cara??bes (2003-2011), faisant de l\'incontournable pirate Jack Sparrow l\'un des personnages les plus marquants du cin??ma grand public. Malgr?? ce succ??s colossal, l\'acteur n\'oublie pas ses amis et joue ainsi les chapeliers fous pour Tim Burton dans Alice au Pays des Merveilles ainsi que l\'une des incarnations de Tony dans L\'Imaginarium du Docteur Parnassus de Terry Gilliam.\r\n\r\nActeur cam??l??on, il aime changer de registre et appara??t dans le polar Public Enemies de Michael Mann (dans lequel il incarne le c??l??bre gangster John Dillinger). En 2010, il est manipul?? par Angelina Jolie dans le thriller The Tourist, puis pr??te sa voix, l\'ann??e suivante, au cam??l??on Rango dans le film de Gore Verbinski, avant de retrouver, toujours en 2011 et treize ans apr??s Las Vegas parano, l\'univers de l\'??crivain Hunter S. Thompson pour le d??jant?? Rhum Express. Avec le vampire Barnabas de Dark Shadows (2012), Johnny Depp ajoute encore un personnage loufoque et d??cal?? ?? sa filmographie. Dans ce long m??trage, tandis que son personnage d??couvre le monde des vivants, l\'acteur retrouve son ami Tim Burton pour leur huiti??me collaboration.\r\n\r\nEn 2013, l\'ann??e de ses 50 ans, le com??dien retrouve une fois de plus Gore Verbinski pour les besoins de l\'atypique western Lone Ranger, une grosse production dont le budget avoisine les 250 millions de dollars mais qui se solde par un gros ??chec financier. Ses films suivants, Transcendance, Charlie Mortdecai et Strictly Criminal peinent eux aussi ?? trouver leur public. Depp retrouve ensuite deux personnages qui ont fait des merveilles au box office : Le Chapelier Fou (Alice de l\'autre c??t?? du miroir, 2016) et Jack Sparrow (Pirates des Cara??bes 5, 2017).\r\n',
        '2019-01-31'),
       (7, 4, 'Jolie', 7,
        'Angelina Jolie Voight na??t le 4 juin 1975 ?? Los Angeles. Elle est ??lev??e par sa m??re, Marcheline Bertrand, qui se s??pare de son p??re, l???acteur Jon Voight, en 1976. A l?????ge de 11 ans, lorsque sa famille d??m??nage ?? Los Angeles, la jeune Angelina d??cide de devenir actrice et prend ses premiers cours de com??die. Mais l???adolescence de la jeune fille est difficile. Elle s???auto-mutile et, raill??e par ses camarades de classe pour son look, elle finit par abandonner ses cours de th????tre. Elle d??cide alors de se lancer alors dans le mannequinat et appara??t ??galement dans de nombreux clips. A 16 ans, elle se ravise et reprend ses cours de com??die, puis d??bute ?? l?????cran aux c??t??s de son p??re, avec qui elle entretient une relation compliqu??e.\r\n\r\nApr??s plusieurs apparitions dans des films de son fr??re, le r??alisateur James Haven, c???est avec un film ?? petit budget, Glass Shadow, en 1993, que la carri??re de l???actrice d??marre r??ellement. En 1995, elle obtient son premier r??le principaldans le film Hackers. Puis avec George Wallace en 1997 et Femme de r??ve en 1998, deux films biographiques acclam??s par la critique, la carri??re d???Angelina Jolie prend un nouvel ??lan. L\'actrice, connue pour ses nombreux tatouages qui contraignent les cin??astes ?? faire preuve de cr??ativit?? lors des sc??nes d???amour, atteint le sommet de sa c??l??brit?? avec 60 secondes chrono (2000) et son interpr??tation de l\'h??ro??ne de jeu vid??oLara Croft dans Lara Croft: Tomb Raider(2001). Propuls??e au rang de star internationale, la sulfureuse Angie s\'impose depuis comme l\'une des actrices les plus c??l??bres et les mieux pay??es d\'Hollywood. En 2000, elle remporte un Golden Globe et un Oscar de la meilleureactricedans un second r??le avec Une Vie Vol??e de James Mangold.\r\n\r\nL???actrice entreprend alors un changement d\'image radical. Le tournage de Tomb Raider, au Cambodge, la sensibilise aux causes humanitaires. En 2001, elle devient ambassadrice du HCR (Haut Commissariat de l\'ONU pour les R??fugi??s) et m??ne plus de 40 missions sur le terrain. Elle se distingue en se rendant ?? plusieurs reprises dans des zones de conflits, notamment en Irak, dans la province du Darfour au Soudan et en Libye pendant les r??volutions arabes de 2011. Sa fid??lit?? ?? la cause des r??fugi??s pendant plus de dix ans lui vaudra d?????tre nomm??e, enavril 2012, Envoy??e Sp??ciale du HCR. Un poste exceptionnel qui lui permet notamment de repr??senter le HCR au niveau diplomatique.\r\n\r\nAngelina Jolie conna??t ses plus grands succ??s commerciaux avec la com??die Mr. et Mrs. Smith (2005) et le film d\'animation Kung Fu Panda (2008). En 2008, elle d??croche unGolden Globe de meilleureactrice dans un r??le dramatique pour Un C??ur invaincu de Michael Winterbottom. Elle incarne ensuite Christine Collins, le premier r??le du film de Clint Eastwood, L???Echange, dont la premi??re est donn??e au Festival de Cannes. En 2010, l???actrice passe de l???autre c??t?? de la cam??ra et r??alise le film Au pays du sang et du miel, fresque lucide sur les abus sexuels comme arme de guerre et sur la purification raciale. En 2015, elle r??cidive l\'exp??rience et dirige Brad Pitt dans le long-m??trage Vue sur mer.\r\n\r\nC??t?? vie priv??e, Angelina Jolie se marie avec l\'acteur Jonny Lee Miller le 28 mars 1996. Mais leur histoire tourne court et leur divorce est prononc?? en f??vrier 1999. Angelina Jolie rencontre l\'acteur Billy Bob Thornton sur le tournage du film Les Aiguilleurs (1999), et l\'??pouse en secondes noces le 5 mai 2000. Le couple divorce trois ans plus tard. En 2004, sur le tournage de Mr & Mrs Smith, Angelina Jolie rencontre Brad Pitt. L\'acteur a un coup de foudre imm??diat. Pour elle, il divorce de l\'actrice Jennifer Aniston en octobre 2005, et adopte Maddox (n?? en ao??t 2001) et Zahara (n??e en janvier 2005), enfants que la com??dienne avait elle-m??me adopt??s. Le monde entier les surnomme les Brangelina. Le couple agrandit la tribu avec naissance de leur fille, Shiloh Nouvel, le 27 mai 2006, en Namibie et l\'adoption d\'un gar??on originaire du Vietnam, Pax Thien (n?? en novembre 2003), en mars 2007. Le 12 juillet 2008, l\'actrice accouche des jumeaux Knox et Vivienne, ?? Nice. Deux ans apr??s leurs fian??ailles, Brad Pitt et Angelina Jolie se marient dans leur propri??t?? du domaine de Miraval dans le sud de la France, le 23 ao??t 2014. En septembre 2016, Angelina Jolie demande le divorce. ',
        '2019-01-29'),
       (8, 2, 'Aucun', 6,
        'Balad??e entre la Gr??ce (le nom de son p??re est Anastassakis) et les Etats-Unis jusqu\'?? ce que ses parents divorcent, la petite Jennifer Aniston s\'??tablit ?? New York avec sa m??re ?? l\'??ge de neuf ans. Deux ans plus tard, elle s\'inscrit ?? la Rudolf Steiner School et entreprend d??s lors de devenir actrice. Etudiante s??rieuse de la New York\'s High School of the Performing Arts (rendue c??l??bre par la s??rie Fame) dont elle ressort dipl??m??e en 1987, l\'apprentie com??dienne trouve de petits r??les dans des productions off-Broadway telles que For Dear Life ou Dancing on Checker\'s Grave. La jeune femme encha??ne alors les prestations t??l??visuelles de moindre importance et entre au cin??ma par la petite porte avec un r??le dans la s??rie Z horrifique Leprechaun en 1993.\r\n\r\n\r\nMais la chance tourne rapidement pour l\'actrice, enr??l??e en 1994 pour incarner dans Friends le personnage de la gentiment capricieuse Rachel Green, qui lui rapportera l\'Emmy de la Meilleure com??dienne dans une s??rie comique en 2002 et le Golden Globe dans la m??me cat??gorie l\'ann??e suivante. La notori??t?? est imm??diate. Tout comme ses coll??gues qui font leur passage sur grand ??cran avec plus ou moins de r??ussite (Courteney Cox dans Scream, Lisa Kudrow dans Mafia blues), Jennifer Aniston retente l\'aventure cin??matographique avec la romance L\'Objet de mon affection (1998), qui rencontre un succ??s timide.\r\n\r\n\r\nProfitant des pauses estivales entre les tournages des saisons de Friends, l\'actrice trouve ainsi le temps de donner la r??plique ?? Mark Wahlberg dans Rock Star en 2001, avant que la critique n\'encense son r??le de femme mari??e d??senchant??e dans le film ind??pendant The Good girl (2002). Privil??giant les com??dies, genre o?? elle excelle, Jennifer Aniston se retrouve ?? l\'affiche en 2003 de Bruce tout-puissant face ?? Jim Carrey, puis en 2004 en petite amie fantasque de Ben Stiller dans Polly et moi avant d\'incarner la fille du Laur??at dans La Rumeur court.... Depuis l\'arr??t de la s??rie Friends en mai 2004, la jeune femme se consacre enti??rement au cin??ma et a m??me fond?? sa propre soci??t?? de production, Plan B. En 2005, elle aborde un r??le plus sombre avec le thriller D??rapage dans lequel elle c??toie Vincent Cassel et Clive Owen.\r\n\r\n\r\nPar la suite, l???actrice revient tr??s vite vers la com??die, genre qui lui est familier, en d??crochant les premiers r??les dans des films qui, comme La Rupture avec Vince Vaughn (2006), Marley & moi avec Owen Wilson (2009) ou Ce que pensent les hommes avec Ben Affleck (id.), rencontrent un tr??s grand succ??s au box-office. En 2010, aux c??t??s de Gerard Butler, elle partage l\'affiche du Chasseur de primes, m??lange entre com??die romantique et film policier r??alis?? par Andy Tennant. L\'ann??e suivante, Jennifer Aniston est ?? l\'affiche de deux films, Le Mytho - Just Go With It o?? elle joue la fausse femme d\'Adam Sandler et Comment tuer son Boss ? dans lequel elle campe l\'un des boss du titre, une dentiste nymphomane qui rend la vie impossible ?? Dale (Charlie Day), son assistant. Lucratif, le film b??n??ficie d\'une suite en 2014.\r\n\r\n\r\nToujours au rayon com??die, elle tient le premier r??le f??minin de Peace, Love et plus si affinit??s et retrouve, pour l\'occasion, Paul Rudd, son partenaire de L\'Objet de mon affection et Friends. Apr??s un r??le remarqu?? dans la com??die d??jant??e Les Miller, une famille en herbe, Jennifer Aniston rel??ve le d??fi en 2015 de jouer une femme d??pressive et suicidaire qui tente de reprendre go??t ?? la vie dans Cake. La m??me ann??e, l\'actrice est dirig??e par l\'ancienne gloire du Nouvel Hollywood Peter Bogdanovich dans Broadway Therapy, com??die dramatique o?? elle retrouve Owen Wilson. ',
        '2019-01-31'),
       (9, 1, 'Guillaume', 3,
        '\r\n\r\nPassionn?? d\'??quitation, Guillaume Canet, n?? le 10 avril 1973 ?? Boulogne-Billancourt, voit une prometteuse carri??re de jockey interrompue par un accident. Se tournant vers l\'art dramatique, il suit une formation au Cours Florent et se fait remarquer au th????tre dans la pi??ce La Ville dont le Prince est un enfant d\'Henry de Montherlant, qu\'il interpr??te aux c??t??s de Christophe Malavoy.\r\n\r\nApr??s une premi??re apparition au cin??ma dans le court-m??trage Le Fils unique, en 1995, Guillaume Canet se retrouve face ?? Jean Rochefort pour les besoins du thriller Barracuda (1997). Mais ce sont ses prestations dans En plein coeur (1998) de Pierre Jolivet et Je r??gle mon pas sur le pas de mon p??re (id.) de R??mi Waterhouse qui lui assurent une belle notori??t?? naissante. Il retrouvera ces cin??astes qui lui ont donn?? sa chance en 2002 avec le moyen??geux Fr??re du guerrier et la com??die Mille milli??mes, fantaisie immobili??re.\r\n\r\nEn 2000, Guillaume Canet devient un acteur de tout premier plan, donnant la r??plique ?? Leonardo DiCaprio sur La Plage, testant La Fid??lit?? de Sophie Marceau, go??tant aux Morsures de l\'aube d\'Antoine de Caunes et composant le biographe autoproclam?? de Vidocq. Apr??s avoir r??alis?? quelques spots publicitaires et courts-m??trages (Sans regrets, Je taim), il se met en sc??ne en 2002 dans un premier long-m??trage, Mon idole, fable amorale sur le milieu du show business. Apr??s ce galop d\'essai r??ussi, Guillaume Canet aborde des genres diff??rents : il flirte avec Marion Cotillard dans Jeux d\'enfants, r??ve d\'aventures dans le d??jant?? Narco et combat dans les tranch??es de l\'??mouvant Joyeux No??l.\r\n\r\nApr??s le drame L\'Enfer et la com??die Un ticket pour l\'espace, le com??dien pr??te sa voix au film d\'animation Pixar, Cars. Puis il franchit un nouveau palier en 2006 en r??alisant Ne le dis ?? personne, adaptation du roman d\'Harlan Coben o?? il dirige un casting de luxe r??unissant Fran??ois Cluzet, Kristin Scott Thomas ou encore Jean Rochefort. Le long-m??trage remporte quatre C??sar, dont celui du Meilleur acteur pour Fran??ois Cluzet et du Meilleur r??alisateur pour Canet, qui devient le cin??aste le plus jeune de l\'histoire des C??sar ?? ??tre r??compens?? dans cette cat??gorie.\r\n\r\nD??sormais figure majeure du cin??ma hexagonal, Guillaume Canet c??toie en 2007 Audrey Tautou dans la com??die romantique Ensemble, c\'est tout, adaptation litt??raire du best-seller d\'Anna Gavalda. La m??me ann??e, il est tr??s antipathique dans Darling puis tient la vedette de La Clef, thriller de Guillaume Nicloux o?? il partage notamment l\'affiche avec Marie Gillain, Jean Rochefort et Vanessa Paradis.\r\n\r\nApr??s avoir dirig?? Fran??ois Cluzet dans Ne le dis ?? personne, c\'est d??sormais de l\'autre c??t?? de la cam??ra que les deux acteurs se retrouvent dans Les Liens du sang de Jacques Maillot. Ils y interpr??tent deux fr??res bien diff??rents (l\'un est policier, l\'autre criminel) ayant des difficult??s ?? tirer un trait sur leur pass??. C\'est sur un ton plus l??ger que Guillaume Canet choisit de finir l\'ann??e 2008 en pr??tant sa voix au narrateur de La Famille Suricate.\r\n\r\n2009 plonge l\'acteur malgr?? lui dans le monde dangereux des services secrets. Il enfile le costume d\'un bagagiste qui va devoir s\'improviser agent secret dans Espion(s) de Nicolas Saada. Puis, en pleine guerre froide, Emir Kusturica l\'implique de nouveau devant la cam??ra de Christian Carion, cinq ans apr??s Joyeux No??l. Apr??s avoir partag?? l\'affiche avec Marion Cotillard dans Le Dernier vol (2009), il la dirige sur son troisi??me long m??trage Les Petits mouchoirs (2010), un film de \"potes\" tr??s personnel pour lequel il retrouve aussi, entre autres, les acteurs Fran??ois Cluzet et Gilles Lellouche. Dix ans apr??s La Plage, l\'acteur tourne ?? nouveau de l???autre c??t?? de l???Atlantique dans le drame amoureux Last Night, entour?? d???un casting international : Keira Knightley, Eva Mendes et Sam Worthington.\r\n\r\nDe retour en France, il tourne dans le nouveau film d\'??poque de Christophe Barratier, La Nouvelle guerre des boutons, avec Laetitia Casta et une panoplie d\'\"enfants guerriers\", avant de se retrouver sous la direction de C??dric Kahn pour le dramatique Une vie meilleure, aux c??t??s de Le??la Bekhti, avec qui il forme un jeune couple plein d\'illusions qui se voit brutalement malmen?? par de gros probl??mes d\'endettement. La m??me ann??e, il pr??te sa voix ?? la version fran??aise de Lightning McQueen pour Cars 2.\r\n\r\nGuillaume Canet sc??narise et tourne ensuite dans Jappeloup de Christian Duguay, un biopic sur un cheval, champion de saut d???obstacle, et son jockey. Un an plus tard, il retourne aux ??tats-Unis mais cette fois pour r??aliser, produire et cosc??nariser avec James Gray son premier film am??ricain, Blood Ties, un remake des Liens du sang, port?? par Clive Owen et Billy Crudup. L\'exp??rience internationale se poursuit avec The Program de Stephen Frears, aux c??t??s de Ben Foster et Chris O\'Dowd et The Siege of Jadotville, avec Jamie Dornan et Mark Strong, qui ne conna??t qu\'une sortie en VOD.\r\n\r\nL\'acteur n\'en oublie pas pour autant le cin??ma hexagonal, au sein duquel il fait toujours preuve d\'??clectisme : inqui??tant et gla??ant dans La prochaine fois je viserai le coeur et L\'homme qu\'on aimait trop, po??tique dans Le secret des banquises, historique dans C??zanne et moi avec Guillaume Gallienne... Il op??re finalement un retour aux sources d??jant?? avec Rock\'n\'Roll, dans lequel il se met en sc??ne avec Marion Cotillard dans une version inattendue et pleine d\'auto-d??rision de leur couple.\r\n',
        '2019-01-31'),
       (10, 2, 'Le joueur de poker', 1,
        '\r\n\r\nPatrick Bruel, n?? Maurice Benguigui le 14 mai 1959 ?? Tlemcen en Alg??rie.\r\n\r\nEn 1962, Patrick et sa m??re, Augusta, tout juste divorc??e, quittent l\'Alg??rie pour la France. Install?? ?? Argenteuil, ou sa m??re est professeur de fran??ais, Patrick Bruel passe une adolescence paisible, entre copains du lyc??e Fran??ois Villon, matchs de football et musique.\r\n\r\nApr??s des vacances comme GO au club Med, les premiers pas professionnel de Patrick Bruel se font au cin??ma.\r\nEn 1978, Alexandre Arcady recherche pour son film \"Le coup de Sirocco\", un gar??on de 18 ans avec l\'accent pied noir, et Bruel d??croche le r??le. L\'ann??e suivante il part pour New York, un voyage de deux semaines qui se prolonge neuf mois, le temps, entre autre de rencontrer G??rard Presgurvic.\r\n\r\nEn 1982, la sortie d\'un premier disque, Vide, est plus que confidentielle, mais au cin??ma, Arcady propose ?? Patrick Bruel un r??le dans le film \"Le grand carnaval\".\r\n\r\nParall??lement ?? sa naissante carri??re d\'acteur Patrick Bruel continue de travailler ses chansons, et en 1984, il fait sa premi??re t??l??vision en tant que chanteur dans l\'??mission de Pascal Sevran, \"La chance aux chansons\".\r\n\r\nLe 45 tours Marre de cette nana-l?? sort, puis l\'ann??e suivante Non, j\'veux pas.\r\nLoin d\'??tre un ??norme succ??s ces chansons contribuent cependant ?? imposer le nom de Bruel dans la chanson.\r\n\r\nPendant les ann??es qui suivent, except?? le 45 tours Non, j\'veux pas, c\'est vers le cin??ma que Bruel se tourne : \"La t??te dans le sac\" de G??rard Lauzier, \"Profs\" de Schulman, \"Attention Bandits\" de Claude Lelouch.\r\n\r\nEn 1986, De Face le premier album de Patrick Bruel est dans les bacs suivit d\'un rendez vous sur la sc??ne de l\'Olympia en 1987.\r\nLe cin??ma fait de nouveau appel ?? lui, et Patrick Bruel tourne \"La maison assassin??e\" de Georges Lautner, \"L\'union Sacr??e\" d\'Alexandre Arcady, et \"Force Majeure\" de Pierre Jolivet.\r\n\r\nEn octobre 1989, Alors Regarde, nouvel album produit par Mick Lanaro marque le d??but de la gloire pour Bruel.\r\nLe premier extrait Casser La Voix atteint le sommet du top 50, et l\'album est vendu ?? pr??s de deux millions d\'exemplaires.\r\nLes tubes s\'encha??nent, J\'te l\'dis Quand M??me, Alors Regarde, puis Place Des Grands Hommes.\r\nPatrick Bruel bat le record de couvertures de magazines de l\'ann??e.\r\n\r\nEntre le 05 octobre 1990 et le 17 ao??t 1991, il part en tourn??e, effectuant 130 concerts pour plus de 700 000 personnes.\r\n\r\nApr??s ces ann??es de folie, la carri??re de Bruel se calme, il tourne \"Toutes Peines Confondues\", de Michel Deville, et \"Profil Bas\" de Claude Zidi en 1993, puis sort en avril 1994 un nouvel album : Bruel.\r\n\r\nFace ?? l\'album Alors Regarde, ce dernier disque fait pale figure m??me si les ventes ont d??pass??es le millions d\'exemplaires. Bouge, Combien de Murs et J\'suis Quand M??me L?? sont extrait de l\'album et connaissent un relatif succ??s.\r\n\r\nApr??s la tourn??e de l\'album, Bruel, le chanteur, endosse ?? nouveau le costume d\'acteur et tourne \"Sabrina\" de Sydney Pollack, \"Le Jaguar\" de Francis Weber, \"K\" de Alexandre Arcady, \"Les M??saventures de Margaret\" de Brian Skeet, \"Hors Jeu\" de Karim Dridi et \"Lost and Found\" de Jeff Pollack.\r\n\r\nEn septembre 1999, il sort un nouveau single J\'te Mentirais et en octobre, un nouvel album Juste Avant, album fruit de la collaboration de Patrick Bruel avec ses deux fr??res.\r\n\r\n2002, Bruel concr??tise une envie qu\'il avait d??j?? amen?? sur sc??ne au travers d\'un Medley r??tro sur la tourn??e 2000, faire un disque de chanson des ann??es 30.\r\nEn juin l\'album (Entre Deux) est dans les bacs. Il se vendra ?? deux millions d\'exemplaires.\r\n\r\nEn 2003, naissance de Oscar, fils qu\'il a avec Amanda Maruani qu\'il ??pousera l\'ann??e suivante. Le couple aura un second gar??on, L??on, en 2006 avant de se s??parer en 2007. C??t?? ??tat civil justement, depuis 2003, apr??s un d??cret parut au journal officiel, Maurice Benguigui est autoris?? ?? s\'appeler officiellement Patrick Bruel.\r\n\r\nEn 2006 sort l\'album Des souvenirs devant. Suit une tourn??e immortalis??e sur le CD Live, des souvenirs... ensemble en 2007.\r\n',
        '2019-01-31'),
       (11, 2, 'G??G??', 7,
        ' Issu d\'un milieu modeste (son p??re est t??lier-formeur), G??rard Depardieu grandit au milieu de cinq fr??res et soeurs. Apr??s une adolescence difficile, qui le voit flirter avec la d??linquance, il se d??couvre une passion pour le th??atre lors d\'un voyage ?? Paris. El??ve de Jean-Laurent Cochet, il fait ses premiers pas au cin??ma en 1970 dans Le Cri du cormoran le soir au-dessus des jonques de Michel Audiard.\r\n\r\nG??rard Depardieu est r??v??l?? en 1974 par son r??le de gentil voyou en cavale dans Les Valseuses, fable libertaire de Blier avec Patrick Dewaere et Miou-Miou. L\'ann??e suivante, le succ??s du thriller m??dical Sept morts sur ordonnance permet au com??dien, jusqu\'alors abonn?? aux r??les de loubards, de montrer l\'??tendue de son r??pertoire. Tournant avec de grands r??alisateurs italiens (1900 de Bertolucci en 1976, La Derni??re Femme du provocateur Ferreri), Depardieu passe avec aisance de l\'univers de Marguerite Duras (Le Camion en 1977) ?? celui de Zidi (Inspecteur la Bavure en 1980). En 1984, il s\'essaye ?? la r??alisation en adaptant Le Tartuffe de Moli??re, en faisant du personnage principal (qu\'il interpr??te), un personnage aust??re, tr??s diff??rent de l\'original.\r\n\r\nTout en poursuivant sa collaboration avec Blier, du grin??ant Tenue de soir??e ?? l\'??mouvant Trop belle pour toi en 1989, G??rard Depardieu devient le compagnon de route de plusieurs grands noms du cin??ma d\'auteur fran??ais : alter ego de Pialat, qui le fait tourner quatre fois, il obtient le Prix d\'interpr??tation ?? Venise pour Police en 1985, et campe un abb?? rong?? par le doute dans Sous le soleil de Satan. Cobaye de l\'exp??rimentateur Resnais dans Mon oncle d\'Am??rique, il trouve ?? la m??me ??poque des r??les d\'amant passionn?? chez Truffaut, dans Le Dernier M??tro -un succ??s commercial qui lui vaut un C??sar en 1981- puis La Femme d\'?? c??t??. Il s\'illustre parall??lement dans la com??die en formant un tandem gagnant avec Pierre Richard dans les buddy movie ?? la fran??aise de Francis Veber (La Ch??vre en 1981, Les Comp??res en 1983, et Les Fugitifs en 1986).\r\n\r\nApr??s le succ??s du Retour de Martin Guerre en 1982, G??rard Depardieu incarnera plusieurs personnages historiques ou issus de classiques de la litt??rature fran??aise tels que Jean de Florette pour Berri ou Rodin dans Camille Claudel. Il accomplit l\'une de ses compositions les plus m??morables dans Cyrano de Bergerac (1990) de Rappeneau, r??le pour lequel il d??croche un C??sar, un prix ?? Cannes et une nomination ?? l\'Oscar. S\'autorisant quelques escapades am??ricaines (Christophe Colomb de Ridley Scott) et s\'offrant le luxe de tourner avec Godard (H??las pour moi), il est ??galement producteur ?? l\'occasion (D??croche les ??toiles) et participe ?? la r??alisation en 1999 avec Un pont entre deux rives.\r\n\r\nDans les ann??es 2000, l\'insatiable G??rard Depardieu reste plus que jamais une figure centrale du 7??me art, ?? qui aucun territoire ne semble ??tranger : la com??die grand public (Le Placard et Tais-toi ! de Veber, la s??rie des Ast??rix), le polar (36 Quai des Orf??vres en 2004, L\'Instinct de mort en 2008), le drame intimiste (Aime ton p??re avec son fils Guillaume), la fresque ?? gros budget (Bon voyage, La M??me) ou m??me le cin??ma d\'animation (il pr??te sa voix au coq de Chicken Run).\r\n\r\nEn d??pit de la long??vit?? de sa carri??re, il parvient encore ?? surprendre critique et spectateurs, comme lorsqu\'il joue un amoureux transi dans Les Temps qui changent de T??chin??, un humble artiste de baloche dans Quand J\'??tais chanteur (2006) ou un commissaire vuln??rable (Bellamy, 2009). Apr??s avoir incarn?? diff??rents seconds r??les dans des genres cin??matographiques vari??s (truand de seconde zone aux c??t??s de Fran??ois Cluzet dans A l\'origine, mafieux dans le Blockbuster de science fiction Babylon A. D., etc.), G??rard Depardieu revient au film historique, en interpr??tant Alexandre Dumas dans en 2010, o?? il donne la r??plique ?? Beno??t Poelvoorde.\r\n\r\nLa m??me ann??e, les deux acteurs se retrouvent ?? nouveau dans Mammuth, un road movie mis en sc??ne par Beno??t Del??pine et Gustave Kervern, dans lequel G??rard Depardieu joue un retrait?? entamant un p??riple avec sa moto pour r??cup??rer l\'int??gralit?? de ses points retraite. Ann??e faste et vari??e pour l\'acteur, qui tourne pour la deuxi??me fois sous la direction de Jean Becker (apr??s Elisa en 1995) dans La T??te en friche, drame dans lequel il interpr??te un campagnard un peu simplet qui va se lier d\'amiti?? avec une vieille dame (Gis??le Casadesus). Il joue ensuite pour Fran??ois Ozon dans le film Potiche, puis enfile deux ans plus tard pour la quatri??me fois le costume du personnage d???Ob??lix avec Ast??rix et Ob??lix : au service de Sa Majest??. Toujours en 2012, il devient Ursus, un forain haut en couleurs recueillant Marc-Andr?? Grondin et Christa Theret pour les besoins de L\'Homme qui rit.\r\n\r\n\r\nTournant beaucoup, G??rard Depardieu alterne projets originaux ind??pendants (Valley Of Love, The End, Tour De France) avec des films plus grand public (Les Invincibles, La Dream Team). L\'acteur incarne m??me un personnage fortement inspir?? de Dominique Strauss-Kahn dans Welcome to New York d\'Abel Ferrara et go??te aux joies du petit ??cran en se glissant dans la peau du maire de Marseille dans la s??rie Netflix du m??me nom. Il se tourne ensuite vers un exercice qu\'il conna??t bien, l\'interpr??tation d\'une personnalit?? ayant r??ellement exist??, en pr??tant sa carrure ?? Staline dans le biopic Le Divan de Staline de Fanny Ardant.\r\n',
        '2019-01-31'),
       (12, 5, 'L\'homme fid??le', 1,
        'L\'argument : Abel et Marianne sont s??par??s depuis 10 ans. Alors qu???ils se retrouvent, Abel d??cide de reconqu??rir Marianne. Mais les choses ont chang????: Marianne a un fils, Joseph, et sa tante, la jeune ??ve, a grandi. Et ils ont des secrets ?? r??v??ler...\r\nNotre avis??: Louis Garrel en tant que cin??aste reprend une trame similaire ?? celle de son premier film, Les Deux amis, ?? savoir un marivaudage ax?? sur le triangle amoureux. Mais alors que la pr??c??dente ??uvre se voulait une adaptation (certes libre) des Caprices de Marianne, le pr??sent opus est bas?? sur un mat??riau originel, co??crit avec Jean-Claude Carri??re. Le ton demeure toutefois identique et Garrel reste manifestement marqu?? par un argument qui ??tait aussi celui de Fran??ois Truffaut dans Jules et Jim ou Claude Sautet avec C??sar et Rosalie. On a m??me droit ?? deux triangles sentimentaux qui constituent le pr??texte narratif, ?? dix ans d???intervalle. En premier lieu, Marianne (L??titia Casta) est partag??e entre son amour pour Abel (Louis Garrel) et celui qu???elle d??couvre pour Paul (que l???on ne verra jamais).\r\nApr??s la mort de ce dernier, nous d??couvrons qu?????ve (Lily-Rose Depp), la jeune s??ur de Paul, a toujours ??t?? ??prise d???Abel qu???elle essaiera d???arracher ?? Marianne, de nouveau en couple avec lui. Ce canevas minimaliste est greff?? ?? une vague trame polici??re lorsqu???une des deux femmes est soup??onn??e par Adam d?????tre une criminelle. Ayant conscience que ce sc??nario peine ?? remplir le cahier des charges d???un long m??trage (on leur sera reconnaissant d???avoir limit?? sa dur??e ?? 1h24), les auteurs misent sur un ton d??cal??, des dialogues sophistiqu??s et un m??lange des genres, ??tablissant des glissements insolites entre le vaudeville romanesque et le drame m??lancolique, le leitmotiv de la mort impr??gnant avec audace une histoire gu??re originale sur le papier. Le meilleur r??side dans son humour pince-sans-rire??: lorsqu???Adam apprend sans sourciller que la femme qu???il aime le quitte pour son meilleur ami dans la s??quence d???ouverture, il reste imperm??able et ne manifeste ni col??re ni douleur, tel un Buster Keaton sto??que et serein.\r\nSans coquetteries de style ni effets de montage, l???art de Louis Garrel mise sur une belle ??pure qui contraste avec l???agitation int??rieure des personnages??: ????Il n???y a quasiment pas de plan ?? l?????paule, je voulais qu???il n???y ait pas de d??monstration de la part de la cam??ra, que ce soit tr??s simple, comme le sc??nario est tr??s simple, je voulais ??a pour le rythme du film????, a d??clar?? le r??alisateur. Ce cin??ma est nimb?? de l??g??ret?? et de gr??ce, dans la lign??e balis??e de la Nouvelle Vague, ce qui n???est pas surprenant de la part de l???interpr??te de Doillon, Bonello, Honor??, et bien s??r Philippe Garrel??? C???est la qualit?? mais en m??me temps la limite d???une ??uvre qui peine ?? franchir la zone de confort de la com??die d???auteur made in France, un probl??me qui ??tait aussi celui du r??cent En libert????! de Pierre Salvadori. Malgr?? ces r??serves, L???Homme fid??le reste attachant et ses qualit??s d?????criture comme le jeu des interpr??tes (dont les charmantes L??titia Casta et Lily-Rose Depp) compensent le caract??re un brin artificiel du dispositif.\r\n',
        '2019-01-31');
/*!40000 ALTER TABLE `article`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanteur`
--

DROP TABLE IF EXISTS `chanteur`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanteur`
(
    `VIP_NUMERO`          int(11) NOT NULL,
    `CHANTEUR_SPECIALITE` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`VIP_NUMERO`),
    CONSTRAINT `FK_CHANTEUR_EST2_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanteur`
--

LOCK TABLES `chanteur` WRITE;
/*!40000 ALTER TABLE `chanteur`
    DISABLE KEYS */;
INSERT INTO `chanteur`
VALUES (12, 'Romantique'),
       (29, 'Sans voix');
/*!40000 ALTER TABLE `chanteur`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comporte`
--

DROP TABLE IF EXISTS `comporte`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comporte`
(
    `ARTICLE_NUMERO` int(11) NOT NULL,
    `PHOTO_NUMERO`   int(11) NOT NULL,
    `VIP_NUMERO`     int(11) NOT NULL,
    PRIMARY KEY (`ARTICLE_NUMERO`, `PHOTO_NUMERO`, `VIP_NUMERO`),
    KEY `LIEN_141_FK` (`PHOTO_NUMERO`),
    KEY `VIP_NUMERO` (`VIP_NUMERO`),
    CONSTRAINT `FK_COMPORTE_LIEN_127_ARTICLE` FOREIGN KEY (`ARTICLE_NUMERO`) REFERENCES `article` (`ARTICLE_NUMERO`),
    CONSTRAINT `FK_COMPORTE_LIEN_141_PHOTO` FOREIGN KEY (`PHOTO_NUMERO`) REFERENCES `photo` (`PHOTO_NUMERO`),
    CONSTRAINT `comporte_ibfk_1` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comporte`
--

LOCK TABLES `comporte` WRITE;
/*!40000 ALTER TABLE `comporte`
    DISABLE KEYS */;
INSERT INTO `comporte`
VALUES (1, 1, 34);
/*!40000 ALTER TABLE `comporte`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composer`
--

DROP TABLE IF EXISTS `composer`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composer`
(
    `ALBUM_NUMERO` int(11) NOT NULL,
    `VIP_NUMERO`   int(11) NOT NULL,
    PRIMARY KEY (`ALBUM_NUMERO`, `VIP_NUMERO`),
    KEY `LIEN_185_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_COMPOSER_LIEN_151_ALBUM` FOREIGN KEY (`ALBUM_NUMERO`) REFERENCES `album` (`ALBUM_NUMERO`),
    CONSTRAINT `FK_COMPOSER_LIEN_185_CHANTEUR` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `chanteur` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composer`
--

LOCK TABLES `composer` WRITE;
/*!40000 ALTER TABLE `composer`
    DISABLE KEYS */;
INSERT INTO `composer`
VALUES (2, 12),
       (3, 12),
       (4, 12),
       (1, 29);
/*!40000 ALTER TABLE `composer`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couturier`
--

DROP TABLE IF EXISTS `couturier`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couturier`
(
    `VIP_NUMERO` int(11) NOT NULL,
    PRIMARY KEY (`VIP_NUMERO`),
    CONSTRAINT `FK_COUTURIE_EST3_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couturier`
--

LOCK TABLES `couturier` WRITE;
/*!40000 ALTER TABLE `couturier`
    DISABLE KEYS */;
INSERT INTO `couturier`
VALUES (35);
/*!40000 ALTER TABLE `couturier`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defile`
--

DROP TABLE IF EXISTS `defile`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defile`
(
    `DEFILE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
    `VIP_NUMERO`    int(11) NOT NULL,
    `DEFILE_LIEU`   varchar(20) DEFAULT NULL,
    `DEFILE_DATE`   datetime    DEFAULT NULL,
    PRIMARY KEY (`DEFILE_NUMERO`),
    KEY `CIF4_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_DEFILE_CIF4_COUTURIE` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `couturier` (`VIP_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defile`
--

LOCK TABLES `defile` WRITE;
/*!40000 ALTER TABLE `defile`
    DISABLE KEYS */;
INSERT INTO `defile`
VALUES (1, 35, 'PARIS', '2000-01-20 00:00:00');
/*!40000 ALTER TABLE `defile`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defiledans`
--

DROP TABLE IF EXISTS `defiledans`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defiledans`
(
    `DEFILE_NUMERO` int(11) NOT NULL,
    `VIP_NUMERO`    int(11) NOT NULL,
    PRIMARY KEY (`DEFILE_NUMERO`, `VIP_NUMERO`),
    KEY `LIEN_137_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_DEFILEDA_LIEN_128_DEFILE` FOREIGN KEY (`DEFILE_NUMERO`) REFERENCES `defile` (`DEFILE_NUMERO`),
    CONSTRAINT `FK_DEFILEDA_LIEN_137_MANNEQUI` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `mannequin` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defiledans`
--

LOCK TABLES `defiledans` WRITE;
/*!40000 ALTER TABLE `defiledans`
    DISABLE KEYS */;
INSERT INTO `defiledans`
VALUES (1, 19),
       (1, 29);
/*!40000 ALTER TABLE `defiledans`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exemplaire`
(
    `EXEMPLAIRE_NUMERO`          int(11) NOT NULL AUTO_INCREMENT,
    `EXEMPLAIRE_DATEPUBLICATION` datetime DEFAULT NULL,
    PRIMARY KEY (`EXEMPLAIRE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplaire`
--

LOCK TABLES `exemplaire` WRITE;
/*!40000 ALTER TABLE `exemplaire`
    DISABLE KEYS */;
INSERT INTO `exemplaire`
VALUES (1, '2018-01-05 00:00:00'),
       (2, '2019-02-06 00:00:00'),
       (3, '2019-03-05 00:00:00'),
       (4, '2019-04-05 00:00:00'),
       (5, '2018-05-04 00:00:00');
/*!40000 ALTER TABLE `exemplaire`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film`
(
    `film_NUMERO`          int(11) NOT NULL AUTO_INCREMENT,
    `VIP_NUMERO`           int(11)     DEFAULT NULL,
    `FILM_TITRE`           varchar(80) DEFAULT NULL,
    `FILM_DATEREALISATION` datetime    DEFAULT NULL,
    PRIMARY KEY (`film_NUMERO`),
    KEY `CIF3_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_FILM_CIF3_REALISAT` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `realisateur` (`VIP_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 13
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film`
    DISABLE KEYS */;
INSERT INTO `film`
VALUES (1, NULL, 'Babel', '2006-05-01 00:00:00'),
       (2, NULL, 'Chad Schmidt', '2006-07-01 00:00:00'),
       (3, 28, 'Mr. and Mrs. Smith', '2005-07-01 00:00:00'),
       (4, NULL, 'Ocean\'s Twelve', '2004-03-12 00:00:00'),
       (5, NULL, 'Troy', '2004-10-30 00:00:00'),
       (6, NULL, 'Confessions of a Dangerous Mind', '2002-09-29 00:00:00'),
       (7, NULL, 'Et au milieu coule une rivi??re', '1992-06-20 00:00:00'),
       (8, 13, 'Ast??rix et Ob??lix contre C??sar', '1999-02-03 00:00:00'),
       (9, 30, 'Les Ames fortes', '2001-01-20 00:00:00'),
       (10, 31, 'Rue des plaisirs', '2002-02-13 00:00:00'),
       (11, 33, 'Le Coup de sirocco', '1979-04-18 00:00:00'),
       (12, 40, 'L\'Homme fid??le', '2018-10-17 00:00:00');
/*!40000 ALTER TABLE `film`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joue`
--

DROP TABLE IF EXISTS `joue`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joue`
(
    `FILM_NUMERO` int(11) NOT NULL,
    `VIP_NUMERO`  int(11) NOT NULL,
    `ROLE_NOM`    varchar(50) DEFAULT NULL,
    PRIMARY KEY (`FILM_NUMERO`, `VIP_NUMERO`),
    KEY `LIEN_330_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_JOUE_LIEN_132_FILM` FOREIGN KEY (`FILM_NUMERO`) REFERENCES `film` (`film_NUMERO`),
    CONSTRAINT `FK_JOUE_LIEN_330_ACTEUR` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `acteur` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joue`
--

LOCK TABLES `joue` WRITE;
/*!40000 ALTER TABLE `joue`
    DISABLE KEYS */;
INSERT INTO `joue`
VALUES (1, 24, NULL),
       (2, 24, NULL),
       (3, 24, NULL),
       (3, 26, NULL),
       (4, 24, NULL),
       (5, 24, NULL),
       (6, 24, NULL),
       (7, 24, NULL),
       (8, 11, 'Ob??lix'),
       (8, 19, 'Falbala'),
       (9, 19, 'r??le principal'),
       (10, 19, 'Marion, une prostitu??e'),
       (11, 12, 'Le plus beau'),
       (12, 19, 'Marianne'),
       (12, 40, 'Abel');
/*!40000 ALTER TABLE `joue`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liaison`
--

DROP TABLE IF EXISTS `liaison`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liaison`
(
    `VIP_NUMERO`       int(11)  NOT NULL,
    `VIP_VIP_NUMERO`   int(11)  NOT NULL,
    `DATE_EVENEMENT`   datetime NOT NULL,
    `LIAISON_MOTIFFIN` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`VIP_NUMERO`, `VIP_VIP_NUMERO`, `DATE_EVENEMENT`),
    KEY `LIEN_195_FK` (`VIP_VIP_NUMERO`),
    CONSTRAINT `FK_LIAISON_LIEN_194_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`),
    CONSTRAINT `FK_LIAISON_LIEN_195_VIP` FOREIGN KEY (`VIP_VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liaison`
--

LOCK TABLES `liaison` WRITE;
/*!40000 ALTER TABLE `liaison`
    DISABLE KEYS */;
INSERT INTO `liaison`
VALUES (19, 34, '2002-01-04 00:00:00', 'Tromperie'),
       (24, 26, '2006-02-01 00:00:00', 'aucune raison'),
       (24, 26, '2009-12-25 00:00:00', 'Ne passe pas au S4'),
       (26, 27, '2006-02-01 00:00:00', 'Trop beau'),
       (26, 27, '2009-12-29 00:00:00', 'A trouv?? mieux'),
       (34, 11, '2010-01-03 00:00:00', 'Ne se suportaient plus');
/*!40000 ALTER TABLE `liaison`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maisondisque`
--

DROP TABLE IF EXISTS `maisondisque`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maisondisque`
(
    `MAISONDISQUE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
    `MAISONDISQUE_NOM`    varchar(20) DEFAULT NULL,
    PRIMARY KEY (`MAISONDISQUE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maisondisque`
--

LOCK TABLES `maisondisque` WRITE;
/*!40000 ALTER TABLE `maisondisque`
    DISABLE KEYS */;
INSERT INTO `maisondisque`
VALUES (1, 'Pomme Music'),
       (2, 'Sony France'),
       (3, 'Virgin'),
       (4, 'Sony France'),
       (5, 'Na??ve'),
       (6, 'Bmg France');
/*!40000 ALTER TABLE `maisondisque`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mannequin`
--

DROP TABLE IF EXISTS `mannequin`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mannequin`
(
    `VIP_NUMERO`       int(11) NOT NULL,
    `MANNEQUIN_TAILLE` int(11) DEFAULT NULL,
    PRIMARY KEY (`VIP_NUMERO`),
    CONSTRAINT `FK_MANNEQUI_EST1_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mannequin`
--

LOCK TABLES `mannequin` WRITE;
/*!40000 ALTER TABLE `mannequin`
    DISABLE KEYS */;
INSERT INTO `mannequin`
VALUES (19, 80),
       (29, 2);
/*!40000 ALTER TABLE `mannequin`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mariage`
--

DROP TABLE IF EXISTS `mariage`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mariage`
(
    `VIP_NUMERO`       int(11)  NOT NULL,
    `VIP_VIP_NUMERO`   int(11)  NOT NULL,
    `DATE_EVENEMENT`   datetime NOT NULL,
    `MARIAGE_LIEU`     varchar(20) DEFAULT NULL,
    `MARIAGE_FIN`      datetime    DEFAULT NULL,
    `MARIAGE_MOTIFFIN` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`VIP_NUMERO`, `VIP_VIP_NUMERO`, `DATE_EVENEMENT`),
    KEY `LIEN_191_FK` (`VIP_VIP_NUMERO`),
    CONSTRAINT `FK_MARIAGE_LIEN_190_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`),
    CONSTRAINT `FK_MARIAGE_LIEN_191_VIP` FOREIGN KEY (`VIP_VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mariage`
--

LOCK TABLES `mariage` WRITE;
/*!40000 ALTER TABLE `mariage`
    DISABLE KEYS */;
INSERT INTO `mariage`
VALUES (1, 2, '2008-12-30 00:00:00', 'Brive La Gaillarde', '2016-11-11 00:00:00', 'Non admis en LP DWBD'),
       (3, 34, '2010-01-01 00:00:00', 'IUT du LIMOUSIN', '2010-01-02 00:00:00', 'Toujours ivre'),
       (19, 36, '2001-01-27 00:00:00', 'Paris', '2005-01-27 00:00:00', 'S??paration'),
       (19, 40, '2016-12-05 00:00:00', 'Bordeaux', NULL, NULL),
       (24, 25, '2001-01-02 00:00:00', 'Las Vegas', '2002-01-02 00:00:00', 'Trop beau'),
       (24, 25, '2009-12-01 00:00:00', 'Las Vegas', '2009-12-23 00:00:00', 'Trop beau');
/*!40000 ALTER TABLE `mariage`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client = @@character_set_client */;
/*!50003 SET @saved_cs_results = @@character_set_results */;
/*!50003 SET @saved_col_connection = @@collation_connection */;
/*!50003 SET character_set_client = utf8mb4 */;
/*!50003 SET character_set_results = utf8mb4 */;
/*!50003 SET collation_connection = utf8mb4_general_ci */;
/*!50003 SET @saved_sql_mode = @@sql_mode */;
/*!50003 SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO' */;
DELIMITER ;;
/*!50003 CREATE */ /*!50017 DEFINER =`root`@`localhost`*/ /*!50003 TRIGGER `verifvip`
    BEFORE INSERT
    ON `mariage`
    FOR EACH ROW
begin
    DECLARE nb SMALLINT;
    if (new.vip_numero = new.vip_vip_numero) then
        begin
            select * into nb from t1;
        end;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode = @saved_sql_mode */;
/*!50003 SET character_set_client = @saved_cs_client */;
/*!50003 SET character_set_results = @saved_cs_results */;
/*!50003 SET collation_connection = @saved_col_connection */;

--
-- Table structure for table `nationalite`
--

DROP TABLE IF EXISTS `nationalite`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalite`
(
    `NATIONALITE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
    `NATIONALITE_NOM`    varchar(20) DEFAULT NULL,
    PRIMARY KEY (`NATIONALITE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalite`
--

LOCK TABLES `nationalite` WRITE;
/*!40000 ALTER TABLE `nationalite`
    DISABLE KEYS */;
INSERT INTO `nationalite`
VALUES (1, 'Am??ricaine'),
       (2, 'Fran??aise'),
       (3, 'Allemande'),
       (4, 'Italienne'),
       (5, 'Alg??rienne'),
       (6, 'Irlandaise'),
       (7, 'Chilienne'),
       (8, 'Sud Africaine');
/*!40000 ALTER TABLE `nationalite`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametres`
--

DROP TABLE IF EXISTS `parametres`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametres`
(
    `LOGIN`  varchar(20)  NOT NULL,
    `PASSWD` varchar(100) NOT NULL
) ENGINE = MyISAM
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametres`
--

LOCK TABLES `parametres` WRITE;
/*!40000 ALTER TABLE `parametres`
    DISABLE KEYS */;
INSERT INTO `parametres`
VALUES ('admin', 'fcdda9d67ad2ffd96a0ed44ccb967e7b31747d54');
/*!40000 ALTER TABLE `parametres`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo`
(
    `PHOTO_NUMERO`      int(11) NOT NULL,
    `VIP_NUMERO`        int(11) NOT NULL DEFAULT '0',
    `PHOTO_SUJET`       varchar(220)     DEFAULT NULL,
    `PHOTO_COMMENTAIRE` varchar(250)     DEFAULT NULL,
    `PHOTO_ADRESSE`     varchar(50)      DEFAULT NULL,
    PRIMARY KEY (`PHOTO_NUMERO`, `VIP_NUMERO`),
    KEY `POSSEDE_FK` (`VIP_NUMERO`),
    CONSTRAINT `FK_PHOTO_POSSEDE_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo`
    DISABLE KEYS */;
INSERT INTO `photo`
VALUES (1, 1, '30/01/10', 'Cinevile Studios', 'smith.jpg'),
       (1, 2, '14/03/10', 'Tournage de Cannes 9', 'caunes.jpg'),
       (1, 3, '14/02/12', 'Dernier Film de Wood', 'allen.jpg'),
       (1, 4, '20/06/16', 'Maison d\'Oph??lie', 'barr.jpg'),
       (1, 5, '10/05/15', 'F??te des fous', 'berry2.jpg'),
       (1, 6, 'Juste avant de rendre le projet tut', 'grande solitude en fin de S3', 'bonnaire.jpg'),
       (1, 7, 'Vient de rentrer au S4', 'Pendant le S4 en cours de NODE.JS', 'bouchez.jpg'),
       (1, 8, 'Essaye de compiler un programme en C', 'Premier cours du S1 avec TM', 'branagh.jpg'),
       (1, 9, 'Devant la machine ?? caf??', 'R??cup??re un jeton jaune ', 'canet.jpg'),
       (1, 10, 'Premi??re promo du d??partement info', 'En Cobol', 'chabrol.jpg'),
       (1, 11, 'A d??missionn?? apr??s le premier cours de math', 'A jeun, il ??tait 8 heures du mat', 'depardieux.jpg'),
       (1, 12, 'Photo type identite', 'Son plus beau profil', 'bruel.jpg'),
       (1, 13, 'Semaine des partiels', 'Sort du partiel de Java', 'zidi.jpg'),
       (1, 14, 'Vient de d??couvrir la m??thode ?? Gilles', 'Il vient d\'acc??der ?? la zone libre pour la premi??re fois',
        'caprio.jpg'),
       (1, 15, 'Pendant la nuit de l\'info', 'Chef de projet', 'boyle.jpg'),
       (1, 16, 'Avec AB au S1', 'D??couvre SQL au S1', 'ledoyen.jpg'),
       (1, 17, 'Au secr??tariat du d??partement', 'Essaye de justifier une absence', 'burton.jpg'),
       (1, 18, 'd??couvre l\'emploi du temps de la semaine 23', 'R??alise qu\'il sort tout les soirs ?? 19h30',
        'depp.jpg'),
       (1, 19, 'La plus belle ??tudiante de la promo', '???', 'casta.jpg'),
       (1, 20, '???', 'Toute la promo ??tait ?? ses pieds', 'bellucci.jpg'),
       (1, 21, 'Juste avant d\'??tre admise en LP ARBD', 'Le r??seau a toujours ??tait son \"truc\"', 'binoche.jpg'),
       (1, 22, 'D??couvre les feutres ?? tableau blanc de l\'IUT', 'Ne supporte pas les cours de Math', 'berry.jpg'),
       (1, 23, 'Sort d\'un cours de PHP', 'Trouve que le cours est beaucoup trop rapide', 'barrymore.jpg'),
       (1, 24, 'Le seul gar??on de la promo', 'La seule promo compos??e d\'un seul gar??on', 'brad.jpg'),
       (1, 25, 'En cours', 'de BD', 'aniston.jpg'),
       (1, 26, 'En cours avec LB', 'Au labo d\'Anglais de l\'IUT', 'jolie.jpg'),
       (1, 27, 'Envisage de d??missionner du d??partement info', 'A la nouvelle cafet', 'farrell.jpg'),
       (1, 28, 'Au tout d??but du S1 au d??partement info', 'Sort du cours de math de TB', 'liman.jpg'),
       (1, 29, 'Photo type identite', 'En retard ?? un cours de comm', 'bruni.jpg'),
       (1, 30, 'Son plus beau profil', 'Son plus beau profil', 'ruiz.jpg'),
       (1, 31, 'Son plus beau profil', 'Son plus beau profil', 'leconte.jpg'),
       (1, 32, 'Avec SR', 'Pendant un TD de gestion', 'ford.jpg'),
       (1, 33, 'Pendant le tournage coup de sirocco', 'photo ancienne', 'arcady.jpg'),
       (1, 34, 'Photo identit??', 'Devant le bureau du chef', 'laurent.jpg'),
       (1, 35, 'Photo type identite', 'Convoqu?? dans le bureau du chef', 'saintlaurent.jpg'),
       (1, 36, 'Photo type identite', 'Son plus beau profil', 'sednaoui.jpg'),
       (1, 39, 'Devant l\'IUT du LIMOUSIN', 'Viens de garer sa voiture sur le trottoir', '04.jpg'),
       (1, 40, 'Photo d\'identit??', 'Photo officielle', 'Garrel1.jpg'),
       (2, 1, 'A l\'IUT du Limousin', 'Dans le couloir', 'will_smith.jpg'),
       (2, 19, 'Dans le Film ERRANCE', 'Dans le r??le de LOU', 'casta2.jpg'),
       (2, 34, 'Pendant le tournage du concert', 'Esp??re ??tre admis en LP DWBD ', 'laurent2.jpg'),
       (2, 40, 'Abel', 'Abel', 'Garrel2.jpg'),
       (3, 1, 'A l\'IUT du LIMOUSIN', 'Convoqu?? dans le bureau du chef', 'will_smith2.jpg'),
       (3, 19,
        ' En conmemoracion al Dia de la Bastilla les traemos a la hermosa francesita Laetitia Casta, modelo de Victoriaa??????s Secret.',
        'Las curvas de Laetitia rompia el estereotipo de las modelos flacas y huesudas.', 'casta3.jpg'),
       (4, 1, 'A l\'iut du LIMOUSIN', 'Pendant un cours de BD', 'will_smith3.jpg'),
       (4, 19, 'Caricature', 'Son plus beau sourire', 'casta4.jpg'),
       (5, 19, 'A l\'IUT du LIMOUSIN', 'Elle d??couvre l\'emploi du temps de la semaine 20', 'casta5.jpg'),
       (6, 19, 'A l\'IUT du LIMOUSIN', 'Juste avant de partir en stage de seconde ann??e', 'casta6.jpg'),
       (7, 19, 'Marianne', 'Marianne', 'casta7.jpg');
/*!40000 ALTER TABLE `photo`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realisateur`
(
    `VIP_NUMERO` int(11) NOT NULL,
    PRIMARY KEY (`VIP_NUMERO`),
    CONSTRAINT `FK_REALISAT_EST5_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realisateur`
--

LOCK TABLES `realisateur` WRITE;
/*!40000 ALTER TABLE `realisateur`
    DISABLE KEYS */;
INSERT INTO `realisateur`
VALUES (3),
       (10),
       (13),
       (28),
       (30),
       (31),
       (33),
       (34),
       (40);
/*!40000 ALTER TABLE `realisateur`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip`
(
    `VIP_NUMERO`         int(11)  NOT NULL AUTO_INCREMENT,
    `NATIONALITE_NUMERO` int(11)  NOT NULL,
    `VIP_NOM`            varchar(20)   DEFAULT NULL,
    `VIP_PRENOM`         varchar(20)   DEFAULT NULL,
    `VIP_SEXE`           varchar(20)   DEFAULT NULL,
    `VIP_NAISSANCE`      datetime      DEFAULT NULL,
    `VIP_TEXTE`          varchar(2500) DEFAULT NULL,
    `VIP_DATE_INSERTION` datetime NOT NULL,
    PRIMARY KEY (`VIP_NUMERO`),
    KEY `A1_FK` (`NATIONALITE_NUMERO`),
    CONSTRAINT `FK_VIP_A1_NATIONAL` FOREIGN KEY (`NATIONALITE_NUMERO`) REFERENCES `nationalite` (`NATIONALITE_NUMERO`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 41
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip`
--

LOCK TABLES `vip` WRITE;
/*!40000 ALTER TABLE `vip`
    DISABLE KEYS */;
INSERT INTO `vip`
VALUES (1, 1, 'SMITH', 'Will', 'M', '1968-09-25 00:00:00',
        'Will Smith se destine ??  une carri??re musicale lorsque, en 1989, il fait la rencontre de Benny Medina, productrice ex??cutive pour la Warner, qui lui confie le r??le principal de la s??rie t??l??vis??e Le Prince de Bel-Air. Un feuilleton qui le rend extr??mement populaire et qui lui permet de d??buter une carri??re cin??matographique. En 1992, il joue dans la com??die Made in America puis se distingue dans le drame Six degr??s de s??paration.',
        '2009-12-29 14:30:54'),
       (2, 2, 'DE CAUNES', 'Antoine', 'M', '1953-09-14 00:00:00',
        'Fils de Georges de Caunes et de Jaqueline Jouber, p??re de l\'actrice Emma de Caunes. ', '2009-12-29 14:30:54'),
       (3, 1, 'ALLEN', 'Woody', 'M', '1935-03-24 00:00:00',
        ' A l\'??ge de seize ans, Woody Allen envoie des histoires dr??les ??  diff??rents chroniqueurs de journaux. Apr??s avoir ??crit des sketches pour la t??l??vision et d\'innombrables chroniques pour des magazines comme Playboy, il d??cide en 1961 de monter sur les planches. Il arpente ainsi les cabarets et les plateaux de t??l??vision.',
        '2009-12-29 14:30:54'),
       (4, 3, 'BARR', 'Jean Marc', 'M', '1960-09-27 00:00:00',
        ' Fils d\'un p??re am??ricain, h??ros de l\'US Air Force, et d\'une m??re francaise, Jean-Marc Barr passe une partie de son enfance en Allemagne, puis aux Etats-Unis, avant de rejoindre la France en 1968. En 1974, la famille s\'installe ??  San Diego, Jean-Marc Barr y re??oit une ??ducation stricte en vue de son incorporation dans l\'US Air Force. Refusant d\'emprunter la m??me voie que son p??re, il part pour Londres en 1982 ??tudier le th????tre. Il y fait la connaissance de sa future femme, une pianiste d\'origine yougoslave. De retour en France, il fait ses d??buts ??  l\'??cran dans The Frog prince (1984) et joue sous la direction de John Boorman dans La Guerre ??  sept ans (1987).',
        '2009-12-29 14:30:54'),
       (5, 2, 'BERRY', 'Richard', 'M', '1950-07-31 00:00:00',
        ' D??s l\'??ge de 16 ans, Richard Berry d??veloppe un int??r??t particulier pour le th????tre. Il rejoint une troupe de com??diens amateurs, et se passionne pour les classiques de Racine, Corneille, Moli??re et Beaumarchais. Apr??s un premier ??chec au concours d\'entr??e du Conservatoire, il y est finalement admis en 1969. A sa sortie, il int??gre la Com??die-Fran??aise et y restera sept ans. ',
        '2009-12-29 14:30:54'),
       (6, 2, 'BONNAIRE', 'Sandrine', 'F', '1967-03-31 00:00:00',
        ' Septi??me d\'une famille de dix enfants, Sandrine Bonnaire d??bute en 1982 comme figurante dans La Boum 2 et Les Sous-dou??s en vacances. Alors qu\'elle accompagne sa soeur ??  un casting, elle est choisie par Maurice Pialat, pour un projet qui n\'aboutira pas, Les Meurtri??res. Mais le cin??aste en fait l\'h??ro??ne du film auquel il songe depuis dix ans, A nos amours, pour lequel l\'actrice obtient le C??sar du Meilleur jeune espoir f??minin. Par l\'intensit?? qui se d??gage de son jeu spontan??, Sandrine Bonnaire fait, ??  16 ans, une irruption spectaculaire dans le cin??ma fran??ais.',
        '2009-12-29 14:30:54'),
       (7, 2, 'BOUCHEZ', 'Elodie', 'F', '1973-04-05 00:00:00',
        ' Elodie Bouchez ??tudie le th????tre ??  l\'Universit??. D\'abord danseuse, elle commence sa carri??re cin??matographique par des r??les sulfureux dans Stan the Flasher de Serge Gainsbourg et Le Cahier vol?? de Christine Lipinska, dans lequel elle joue son premier grand r??le.',
        '2009-12-29 14:30:54'),
       (8, 6, 'BRANAGH', 'Kenneth', 'M', '1960-12-10 00:00:00',
        ' Kenneth Branagh est n?? le 10 d??cembre 1960 ??  Belfast, en Irlande du Nord, le deuxi??me de trois enfants (entre son fr??re Bill et sa soeur Joyce) dans une famille modeste protestante (son p??re est charpentier). Pour ??viter les conflits engendr??s par la guerre civile, ils d??m??nagent ??  Reading, en Angleterre, alors qu\'il est ??  peine ??g?? de 9 ans. Dans sa jeunesse, il montre d\'abord des talents de sportif, dirigeant m??me l\'??quipe de football et de rugby de son ??cole. Il s\'int??resse aussi au journalisme, ??crivant des critiques de livres pour enfants pour le journal local. Mais, d??s son adolescence, il se tourne vers le th????tre et prend conscience de sa vocation d\'acteur en voyant, ??  15 ans, Derek Jacobi jouer Hamlet.',
        '2009-12-29 14:30:54'),
       (9, 2, 'CANET', 'Guillaume', 'M', '1973-04-10 00:00:00',
        ' Passionn?? d\'??quitation, Guillaume Canet voit sa carri??re de jockey interrompue par un accident. Se tournant vers l\'art dramatique, il suit une formation au Cours Florent et se fait remarquer au th????tre dans la pi??ce La Ville dont le Prince est un enfant d\'Henry de Montherlant, qu\'il interpr??te aux c??t??s de Christophe Malavoy.',
        '2009-12-29 14:30:54'),
       (10, 2, 'CHABROL', 'Claude', 'M', '1930-06-24 00:00:00',
        ' Apr??s avoir tenu un cin??-club dans la Creuse pendant la guerre, Claude Chabrol, de retour ??  Paris, suit des ??tudes de lettres puis de pharmacie, mais fr??quente surtout les cin??mas de la ville ??  raison de plusieurs s??ances par jour. Il y rencontre de jeunes cin??philes passionn??s avec qui il participe ??  l\'aventure des Cahiers du cin??ma de 1952 ??  1957, et fait bient??t la connaissance du romancier Paul G??gauff, dont l\'influence le d??tourne de son ??ducation bourgeoise. Mari?? tr??s t??t, il est attach?? de presse ??  la Fox avant de profiter d\'un h??ritage de son ??pouse pour produire Le Coup du berger (1957) de  Rivette et r??aliser Le Beau Serge (1958), son premier long m??trage. En grande partie autobiographique, ce film-cl?? de la Nouvelle vague est un beau succ??s public et critique et remporte le prix Jean Vigo.',
        '2009-12-29 14:30:54'),
       (11, 2, 'DEPARDIEU', 'G??rard', 'M', '1948-11-27 00:00:00',
        'Qu\'il est loin le temps o?? G??rard Depardieu, adolescent, flirtait avec la d??linquance. Aujourd\'hui, \"Depardiou\", comme disent les Am??ricains, fait figure de poids lourds du cin??ma, de boulimique de la pellicule. Depuis Les Valseuses en 1974, le public a adopt?? ce personnage hors du commun, vivant dans les exc??s. Propri??taire d\'un vignoble, il n\'oublie pas de go????ter sa production; ses chutes en moto sont r??guli??rement ??  la une, bref ses moindres faits et gestes sont repris parce que Depardieu est tout simplement une STAR ! Un rang qu\'il a obtenu en tournant avec les plus grands cin??astes et en jouant aussi bien des r??les comiques que tragiques. Au cours de ses trente ans de carri??re, on ne compte plus ses succ??s, Le Dernier M??tro, Cyrano de Bergerac, La Ch??vre... Seules ses apparitions aux Etats-Unis n\'ont pas ??t?? aussi flamboyantes avec notamment l\'??chec du film 1492 de Ridley Scott. Son couple avec Carole Bouquet finit d\'entretenir cette l??gende vivante.',
        '2009-12-29 14:30:54'),
       (12, 2, 'Bruel', 'Patrick', 'M', '1959-05-14 00:00:00',
        'C\'est ?? Tlemcen, en Alg??rie, pr??s d\'Oran, que Patrick Benguigui na??t le 14 mai 1959. Sa m??re Augusta, professeur de fran??ais, est divorc??e de son mari. Patrick grandira sans p??re, et cette absence le marquera ?? vie. En 1962, les Benguigui rejoignent la France et s\'installent en banlieue parisienne, ?? Argenteuil dans le val d\'Oise. Puis ils s\'installent ?? Paris dans le 13 ??me arrondissement. Deux demi/fr??res na??tront : David (qui vivra plus tard au c??t?? d\'Emmanuelle B??art), et Fabrice Moreau. Le petit Patrick est un enfant sportif. Il adore le football et r??ve de devenir footballeur professionnel. Encore aujourd\'hui, il ne manque pas un match gala avec le Vari??t??s Club de France ou en spectateur avec ses amis. Outre le football, l\'adolescence de Patrick est occup??e par la musique, avec une double passion pour la chanson fran??aise (Brel, Brassens,...) et le rock anglo/saxon (Eric Clapton, Hendrix, Jeff Beck,...).',
        '2008-01-05 00:00:00'),
       (13, 2, 'ZIDI', 'Claude', 'M', '1934-07-25 00:00:00',
        ' Apr??s des ??tudes ??  L\'Ecole Louis-Lumi??re, Claude Zidi d??bute sa carri??re en tant que chef-op??rateur (sur La Baie des anges de Jacques Demy ou La Ligne de d??marcation de Claude Chabrol) puis se lance dans la r??alisation en 1971. Il se sp??cialise d\'embl??e dans la com??die, ses quatre premiers films donnant la vedette ??  la troupe comique des Charlots (Les Bidasses en folie, Les Fous du stade, Le Grand bazar et Les Bidasses s\'en vont en guerre).',
        '2009-12-29 14:30:54'),
       (14, 1, 'DI CAPRIO', 'L??onardo', 'M', '1974-11-11 00:00:00',
        ' N?? d\'un p??re italien et d\'une m??re allemande favorisant au mieux ses aptitudes artistiques, Leonardo DiCaprio suit des cours de com??die d??s l\'??cole primaire. Auditionnant pour la premi??re fois en 1988, il commence par tourner des spots publicitaires puis obtient tr??s vite quelques petits r??les ??  la t??l??vision (Les Nouvelles aventures de Lassie, Santa Barbara) avant de se faire remarquer dans la s??rie Quoi de neuf, docteur ? en 1991. Mais il est surtout int??ress?? par le cin??ma, et apr??s un premier film d\'horreur (Critters 3), Leonardo DiCaprio est choisi parmi quatre cents candidats pour jouer le beau-fils maltrait?? de Robert De Niro dans Blessures secr??tes (1993).',
        '2009-12-29 14:30:54'),
       (15, 1, 'BOYLE', 'Danny', 'M', '1956-10-20 00:00:00',
        ' Danny Boyle commence sa carri??re au th????tre, ??  la \"Join Stock Theatre Compagny\" jusqu\'en 1982. Apr??s ??tre devenu directeur adjoint du \"Royal Court Theatre Compagny\" en 1985, il met en sc??ne parall??lement cinq pi??ces de th????tre pour la Royal Shakspeare Compagny, et se voit r??compenser par de nombreux prix.',
        '2009-12-29 14:30:54'),
       (16, 2, 'LEDOYEN', 'Virginie', 'F', '1976-11-15 00:00:00',
        ' Enfant, Virginie Ledoyen appara??t dans des spots publicitaires, notamment pour les marques Buitoni et Air Inter, et dans le vid??o clip L\'Aziza de Daniel Balavoine. A dix ans, elle d??bute au cin??ma dans un film italien intitul?? Les Exploits d\'un jeune Don Juan (1987). C\'est Philomene Esposito qui lui offre son premier grand r??le en 1991 avec Mima.',
        '2009-12-29 14:30:54'),
       (17, 1, 'BURTON', 'Tim', 'M', '1958-08-25 00:00:00',
        ' Apr??s des ??tudes ??  la California Institute of the Arts, Tim Burton d??bute chez Disney dans les ann??es 70, collaborant ??  l\'animation de plusieurs dessins anim??s, dont Rox et Rouky. Apr??s cette exp??rience, il d??bute dans la r??alisation avec deux courts m??trages, l\'un d\'animation (Vincent; 1982), l\'autre de facture classique, Frankenweenie (1984), parodie revendiqu??e de Frankenstein et des films de la firme Hammer.',
        '2009-12-29 14:30:54'),
       (18, 1, 'DEPP', 'Johny', 'M', '1963-06-09 00:00:00',
        ' Fils d\'un ing??nieur et d\'une femme de m??nage, Johnny Depp se passionne pour la musique en assistant ??  un spectacle de gospel. Il rejoint alors le groupe The Flame, qui devient The Kids, et fait la premi??re partie de la tourn??e d\'Iggy Pop. Deux ans plus tard, les musiciens se rendent ??  Los Angeles, mais la formation ne remporte pas le succ??s escompt??. C\'est ??  cette p??riode que Johnny Depp fait la connaissance de Nicolas Cage gr??ce ??  la maquilleuse Lori Allison. Ce dernier organise une rencontre avec son agent, une rencontre qui d??bouchera sur un petit r??le dans Les Griffes de la nuit (1984) de Wes Craven.',
        '2009-12-29 14:30:54'),
       (19, 2, 'CASTA', 'Laetitia', 'F', '1978-05-11 00:00:00',
        ' N??e en Normandie et d??couverte ??  15 ans sur une plage Corse, Laetitia Casta d??bute une carri??re de mannequin. En 1998, elle fait ses premiers pas au cin??ma avec le r??le de Falbala dont est amoureux Ob??lix alias G??rard Depardieu dans Ast??rix et Ob??lix contre C??sar.',
        '2009-12-29 14:30:54'),
       (20, 4, 'BELLUCCI', 'Monica', 'F', '1968-09-30 00:00:00',
        'Mannequin et star de cin??ma, Monica Bellucci monopolise les unes de magazines. Un destin fantastique pour cette magnifique Italienne, n??e dans le petit village de Citta di Castello. Uniquement envisag??e pour financer ses ??tudes de droit, sa carri??re de mannequin s\'envole quand elle signe avec l\'agence mondiale Elite. Avec l\'argent gagn??, elle prend des cours de th????tre et appara??t dans plusieurs films italiens, d??s 1990. Rapidement,  elle sort des fronti??res de l\'Italie en int??grant le casting de Dracula, r??alis?? par Coppola.',
        '2009-12-29 14:30:54'),
       (21, 2, 'BINOCHE', 'Juliette', 'F', '1964-03-09 00:00:00',
        'Contrairement ??  d\'autres stars, Juliette Binoche n\'appara??t que tr??s peu ??  la une des magazines people. Pour faire parler d\'elle, l\'actrice n\'utilise que son m??tier. Juliette Binoche a d??but?? au th????tre ??  16 ans avec des classiques comme Le Malade imaginaire. Encourag??e par cette exp??rience, elle d??cide de suivre une formation au Conservatoire. Apr??s quelques r??les secondaires au cin??ma, elle obtient enfin sa chance dans Rendez-vous, de T??chin?? (1985). A partir de ce moment, Juliette se concentre sur des personnages difficiles ??  jouer dans des films d\'auteur (Les amants du Pont-Neuf). Trois couleur : Bleu marque sa reconnaissance, avec le C??sar de la meilleure actrice. Juliette se tourne alors vers des films plus grand public comme Le Hussard sur le toit et vers l\'??tranger avec Le Patient Anglais',
        '2009-12-29 14:30:54'),
       (22, 1, 'BERRY ', 'Halle', 'F', '1966-08-14 00:00:00',
        'Les flashs commencent ??  cr??piter pour Halle Berry d??s ses 17 ans. Elle remporte le prix de Miss Teen All-American et participe aux finales de Miss USA et Miss Monde ! Avec ses titres, elle commence une carri??re de mannequin tout en prenant des cours de com??die. Ses premiers pas d\'actrice, Halle les effectue par le biais de la t??l??vision dans C??te Ouest en 1991. La m??me ann??e, Spike Lee lui propose de jouer un petit r??le dans Jungle Fever. Fort de ce d??but, Halle Berry continue tranquillement sa conqu??te d\'Hollywood en faisant des apparitions dans Le dernier Samaritain ou Ultime D??cision, sa cons??cration m??diatique intervient avec X-Men. Gr??ce ??  ce film, sa carri??re prend une autre dimension. Elle recevra m??me l\'Oscar de la meilleure actrice pour son r??le dans A l\'ombre de la haine. Sensuelle, Halle, en plus de son talent, sait aussi jouer de ses formes g??n??reuses pour \"reprendre\" avec brio le r??le mythique d\'Ursula Andress en maillot de bain dans le James Bond Meurs un autre jour.',
        '2009-12-29 14:30:54'),
       (23, 1, 'BARRYMORE', 'Drew', 'F', '1975-02-22 00:00:00',
        'Dans la famille \"je demande l\'apparition la plus pr??coce devant des cam??ras\", je trouve Drew Barrymore avec une publicit?? TV ??  moins d\'un an ! N??e d\'un p??re acteur, elle encha??ne quelques r??les jusqu\'??  ce que son parrain Steven Spielberg lui offre, pour ses 7 ans, le personnage f??minin dans E.T. Pour cette toute jeune fille, ce sera un cadeau empoisonn?? ! Enfant star, Drew ne g??re pas sa c??l??brit?? et tombe dans l\'alcool et la drogue d??s 12 ans. Sa r??putation d\'instabilit?? aigue fait fuir les r??alisateurs. Apr??s une travers??e du d??sert de treize ans, ponctu??e de cures de d??sintoxication et de r??les tr??s mineurs, Drew reprend espoir avec des apparitions remarqu??es dans Batman Forever et Tout le monde dit I love you. Aujourd\'hui, elle est redevenue une actrice demand??e et une femme d\'affaires avis??e en produisant le tr??s rentable Dr??les de dames. Sur le plan personnel, apr??s deux mariages express dans sa p??riode fragile, Drew coule enfin des jours heureux avec Fabrizio Moretti.s Dans la f',
        '2009-12-29 14:30:54'),
       (24, 1, 'PITT', 'Brad', 'M', '1963-12-18 00:00:00',
        'Brad Pitt... Un p\'tit gars de l\'Oklahoma, ??lev?? dans le Missouri et devenu le sex-symbol absolu du 7e art ! Pourtant, rien ne le pr??destinait ??  une telle carri??re. Car Brad, c\'est d\'abord le journalisme et l\'architecture qui l\'int??ressent. Et puis, sur un coup de t??te, il d??cide de tenter sa chance ??  Hollywood. Avec sa belle gueule, il encha??ne les pubs et les apparitions dans les s??ries t??l??, de Quoi de neuf docteur ? ??  Dallas en passant par 21 Jump Street o?? il croisera un certain Johnny Depp. Rep??r?? par Ridley Scott, il s??duit Geena Davis dans Thelma et Louise... et le public f??minin. Le ph??nom??ne Pitt peut commencer ! Capable de casser son image de s??ducteur avec des films plus os??s (Kalifornia, L\'arm??e des douze singes ou Fight Club), Brad n\'est pourtant pas le roi du box-office. C\'est c??t?? coeur qu\'il fait des ravages... Et apr??s six ans d\'amour avec Jennifer Friends Aniston, il est aujourd\'hui, ??  42 ans, le plus beau parti de Hollywood. Qui fera de lui le papa qu\'il r??ve tant de devenir ?',
        '2009-12-29 14:30:54'),
       (25, 1, 'ANISTON', 'Jennifer', 'F', '1969-02-11 00:00:00',
        'Jennifer Aniston, fille de John, acteur dans le soap Days of our lives et ni??ce de Telly Savalas, alias Kojak, ne pouvait pas ??chapper ??  une carri??re t??l??vis??e. Avec son personnage de Rachel dans la s??rie Friends, sa renomm??e a d??pass?? celle de ses a??n??s ! Form??e au Manhattan High School of the Performing Arts, cadre de la c??l??bre s??rie Fame, Jennifer d??bute en 1987 au th????tre et ??  la t??l??vision (The Edge, Molloy...). Le succ??s arrive en 1994 apr??s qu\'elle soit parvenue ??  convaincre les producteurs de Friends qu\'elle serait plus apte ??  incarner le r??le de Rachel plut??t que celui de Monica. Bonne pioche car depuis elle peut s\'attaquer au cin??ma. Pour couronner cette r??ussite professionnelle, Jennifer a r??ussi ??  passer la bague au doigt du tr??s convoit?? Brad Pitt en 2000. Malheureusement pour elle, le r??ve s\'est quelque peu assombri depuis que Brad est parti apr??s quatre ans de mariage. Les derni??res rumeurs annon??aient pourtant qu\'ils pourraient se retrouver bient??t...',
        '2009-12-29 14:30:54'),
       (26, 1, 'JOLIE', 'Angelina', 'F', '1975-06-04 00:00:00',
        'Ses parents la font tourner d??s ses sept ans dans un de leurs films, la com??die Lookin\' to get out, en 1982. Son enfance est marqu??e par une fascination de la mort : la jeune fille collectionne les dagues et d??vore la litt??rature consacr??e ??  l\'empereur Vlad. Elle suit ??galement des cours de com??die d??s l\'??ge de douze ans ??  l\'??cole Lee Strasberg Theatre Institute. D??sireuse de r??ussir par son seul talent, l\'actrice abandonne son patronyme afin de revendiquer une personnalit?? fougueuse qui lui est propre. Entamant au d??but des ann??es 90 une carri??re de mannequin, elle d??file r??guli??rement sous les objectifs ??  Londres, New York et Los Angeles. Apr??s ??tre apparue dans quelques clips (Has anybody seen my baby des  Rolling Stones, Rock\'n roll dreams come through de Meat Loaf et Stand by my woman de Lenny Kravitz), elle devient en 1993 le personnage f??minin principal du film d\'action Glass shadow.',
        '2009-12-29 14:30:54'),
       (27, 6, 'FARRELL', 'Colin', 'M', '1976-03-31 00:00:00',
        'Colin Farrell a longtemps h??sit?? entre une carri??re de joueur de football et d\'acteur ??  cause de son p??re et de son oncle, joueurs de football eux-m??mes. Finalement, il se tourne vers la com??die et suit les cours ??  Dublin. Durant cette p??riode, il faillit m??me int??grer le groupe Boyzone ! Loin de s\'??garer et surtout tr??s impatient, Colin abandonne ses ??tudes et trouve son premier r??le dans The War zone (1999). Consid??r?? comme talentueux, il appara??t dans Ordinary decent criminal et surtout Tigerland qui le propulse sur le devant de la sc??ne. Devenu star avec les exc??s qui peuvent en d??couler (sexe, drogue, alcool), Colin prend rapidement du galon ??  Hollywood. Il tient le premier r??le dans Phone Game, c??toie Tom Cruise dans Minority Report et son idole Al Pacino dans La Recrue. Volant de succ??s en succ??s, Colin Farrell, malgr?? des ??carts de plus en plus nombreux, obtient, en 2004, la cons??cration en d??crochant le personnage titre d\'Alexandre, r??alis?? par Oliver Stone.',
        '2009-12-29 14:30:54'),
       (28, 1, 'LIMAN', 'Doug', 'M', '1965-07-24 00:00:00',
        ' Parall??lement ??  ses ??tudes secondaires, Doug Liman suit les cours de l\'International Center of Photography, puis entre ??  la Brown University de Providence (Rhode Island), o?? il collabore ??  la cr??ation d\'une station de t??l??vision ??  p??age g??r??e par ses condisciples.',
        '2009-12-29 14:30:54'),
       (29, 4, 'BRUNI', 'Carla', 'F', '1967-12-12 00:00:00',
        'Avant Carla Bruni, aucun mannequin n\'avait r??ussi une aussi jolie reconversion. Aujourd\'hui, les longs d??fil??s ont laiss?? leur place aux studios dans lesquels elle enregistre la musique qu\'elle aime. Loin d\'??tre simplement une superbe femme, Carla Bruni, pendant ses ann??es de mannequinat, composait secr??tement ses premi??res m??lodies. Elle d??cide d\'entrouvrir les portes de la musique en pr??sentant quelques unes de ses cr??ations ??  Julien Clerc qui en int??gre six dans son album Si j\'??tais elle (1999). Sa retraite de mannequin officialis??e, l\'Italienne, ??g??e de 32 ans, se jette ??  l\'eau pour r??ussir ce nouveau d??fi. En collaboration avec Louis Bertignac (ancien du groupe T??l??phone), elle sort son premier album solo Quelqu\'un m\'a dit en 2002. Le succ??s est imm??diat avec des milliers d\'exemplaires vendus. Reconnaissance ultime pour cette n??o-chanteuse, les professionnels lui d??cernent une Victoire de la musique en tant qu\'Artiste interpr??te f??minine de l\'ann??e, en 2004.',
        '2009-12-29 14:30:54'),
       (30, 7, 'Ruiz', 'Raoul', 'M', '1941-07-25 00:00:00',
        ' A 5 ans, Raoul Ruiz est atteint d\'un d??but de tuberculose, ce qui conduit sa famille ?? quitter Santiago pour vivre ?? la campagne. Son p??re est un capitaine dans la marine marchande, autoritaire et farfelu / il lui offrit, en m??me temps, une carabine 22 long rifle et un projecteur de cin??ma. Nourri de litt??rature (Kafka, Poe), Ruiz suit des ??tudes de droit et de th??ologie /l\'occasion pour lui de diriger le cin??/club de l\'universit??/ et ??crit des dizaines de pi??ces de th??atre d\'avant/garde. Son premier long/m??trage Tres tristes tigres, qui retrace le destin crois?? de trois habitants de Santiago, d??croche le L??opard d\'Or ?? Locarno en 1969, ann??e de son mariage avec sa collaboratrice Valeria Sarmiento. Militant socialiste, l\'apprenti cin??aste devient ?? cette m??me ??poque conseiller cin??matographique pour le parti d\'Allende. Mais il quitte le Chili au lendemain du coup d\'??tat de Pinochet.',
        '2008-01-05 00:00:00'),
       (31, 2, 'Leconte', 'Patrice', 'M', '1947-11-12 00:00:00',
        'En int??grant l\'IDHEC en 1967, Patrice Leconte d??bute dans la r??alisation en concevant de nombreux courts m??trages, dont Le Laboratoire de l\'angoisse (1971) et La Famille heureuse (1973). Eclectique, il s\'int??resse ??galement ?? la bande dessin??e et collabore au journal Pilote en tant qu\'auteur et dessinateur de 1970 ?? 1975. C\'est cette ann??e/l?? qu\'il met en sc??ne son premier long : Les V??c??s ??taient ferm??s de l\'int??rieur avec  Coluche et Jean Rochefort dans les r??les principaux. Le tournage est difficile et ??maill?? de fr??quents conflits.',
        '2008-01-05 00:00:00'),
       (32, 1, 'FORD', 'Harrison', 'M', '1942-07-13 00:00:00',
        'Quand Harrison commence des cours de com??die, le but premier n\'est pas de devenir acteur mais de vaincre sa timidit??. Cette initiative l\'emm??nera vers les sommets de Hollywood. Comme bon nombre d\'acteur, les d??buts furent pourtant laborieux. Apr??s quelques r??les, Harrison trouve m??me que sa carri??re ne d??colle pas et il abandonne tout pour devenir menuisier ! Sa rencontre avec George Lucas (au cours d\'un chantier) lui fera embrasser ??  nouveau sa carri??re d\'acteur avec American Graffiti (1973). Sa filmographie peut faire envier pas mal de ses coll??gues en comptant d\'innombrables succ??s comme Star Wars, Indiana Jones (d??volu normalement ??  Tom Selleck), Le Fugitif... Malgr?? quelques tentatives pour changer d\'image, l\'acteur Harrison Ford est per??u comme un homme honn??te et pr??t ??  se sacrifier pour sa famille et sa patrie.',
        '2009-12-29 14:30:54'),
       (33, 2, 'ARCADY', 'Alexandre', 'M', '1947-12-02 00:00:00',
        'Alexandre Arcady a 15 ans lorsqu\'il quitte l\'Alg??rie devenue ind??pendante pour la France. En tant que cin??aste, il s\'attachera ??  d??peindre cet exil et la communaut?? juive dont il est issu dans Le Grand carnaval (1983) et La -bas, mon pays (1999). A 22 ans, Alexandre Arcady d??bute une carri??re de com??dien en apparaissant dans une s??rie t??l?? intitul??e La Cravache d\'or pour devenir par la suite directeur du th????tre de Suresnes. Il aborde le cin??ma en 1977 en produisant le premier film de sa compagne Diane Kurys, Diabolo menthe. L\'ann??e suivante, il passe ??  la r??alisation avec Le Coup de sirocco - les premiers pas des \"Pieds-noirs\" en France - qui donne le ton de nombre de ses films',
        '2009-12-29 14:30:54'),
       (34, 2, 'Laurent', 'M??lanie', 'F', '1983-02-23 00:00:00',
        'C\'est en 1999 que M??lanie Laurent d??bute sur grand ??cran, avec un r??le dans le drame Un Pont entre deux rives, port?? par G??rard Depardieu et Carole Bouquet. Deux ans plus tard, elle s\'illustre au g??n??rique de Ceci est mon corps, mais c\'est en 2002 que la jeune actrice fran??aise se r??v??le en incarnant la petite amie de Gaspard Ulliel dans le Embrassez qui vous voudrez de Michel Blanc.\r\n\r\nM??lanie Laurent emprunte alors un parcours plut??t atypique. Apr??s avoir accompagn?? le Snowboarder Nicolas Duvauchelle, elle est au g??n??rique du film hong-kongais Rice Rhapsody puis redevient compagne de Gaspard Ulliel dans Le Dernier jour (2004), qui la voit travailler ??  nouveau pour Rodolphe Marconi deux ans apr??s Ceci est mon corps.\r\n\r\nA partir de 2005, les choses s\'acc??l??rent pour cette jeune femme au visage ??  la fois s??v??re et fragile : une apparition dans De battre, mon c??ur s\'est arr??t?? et un petit r??le dans Indig??nes pr??c??dent le d??lire belge Dikkenek et, surtout, le drame Je vais bien, ne t\'en fais pas de Philippe Lioret. L\'actrice, C??sar du Meilleur espoir f??minin pour son r??le de jeune femme d??boussol??e par la disparition de son fr??re, y fait preuve d\'une pr??sence et d\'une intensit?? qui l\'imposent comme l\'un des plus s??rs espoirs du cin??ma hexagonal.\r\n\r\nD??s lors tr??s demand??e, M??lanie Laurent tient la vedette du film policier La Chambre des morts et du thriller Le Tueur avant, en 2008, de parcourir le Paris de C??dric Klapisch. Apr??s avoir r??alis?? l\'un des courts m??trages pornographiques du projet X-Femmes, elle est ??  l\'affiche, en 2009, de la com??die Jusqu\'??  toi, puis franchit un nouveau cap -hollywoodien cette fois- en tenant l\'un des r??les principaux du Inglourious Basterds de Quentin Tarantino. Un r??le comme la preuve d??finitive d\'une ascension fulgurante, et qui a donn?? ??  la com??dienne l\'occasion d\'esquisser quelques pas de danse avec Tarantino himself sur le tapis rouge du Festival de Cannes, o?? le film ??tait pr??sent?? en comp??tition. ',
        '2009-12-29 20:45:01'),
       (35, 2, 'Saint Laurent', 'Yves', 'M', '1936-01-20 00:00:00',
        'Apr??s une jeunesse pass??e en Alg??rie, Yves Saint Laurent vient suivre ?? Paris des cours de dessins ?? la Chambre Syndicale de la haute/Couture. En 1955, Christian Dior le remarque et l\'emploie comme assistant mod??liste. Il lui succ??dera deux ans plus tard et conna??tra son premier grand succ??s avec sa fameuse robe trap??ze. Malgr?? cela, il sera remplac?? ?? la t??te de la maison Dior en 1961. Ce qui le poussera ?? fonder sa propre ligne de haute couture. Sa premi??re collection en 1962 est un v??ritable succ??s, que ne d??mentiront pas les d??cennies suivantes : Yves Saint Laurent lancant la mode du caban, du smocking f??minin, des sahariennes. En 1966, il ouvre son magasin Saint Laurent Rive Gauche, sp??cialis?? dans le pr??t ?? porter f??minin, et trois ans plus tard il s\'ouvre aux collections masculines. Yves Saint Laurent r??alisera ??galement de nombreux costumes et d??cors pour le th??atre et le cin??ma (\'Arabesque\', \'Belle de jour\'). A partir de 1983, plusieurs mus??es lui consacreront des r??trospectives. Il est nomm?? en 2001 commandeur de la L??gion d\'honneur, et fait ses adieux ?? la haute couture le 7 janvier 2002.',
        '2008-01-05 00:00:00'),
       (36, 2, 'Sednaoui', 'St??phane', 'M', '1959-05-14 00:00:00',
        'Il habite New York depuis le d??but des ann??es 1990. Ex petit ami de Bjork, il a une fille avec Laetitia Casta. Il faut voir comment les plus grandes rock stars de la plan??te parlent de St??phane Sednaoui, r??alisateur de plusieurs des clips les plus percutants de la d??cennie 90: Mysterious Ways de U2, Give It Away des Red Hot Chili Peppers, Big Time Sensuality de Bjork. Il faut voir Bono s\'incliner devant le charme d??vastateur du vid??aste, raconter en entrevue ?? quel point, sur le plateau de tournage, le plus cool, celui qui fait fondre les demoiselles, c\'est toujours Sednaoui, charismatique beaut?? male grev?? d\'un accent francais plus gros que le bras.',
        '2008-01-05 00:00:00'),
       (39, 8, 'THERON', 'Charlize', 'F', '1975-08-07 00:00:00',
        'Son adolescence a ??t?? endeuill??e par la mort de son p??re, tu?? sous ses yeux par sa m??re, en ??tat de l??gitime d??fense, alors qu\'il ??tait sous l\'emprise de l\'alcool.\r\n\r\nCe qui n\'emp??cha nullement la jeune fille de tout mettre en ??uvre, activement soutenue par sa m??re, pour parvenir ?? un certain accomplissement, d\'abord via des cours de danse et un travail de mannequin, puis par des cours de th????tre.\r\n\r\nLa cons??cration est venue avec l\'Oscar de la meilleure actrice en 2003, r??compense d??cern??e le 29 f??vrier 2004, pour son r??le de la tueuse en s??rie Aileen Wuornos dans Monster de Patty Jenkins.\r\n\r\nCe r??le, pour lequel l\'actrice n\'a pas h??sit?? ?? prendre quinze kilogrammes et supporter de longues heures durant le port d\'un dentier et de lentilles de contact pour masquer son regard couleur d\'azur, a ??t?? appr??ci?? outre-Atlantique.\r\n\r\nCharlize Theron est partie s??journer dans son pays natal aussit??t apr??s l\'obtention de cette r??compense, et y a ??t?? accueillie comme une h??ro??ne nationale, d\'autant plus facilement qu\'aucun Sud-Africain n\'avait jamais ??t?? distingu??, depuis 75 ans, par un Oscar. L\'effet de l\'obtention de cet oscar fut si retentissant,que Charlize Theron fut recu par l\'ancien pr??sident sud africain Nelson Mandela et par l\'actuel pr??sident Thabo Mbeki. De plus, beaucoup de nombreux parents en Afrique du Sud ont pr??nonm?? leurs filles Charlize,suite ?? la cons??cration de leur compatriote.',
        '2008-01-05 00:00:00'),
       (40, 2, 'Garrel', 'Louis', 'M', '1983-06-14 00:00:00',
        'Louis Garrel est le fils du r??alisateur Philippe Garrel et de l\'actrice et r??alisatrice Brigitte Sy, ainsi que le petit-fils de l???acteur Maurice Garrel. Il a une s??ur cadette, l\'actrice Esther Garrel et une demi-s??ur ??galement actrice Lena Garrel.\r\nFilmant les gens qui lui sont proches et sa propre famille, Philippe Garrel emploie tr??s t??t son fils devant la cam??ra. Le jeune Louis joue alors en compagnie de sa m??re et de son grand-p??re dans les films de son p??re, et tout sp??cialement dans Les Baisers de secours (1989) ?? l\'??ge de six ans.\r\nAdmirateur de Jean-Pierre L??aud, son parrain, l\'adolescent Louis Garrel s\'emploie ?? travailler ses capacit??s de com??dien dans les cours de th????tre de son coll??ge ainsi qu\'au conservatoire du Xe arrondissement de Paris1. Apr??s des ??tudes litt??raires pass??es au lyc??e F??nelon ?? Paris, il se d??tourne de la voie classique et renonce au baccalaur??at afin de poursuivre ses ??tudes au Conservatoire national sup??rieur d\'art dramatique de Paris, dont il sort dipl??m?? en 2004. Il multiplie parall??lement les exp??riences et les stages, dont celui qu\'il r??alise ?? la F??mis, avec Philippe Garrel comme ma??tre de stage, puis d??croche son premier v??ritable r??le au cin??ma en 2001, dans Ceci est mon corps de Rodolphe Marconi, avec Jane Birkin.\r\nLouis Garrel poursuit sa carri??re au cin??ma en tournant notamment dans deux ??vocations de mai 68 : Innocents - The Dreamers de Bernardo Bertolucci en 2003 avec Eva Green et Les Amants r??guliers de Philippe Garrel en 2005. C\'est pour ce dernier film qu\'il obtient en 2006 deux r??compenses : l\'??toile d\'or de la r??v??lation masculine d??cern??e par l???Acad??mie de la presse du cin??ma fran??ais et le C??sar du meilleur espoir masculin.\r\nIl devient l\'acteur f??tiche du cin??aste Christophe Honor??, avec lequel il collabore ?? cinq reprises dans les longs-m??trages Ma m??re (2004), adaptation du roman ??ponyme de Georges Bataille avec Isabelle Huppert, Dans Paris (2006), aux c??t??s de Romain Duris, Les Chansons d\'amour (2007), film pour lequel il d??voile aussi des talents de chanteur, La Belle Personne (2008), Non ma fille tu n\'iras pas danser (2009) et enfin, Les Bien-aim??s (2011). En 2007, il est ??galement ?? l\'affiche d???Actrices, le second film de Valeria Bruni-Tedeschi.',
        '2019-01-14 00:00:00');
/*!40000 ALTER TABLE `vip`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 15:25:37
