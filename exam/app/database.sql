-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: std-mysql    Database: std_2566_exam
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_genres`
--

DROP TABLE IF EXISTS `book_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genres` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`genre_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `book_genres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `book_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genres`
--

LOCK TABLES `book_genres` WRITE;
/*!40000 ALTER TABLE `book_genres` DISABLE KEYS */;
INSERT INTO `book_genres` VALUES (1,1),(3,1),(16,1),(17,1),(18,1),(5,3),(6,3),(7,3),(1,9),(2,11);
/*!40000 ALTER TABLE `book_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `year` year(4) NOT NULL,
  `publishing` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `look` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `look` (`look`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`look`) REFERENCES `cover` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Острые предметы','Камилла Паркер, не особо удачливый репортер одной из не особо успешных газет Чикаго, мечтает о блестящей карьере. И вот девушке выпадает счастливый шанс, способный резко повысить ее журналистский статус, - Камиллу посылают корреспондентом в маленький городок, где жертвой маньяка стали несколько малолетних девочек. Ее задача выдать читателям сенсационное сообщение с места событий. Дело в том, что Камилла в этом городе родилась и выросла, а потому кому, как не ей, легче других найти общий язык с жителями и выяснить нюансы расследования. Но погружение в страшную реальность провинциальной жизни оборачивается для нее цепью кошмаров, достойных кисти Иеронима Босха...',2021,'Азбука','Флинн Гиллиан',384,NULL),(2,'Божественная комедия','В годы политического изгнания, на «половине жизненного пути», Данте создал бессмертную «Божественную комедию», величайший памятник поэтической культуры и настоящую энциклопедию средневекового мировоззрения. Автор поэмы представлен в ней как человек, удостоившийся Божьей милости совершить путешествие к Господу через три царства загробного мира — путешествие от мрачного неблагополучия греховности и сомнений к счастью истины и светлого идеала.',2023,'Эксмо','Данте Алигьери',464,NULL),(3,'Охотничий дом','В длинные новогодние праздники компания старинных друзей отправляется в шотландскую глушь. Встречать Новый год вместе – традиция, которая тянется еще с университетских лет. Сейчас им за тридцать, их жизненные пути постепенно расходятся, но традиция неизменно, и в конце каждого года друзья собираются вместе в каком-нибудь необычном и всегда новом месте. В этот раз они отправляются в уединенное поместье в Шотландии, где кроме них, как им обещано, не будет никого. Несколько дней среди потрясающих по красоте пейзажей, в компании лучших друзей, знающих друг друга как облупленных – что может быть лучше? Или хуже?.. В новогоднюю ночь один из них исчезнет. А под утро начнется снегопад, который надежно изолирует поместье от остального мира. Старинная китайская поговорка гласит: держи друзей близко к себе, а врагов еще ближе. Но иногда такая близость может обернуться трагедий. «Охотничий дом» – герметичный, в духе Агаты Кристи, детектив с психологическим, в духе Таны Френч, погружением в бездны человеческой природы.',2020,'Фантом Пресс','Люси Фоли',384,NULL),(5,'Анна Каренина','«Анна Каренина» — роман Льва Толстого о трагической любви замужней дамы Анны Карениной и блестящего офицера Алексея Вронского на фоне счастливой семейной жизни дворян Константина Лёвина и Кити Щербацкой.В романе представлена масштабная картина нравов и быта дворянской среды Петербурга и Москвы второй половины XIX века. В произведении сочетаются философские размышления авторского alter ego Лёвина с передовыми в русской литературе психологическими зарисовками, а также сцены из жизни крестьян.',2024,'Манн, Иванов и Фербер','Толстой Л. Н.',992,NULL),(6,'Капитанская дочка','«Капитанская дочка» представляет собой исторический роман (в некоторых источниках – повесть), написанный А.С. Пушкиным. Автор повествует нам о зарождении и развитии большого и сильного чувства между молодым знатным офицером и дочерью коменданта крепости. Все это происходит на фоне восстания Емельяна Пугачева и создает для влюбленных дополнительные преграды и трудности в жизни.',2023,'Эксмо','Пушкин А. С.',384,NULL),(7,'Град обреченный','Главный герой, Андрей Воронин, попадает в Город, где действует всеобщее право на разнообразный труд. Он пробует себя в разных профессиях и оказывается в сложных, подчас противоречивых жизненных ситуациях. В чем же состоит предназначение загадочного Городского Эксперимента, сталкивающего друг с другом людей, выдернутых из разных временных пластов?Или это тот случай, когда правильная постановка вопроса гораздо важнее ответа?',2023,'Neoclassic','Аркадий и Борис Стругацкие',544,NULL),(16,'Молочные зубы','Познакомьтесь с Ханной, молчаливым семилетним ангелом в глазах любящего папочки, ведь он единственный, кто понимает ее. И все, чего хочется девочке, - жить с ним вдвоем долго и счастливо. Осталось лишь избавиться от назойливой мамочки. Идеальный план!  Познакомьтесь с Сюзеттой, когда-то перспективным дизайнером интерьеров, а теперь примерной женой и матерью, которая полностью посвятила себя семье и воспитанию Ханны. Но чем больше времени она проводит наедине с дочерью, тем больше ее уверенность, что с той что-то не так. Сюзетта начинает опасаться за собственную жизнь, но, похоже, отклонения в поведении дочери замечает только она…  Или ей это только кажется?...',2019,'АСТ','Зои Стейдж',384,NULL),(17,'Головоломка','В триллере Франка Тилье «Головоломка» герои Илан и Хлоэ, профессиональные охотники за сокровищами, внедряются в таинственную игру, где главный приз составляет триста тысяч евро, а цена ее — человеческая жизнь. Правила игры им неизвестны, они знают лишь ее название: «Паранойя». В горах на территории заброшенной психиатрической лечебницы восемь участников должны бросить вызов своим самым потаенным страхам. Чтобы обрести ключ от заветного сейфа с деньгами, нужно собрать десять черных хрустальных лебедей. Но осторожно: цена такой находки — жизнь. Ваша жизнь.',2024,'Азбука','Франк Тилье',352,NULL),(18,'Снеговик','Уже несколько лет в тот день, когда выпадает первый снег, в Норвегии бесследно исчезают замужние женщины. Невинная детская игра в снеговика оборачивается кошмаром, а для Харри Холе погоня за серийным убийцей становится охотой на тень. Преступник будто дразнит старшего инспектора, обретая все новые и новые обличья...',2024,'Азбука','Ю Несбё',544,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cover`
--

DROP TABLE IF EXISTS `cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `md5hash` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cover`
--

LOCK TABLES `cover` WRITE;
/*!40000 ALTER TABLE `cover` DISABLE KEYS */;
/*!40000 ALTER TABLE `cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `book` (`book`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`book`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Детектив'),(2,'Фантастика'),(3,'Роман'),(4,'Комедия'),(5,'Сказка'),(6,'Повесть'),(7,'Трагедия'),(8,'Рассказ'),(9,'Драма'),(10,'Ужасы'),(11,'Поэма');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Администратор','Суперпользователь, имеет полный доступ к системе, в том числе к созданию и удалению книг.'),(2,'Модератор','Может редактировать данные книг и производить модерацию рецензий.'),(3,'Пользователь','Может оставлять рецензии.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','1','1','1',1),(2,'moderator','8d23cf6c86e834a7aa6eded54c26ce2bb2e74903538c61bdd5d2197997ab2f72','2','2','2',2),(3,'user','556d7dc3a115356350f1f9910b1af1ab0e312d4b3e4fc788d2da63668f36d017','3','3','3',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17  1:45:44
