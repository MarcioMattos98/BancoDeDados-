CREATE DATABASE  IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quiz`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogadores` (
  `id_jogador` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `pontuacao` int NOT NULL,
  `data_jogo` date NOT NULL,
  PRIMARY KEY (`id_jogador`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'João Silva',40,'2024-08-31'),(2,'Maria Oliveira',90,'2024-08-31'),(3,'Carlos Souza',31,'2024-08-31'),(4,'Ana Costa',87,'2024-08-31'),(5,'Pedro Santos',39,'2024-08-31'),(6,'Luiza Ramos',37,'2024-08-31'),(7,'Fernanda Lima',70,'2024-08-31'),(8,'Lucas Pereira',37,'2024-08-31'),(9,'Carla Fernandes',77,'2024-08-31'),(10,'Rafael Almeida',74,'2024-08-31'),(11,'Juliana Silva',41,'2024-08-31'),(12,'Bruno Rocha',80,'2024-08-31'),(13,'Paula Castro',81,'2024-08-31'),(14,'Gustavo Lima',64,'2024-08-31'),(15,'Mariana Costa',78,'2024-08-31'),(16,'Thiago Alves',98,'2024-08-31'),(17,'Larissa Moura',58,'2024-08-31'),(18,'Rodrigo Nunes',96,'2024-08-31'),(19,'Camila Barbosa',6,'2024-08-31'),(20,'Felipe Oliveira',44,'2024-08-31'),(21,'André Martins',1,'2024-08-31'),(22,'Gabriela Freitas',75,'2024-08-31'),(23,'Ricardo Sousa',72,'2024-08-31'),(24,'Beatriz Vieira',36,'2024-08-31'),(25,'Eduardo Figueiredo',65,'2024-08-31'),(26,'Aline Correia',18,'2024-08-31'),(27,'Leonardo Costa',95,'2024-08-31'),(28,'Patrícia Santos',20,'2024-08-31'),(29,'Henrique Gomes',17,'2024-08-31'),(30,'Sabrina Melo',25,'2024-08-31'),(31,'Vinícius Ramos',76,'2024-08-31'),(32,'Alice Azevedo',4,'2024-08-31'),(33,'Renato Moreira',92,'2024-08-31'),(34,'Clarissa Fernandes',49,'2024-08-31'),(35,'Hugo Brito',69,'2024-08-31'),(36,'Carolina Macedo',97,'2024-08-31'),(37,'Caio Ribeiro',80,'2024-08-31'),(38,'Vanessa Silva',8,'2024-08-31'),(39,'Marcelo Araújo',2,'2024-08-31'),(40,'Lorena Vieira',86,'2024-08-31'),(41,'Matheus Lima',23,'2024-08-31'),(42,'Isabela Oliveira',58,'2024-08-31'),(43,'Renan Santos',20,'2024-08-31'),(44,'Thaís Souza',28,'2024-08-31'),(45,'Fábio Costa',78,'2024-08-31'),(46,'Roberta Martins',10,'2024-08-31'),(47,'Leandro Ferreira',13,'2024-08-31'),(48,'Natália Borges',37,'2024-08-31'),(49,'Diego Cardoso',49,'2024-08-31'),(50,'Ana Clara Almeida',31,'2024-08-31'),(51,'Yuri Castro',9,'2024-08-31'),(52,'Priscila Costa',52,'2024-08-31'),(53,'Arthur Farias',36,'2024-08-31'),(54,'Débora Almeida',21,'2024-08-31'),(55,'Guilherme Souza',0,'2024-08-31'),(56,'Amanda Dias',35,'2024-08-31'),(57,'Vitor Mendes',76,'2024-08-31'),(58,'Larissa Campos',76,'2024-08-31'),(59,'Miguel Barros',51,'2024-08-31'),(60,'Luana Silva',27,'2024-08-31'),(61,'Fernando Araújo',86,'2024-08-31'),(62,'Marina Santos',46,'2024-08-31'),(63,'Otávio Moura',73,'2024-08-31'),(64,'Natasha Ribeiro',26,'2024-08-31'),(65,'Murilo Gomes',15,'2024-08-31'),(66,'Tatiane Freitas',96,'2024-08-31'),(67,'Davi Rocha',35,'2024-08-31'),(68,'Vanessa Martins',88,'2024-08-31'),(69,'Rodrigo Monteiro',33,'2024-08-31'),(70,'Bruna Pereira',5,'2024-08-31'),(71,'Andressa Fernandes',26,'2024-08-31'),(72,'Victor Siqueira',16,'2024-08-31'),(73,'Elaine Costa',3,'2024-08-31'),(74,'João Pedro Lima',68,'2024-08-31'),(75,'Verônica Cardoso',30,'2024-08-31'),(76,'Diogo Santana',46,'2024-08-31'),(77,'Thales Castro',40,'2024-08-31'),(78,'Milena Oliveira',64,'2024-08-31'),(79,'Eduardo Souza',1,'2024-08-31'),(80,'Janaina Araújo',15,'2024-08-31'),(81,'Cláudio Santos',70,'2024-08-31'),(82,'Brenda Lima',7,'2024-08-31'),(83,'Murilo Almeida',24,'2024-08-31'),(84,'Vitória Santos',99,'2024-08-31'),(85,'Raphael Medeiros',23,'2024-08-31'),(86,'Jéssica Farias',18,'2024-08-31'),(87,'Samuel Mendes',21,'2024-08-31'),(88,'Patrícia Cunha',53,'2024-08-31'),(89,'Breno Costa',4,'2024-08-31'),(90,'Roberto Martins',58,'2024-08-31'),(91,'Mônica Lopes',81,'2024-08-31'),(92,'Thiago Andrade',31,'2024-08-31'),(93,'Helena Oliveira',11,'2024-08-31'),(94,'Danilo Ferreira',64,'2024-08-31'),(95,'Mariana Lima',85,'2024-08-31'),(96,'Igor Rocha',36,'2024-08-31'),(97,'Nicole Pereira',25,'2024-08-31'),(98,'Luiz Henrique',19,'2024-08-31'),(99,'Juliana Barros',18,'2024-08-31'),(100,'Matheus Araújo',35,'2024-08-31'),(101,'Karine Souza',19,'2024-08-31'),(102,'Renata Costa',93,'2024-08-31'),(103,'Sandro Lima',10,'2024-08-31'),(104,'Tatiana Lopes',69,'2024-08-31'),(105,'Alan Farias',18,'2024-08-31'),(106,'Fabiana Almeida',83,'2024-08-31'),(107,'Pablo Freitas',63,'2024-08-31'),(108,'Sônia Martins',65,'2024-08-31'),(109,'Felipe Barros',38,'2024-08-31'),(110,'Érica Silva',96,'2024-08-31'),(111,'Gustavo Mendes',63,'2024-08-31'),(112,'Túlio Araújo',31,'2024-08-31');
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id_nivel` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(50) NOT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'Fácil'),(2,'Médio'),(3,'Difícil');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_nivel` int DEFAULT NULL,
  `id_tema` int DEFAULT NULL,
  `texto` text NOT NULL,
  `opcoes` text NOT NULL,
  `resposta_correta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nivel` (`id_nivel`),
  KEY `id_tema` (`id_tema`),
  CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`),
  CONSTRAINT `perguntas_ibfk_2` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (1,1,1,'Qual é o símbolo químico da água?','CO2,H2O,O2,NaCl','H2O'),(2,1,1,'Qual é o planeta mais próximo do Sol?','Marte,Netuno,Terra,Mercúrio','Mercúrio'),(3,1,1,'Qual é a unidade de medida da força no Sistema Internacional?','Pascal,Newton,Joule,Watt','Newton'),(4,1,1,'Qual é o maior órgão do corpo humano?','Coração,Pele,Intestino,Fígado','Pele'),(5,1,1,'Qual é o elemento químico mais abundante no universo?','Neônio,Hidrogênio,Carbono,Oxigênio','Hidrogênio'),(6,1,1,'Qual é a função da clorofila nas plantas?','Transpiração,Reprodução,Fotossíntese,Respiração','Fotossíntese'),(7,1,1,'Quem é conhecido como o pai da teoria da relatividade?','Nikola Tesla,Isaac Newton,Albert Einstein,Galileu Galilei','Albert Einstein'),(8,1,1,'Qual é o nome da partícula subatômica que tem carga positiva?','Elétron,Próton,Nêutron,Neutrino','Próton'),(9,2,1,'Qual é a velocidade da luz no vácuo?','150.000 km/s,200.000 km/s,100.000 km/s,300.000 km/s','300.000 km/s'),(10,2,1,'Qual é o tipo de ligação química que compartilha elétrons entre átomos?','Ligação de hidrogênio,Ligação metálica,Ligação covalente,Ligação iônica','Ligação covalente'),(11,2,1,'Qual é a teoria que descreve a formação do universo?','Teoria da Relatividade,Teoria das Cordas,Teoria da Evolução,Big Bang','Big Bang'),(12,2,1,'Qual é o nome da substância que acelera reações químicas?','Solvente,Catalisador,Inibidor,Reagente','Catalisador'),(13,2,1,'Qual é o principal gás responsável pelo efeito estufa?','Oxigênio,Dióxido de carbono,Nitrogênio,Hélio','Dióxido de carbono'),(14,2,1,'Qual é a principal função dos ribossomos na célula?','Divisão celular,Transporte de nutrientes,Respiração celular,Síntese de proteínas','Síntese de proteínas'),(15,2,1,'Qual é o nome do processo pelo qual as plantas produzem seu alimento?','Respiração,Reprodução,Transpiração,Fotossíntese','Fotossíntese'),(16,2,1,'Qual é a unidade padrão de medida de massa no Sistema Internacional?','Grama,Libra,Onça,Quilograma','Quilograma'),(17,3,1,'Qual é a partícula responsável pela força eletromagnética?','Gluon,Fóton,Graviton,W','Fóton'),(18,3,1,'Qual é a constante fundamental usada para descrever a gravitação?','Constante de Planck,Constante de Boltzmann,Constante gravitacional,Constante de Avogadro','Constante gravitacional'),(19,3,1,'Qual é a teoria que explica a formação das galáxias e o universo primitivo?','Teoria da Relatividade Geral,Teoria das Cordas,Teoria da Gravitação Universal,Teoria do Big Bang','Teoria do Big Bang'),(20,3,1,'Qual é o nome da unidade de medida da energia?','Caloria,Watts,Joule,Volt','Joule'),(21,3,1,'Qual é o princípio que afirma que não é possível medir a posição e a velocidade de uma partícula com precisão simultaneamente?','Princípio de Heisenberg,Princípio de Exclusion,Princípio da Incerteza,Princípio de Pauli','Princípio da Incerteza'),(22,3,1,'Qual é a partícula responsável pela força forte no núcleo atômico?','Fóton,Neutrino,Gluon,Elétron','Gluon'),(23,3,1,'Qual é o conceito que descreve a expansão do universo?','Teoria das Cordas,Teoria da Expansão do Universo,Teoria da Relatividade,Teoria do Big Bang','Teoria da Expansão do Universo'),(24,3,1,'Qual é o nome da unidade de medida da intensidade luminosa?','Lúmen,Lux,Candela,Watts','Candela'),(25,1,2,'Qual é o maior continente do mundo?','África,América,Ásia,Europa','Ásia'),(26,1,2,'Qual é o rio mais longo do mundo?','Amazonas,Nilo,Yangtze,Mississippi','Nilo'),(27,1,2,'Qual é o maior oceano do planeta?','Índico,Atlântico,Ártico,Pacífico','Pacífico'),(28,1,2,'Qual é o deserto mais seco do mundo?','Gobi,Saara,Kalahari,Atacama','Atacama'),(29,1,2,'Qual é a capital da França?','Londres,Paris,Romá,Madrid','Paris'),(30,1,2,'Qual é o país mais populoso do mundo?','Estados Unidos,Indonésia,China,Índia','China'),(31,1,2,'Qual é o maior lago da África?','Alberta,Tanganica,Vítoria,Nyasa','Vítoria'),(32,1,2,'Qual é o país com maior área territorial?','Canadá,Estados Unidos,Rússia,Brasil','Rússia'),(33,2,2,'Qual é o nome da maior ilha do mundo?','Ilha de Borneo,Groenlândia,Nova Guiné,Sumatra','Groenlândia'),(34,2,2,'Qual é o maior país da América do Sul?','Colômbia,Brasil,Argentina,Peru','Brasil'),(35,2,2,'Qual é o ponto mais alto da Terra?','K2,Everest,McKinley,Kangchenjunga','Everest'),(36,2,2,'Qual é a capital do Japão?','Seul,Pequim,Hanoi,Tóquio','Tóquio'),(37,2,2,'Qual é a cadeia montanhosa que se estende pela América do Norte?','Andes,Rockies,Alpes,Apalaches','Rockies'),(38,2,2,'Qual é o menor país do mundo?','Mônaco,Nauru,Vaticano,San Marino','Vaticano'),(39,2,2,'Qual é o principal rio da África?','Zambeze,Volta,Nil,Senegal','Nilo'),(40,2,2,'Qual é a maior península do mundo?','Escandinávia,Arábica,Ibérica,Itálica','Escandinávia'),(41,3,2,'Qual é o nome da corrente oceânica que aquece o clima da Europa?','Corrente do Golfo,Corrente de Humboldt,Corrente de Kuroshio,Corrente do Labrador','Corrente do Golfo'),(42,3,2,'Qual é o deserto que cobre a maior parte da Austrália?','Saara,Atacama,Kalahari,Deserto da Austrália','Deserto da Austrália'),(43,3,2,'Qual é o nome da maior ilha vulcânica do mundo?','Sicília,Java,Havai,Sumatra','Havai'),(44,3,2,'Qual é a região geológica que inclui a maior parte da África?','Cinturão de Fósseis,Planalto do Maciço,Corredor do Saara,Planície do Nilo','Planalto do Maciço'),(45,3,2,'Qual é a montanha que separa a Europa da Ásia?','Montanhas dos Urais,Montanhas Rochosas,Alpes,Andes','Montanhas dos Urais'),(46,3,2,'Qual é o rio que forma a fronteira natural entre o Egito e o Sudão?','Juba,Nil,Congo,Zambeze','Nil'),(47,3,2,'Qual é o nome do grande lago salgado na Ásia Central?','Lago Baikal,Lago Aral,Lago Caspian,Lago Urmia','Lago Caspian'),(48,3,2,'Qual é o maior país da Oceania?','Papua Nova Guiné,Austrália,Nova Zelândia,Ilhas Fiji','Austrália'),(49,1,3,'Quem foi o primeiro presidente dos Estados Unidos?','George Washington,Abraham Lincoln,Thomas Jefferson,John Adams','George Washington'),(50,1,3,'Em que ano começou a Segunda Guerra Mundial?','1939,1941,1945,1929','1939'),(51,1,3,'Quem foi o líder da Revolução Francesa?','Napoleão Bonaparte,Maximilien Robespierre,Louis XVI,Georges Danton','Maximilien Robespierre'),(52,1,3,'Qual foi o primeiro homem a pisar na Lua?','Neil Armstrong,Michael Collins,Buzz Aldrin,Yuri Gagarin','Neil Armstrong'),(53,1,3,'Qual foi o nome do navio que afundou no Atlântico em 1912?','RMS Titanic,RMS Queen Mary,RMS Lusitania,RMS Britannic','RMS Titanic'),(54,1,3,'Quem foi o imperador romano que tornou o cristianismo a religião oficial do império?','Constantino,Augusto,Nero,Trajano','Constantino'),(55,1,3,'Qual foi o evento que marcou o fim da Idade Média?','Renascimento,Queda de Constantinopla,Revolução Industrial,Descobrimento da América','Queda de Constantinopla'),(56,1,3,'Qual foi o tratado que pôs fim à Primeira Guerra Mundial?','Tratado de Versalhes,Tratado de Paris,Tratado de Frankfurt,Tratado de Tordesilhas','Tratado de Versalhes'),(57,2,3,'Qual foi o nome da primeira colônia britânica na América?','Nova York,Virginia,Massachusetts,Plymouth','Virginia'),(58,2,3,'Qual foi o líder da União Soviética durante a Segunda Guerra Mundial?','Leon Trotsky,Joseph Stalin,Nikita Khrushchev,Lenin','Joseph Stalin'),(59,2,3,'Qual foi a principal causa da Revolução Americana?','Impostos excessivos,Restrições comerciais,Rebeliões locais,Divergências religiosas','Impostos excessivos'),(60,2,3,'Qual foi o movimento artístico que surgiu na Itália no século XV?','Barroco,Renascentismo,Romantismo,Realismo','Renascentismo'),(61,2,3,'Quem foi o líder da Revolução Cubana?','Fidel Castro,Ernesto Che Guevara,Raul Castro,Mario Monje','Fidel Castro'),(62,2,3,'Qual foi a principal causa da Primeira Guerra Mundial?','Assassinato do arquiduque Francisco Ferdinando,Tratado de Versalhes,Revolução Russa,Queda do Muro de Berlim','Assassinato do arquiduque Francisco Ferdinando'),(63,2,3,'Qual foi o nome do projeto de construção do canal que liga o Oceano Atlântico ao Pacífico?','Canal do Panamá,Canal de Suez,Canal da Mancha,Canal do Panamá','Canal do Panamá'),(64,2,3,'Qual foi a principal causa da Revolução Francesa?','Crise econômica,Ascensão de Napoleão,Invasão de países vizinhos,Revolta popular','Crise econômica'),(65,3,3,'Qual foi o tratado que marcou o fim da Guerra dos Cem Anos?','Tratado de Brétigny,Tratado de Paris,Tratado de Utrecht,Tratado de Versalhes','Tratado de Brétigny'),(66,3,3,'Quem foi o imperador romano durante o incêndio de Roma em 64 d.C.?','Nero,Augusto,Trajano,Constantino','Nero'),(67,3,3,'Qual foi a primeira civilização a utilizar a escrita cuneiforme?','Egípcios,Mesopotâmicos,Chineses,Indianas','Mesopotâmicos'),(68,3,3,'Qual foi o principal evento que levou à queda do Império Romano do Ocidente?','Invasões bárbaras,Queda de Constantinopla,Revolta dos Bagaudas,Renascimento','Invasões bárbaras'),(69,3,3,'Qual foi o nome da rebelião que ocorreu na China entre 1850 e 1864?','Revolta dos Boxers,Revolta Taiping,Revolta dos Ming,Revolta dos Opium','Revolta Taiping'),(70,3,3,'Qual foi a principal causa do declínio do Império Asteca?','Conquista espanhola,Revoltas internas,Seca prolongada,Invasão maia','Conquista espanhola'),(71,3,3,'Quem foi o líder da Revolução Russa de Outubro de 1917?','Leon Trotsky,Joseph Stalin,Nikita Khrushchev,Lenin','Lenin'),(72,3,3,'Qual foi o nome do projeto para a construção de uma nova cidade no Brasil na década de 1960?','Brasília,Niterói,Porto Alegre,São Paulo','Brasília'),(73,1,4,'Qual é a cor do cavalo branco de Napoleão?','Preto,Marrom,Branco,Gris','Branco'),(74,1,4,'Qual é a capital do Brasil?','São Paulo,Rio de Janeiro,Brasília,Salvador','Brasília'),(75,1,4,'Quem escreveu \"Dom Casmurro\"?','José de Alencar,Machado de Assis,Monteiro Lobato,Guimarães Rosa','Machado de Assis'),(76,1,4,'Qual é a moeda oficial dos Estados Unidos?','Euro,Libra,Dólar,Yuan','Dólar'),(77,1,4,'Qual é a maior floresta tropical do mundo?','Floresta Amazônica,Floresta de Sherwood,Floresta Negra,Floresta Boreal','Floresta Amazônica'),(78,1,4,'Quem pintou \"A Noite Estrelada\"?','Claude Monet,Pablo Picasso,Van Gogh,Rembrandt','Van Gogh'),(79,1,4,'Qual é a principal fonte de energia utilizada no Brasil?','Solar,Carvão,Hidrelétrica,Nuclear','Hidrelétrica'),(80,1,4,'Qual é o país conhecido como a Terra do Sol Nascente?','China,Coreia do Sul,Japão,Vietnã','Japão'),(81,2,4,'Qual é o símbolo químico do ouro?','Au,Ag,Fe,Hg','Au'),(82,2,4,'Quem foi o primeiro homem a vencer um prêmio Nobel?','Marie Curie,Albert Einstein,Henri Becquerel,Wilhelm Röntgen','Wilhelm Röntgen'),(83,2,4,'Qual é a capital da Austrália?','Sydney,Canberra,Melbourne,Brisbane','Canberra'),(84,2,4,'Qual é a língua oficial da Bélgica?','Holandês,Francês,Alemão,Inglês','Holandês'),(85,2,4,'Quem é o autor da obra \"A Divina Comédia\"?','Dante Alighieri,William Shakespeare,John Milton,Virgílio','Dante Alighieri'),(86,2,4,'Qual é o país com a maior população de falantes de espanhol?','Colômbia,Argentina,Peru,México','México'),(87,2,4,'Qual é o maior oceano do mundo?','Atlântico,Pacífico,Índico,Ártico','Pacífico'),(88,2,4,'Qual é o nome do famoso monumento na Índia construído por Shah Jahan?','Taj Mahal,Palácio de Versalhes,Grande Muralha,Angkor Wat','Taj Mahal'),(89,3,4,'Qual é o nome do estudo dos fósseis?','Paleontologia,Arqueologia,Geologia,Evolucionismo','Paleontologia'),(90,3,4,'Quem foi o primeiro astronauta a orbitar a Terra?','Yuri Gagarin,Neil Armstrong,Buzz Aldrin,Michael Collins','Yuri Gagarin'),(91,3,4,'Qual é o elemento químico com o símbolo \"Hg\"?','Mercúrio,Argônio,Neônio,Chumbo','Mercúrio'),(92,3,4,'Qual é a moeda oficial da Suíça?','Euro,Dólar,Franco Suíço,Libra','Franco Suíço'),(93,3,4,'Qual é o nome da maior cadeia montanhosa da América do Sul?','Andes,Apalaches,Rockies,Alpes','Andes'),(94,3,4,'Qual é o mais antigo dos sete maravilhas do mundo antigo?','Pirâmides de Gizé,Colossos de Rodes,Jardins Suspensos,Templo de Ártemis','Pirâmides de Gizé'),(95,3,4,'Qual é o nome da teoria que explica a origem do universo a partir de uma grande explosão?','Teoria do Big Bang,Teoria da Relatividade,Teoria da Evolução,Teoria das Cordas','Teoria do Big Bang'),(96,3,4,'Qual é o nome da cidade antiga que foi a capital do Império Bizantino?','Roma,Constantinopla,Atenas,Alexandria','Constantinopla');
/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking` (
  `id_ranking` int NOT NULL AUTO_INCREMENT,
  `id_jogador` int DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `pontuacao` int NOT NULL,
  `data_jogo` date NOT NULL,
  PRIMARY KEY (`id_ranking`),
  KEY `id_jogador` (`id_jogador`),
  CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `jogadores` (`id_jogador`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
INSERT INTO `ranking` VALUES (1,1,'João Silva',40,'2024-08-31'),(2,2,'Maria Oliveira',90,'2024-08-31'),(3,3,'Carlos Souza',31,'2024-08-31'),(4,4,'Ana Costa',87,'2024-08-31'),(5,5,'Pedro Santos',39,'2024-08-31'),(6,6,'Luiza Ramos',37,'2024-08-31'),(7,7,'Fernanda Lima',70,'2024-08-31'),(8,8,'Lucas Pereira',37,'2024-08-31'),(9,9,'Carla Fernandes',77,'2024-08-31'),(10,10,'Rafael Almeida',74,'2024-08-31'),(11,11,'Juliana Silva',41,'2024-08-31'),(12,12,'Bruno Rocha',80,'2024-08-31'),(13,13,'Paula Castro',81,'2024-08-31'),(14,14,'Gustavo Lima',64,'2024-08-31'),(15,15,'Mariana Costa',78,'2024-08-31'),(16,16,'Thiago Alves',98,'2024-08-31'),(17,17,'Larissa Moura',58,'2024-08-31'),(18,18,'Rodrigo Nunes',96,'2024-08-31'),(19,19,'Camila Barbosa',6,'2024-08-31'),(20,20,'Felipe Oliveira',44,'2024-08-31'),(21,21,'André Martins',1,'2024-08-31'),(22,22,'Gabriela Freitas',75,'2024-08-31'),(23,23,'Ricardo Sousa',72,'2024-08-31'),(24,24,'Beatriz Vieira',36,'2024-08-31'),(25,25,'Eduardo Figueiredo',65,'2024-08-31'),(26,26,'Aline Correia',18,'2024-08-31'),(27,27,'Leonardo Costa',95,'2024-08-31'),(28,28,'Patrícia Santos',20,'2024-08-31'),(29,29,'Henrique Gomes',17,'2024-08-31'),(30,30,'Sabrina Melo',25,'2024-08-31'),(31,31,'Vinícius Ramos',76,'2024-08-31'),(32,32,'Alice Azevedo',4,'2024-08-31'),(33,33,'Renato Moreira',92,'2024-08-31'),(34,34,'Clarissa Fernandes',49,'2024-08-31'),(35,35,'Hugo Brito',69,'2024-08-31'),(36,36,'Carolina Macedo',97,'2024-08-31'),(37,37,'Caio Ribeiro',80,'2024-08-31'),(38,38,'Vanessa Silva',8,'2024-08-31'),(39,39,'Marcelo Araújo',2,'2024-08-31'),(40,40,'Lorena Vieira',86,'2024-08-31'),(41,41,'Matheus Lima',23,'2024-08-31'),(42,42,'Isabela Oliveira',58,'2024-08-31'),(43,43,'Renan Santos',20,'2024-08-31'),(44,44,'Thaís Souza',28,'2024-08-31'),(45,45,'Fábio Costa',78,'2024-08-31'),(46,46,'Roberta Martins',10,'2024-08-31'),(47,47,'Leandro Ferreira',13,'2024-08-31'),(48,48,'Natália Borges',37,'2024-08-31'),(49,49,'Diego Cardoso',49,'2024-08-31'),(50,50,'Ana Clara Almeida',31,'2024-08-31'),(51,51,'Yuri Castro',9,'2024-08-31'),(52,52,'Priscila Costa',52,'2024-08-31'),(53,53,'Arthur Farias',36,'2024-08-31'),(54,54,'Débora Almeida',21,'2024-08-31'),(55,55,'Guilherme Souza',0,'2024-08-31'),(56,56,'Amanda Dias',35,'2024-08-31'),(57,57,'Vitor Mendes',76,'2024-08-31'),(58,58,'Larissa Campos',76,'2024-08-31'),(59,59,'Miguel Barros',51,'2024-08-31'),(60,60,'Luana Silva',27,'2024-08-31'),(61,61,'Fernando Araújo',86,'2024-08-31'),(62,62,'Marina Santos',46,'2024-08-31'),(63,63,'Otávio Moura',73,'2024-08-31'),(64,64,'Natasha Ribeiro',26,'2024-08-31'),(65,65,'Murilo Gomes',15,'2024-08-31'),(66,66,'Tatiane Freitas',96,'2024-08-31'),(67,67,'Davi Rocha',35,'2024-08-31'),(68,68,'Vanessa Martins',88,'2024-08-31'),(69,69,'Rodrigo Monteiro',33,'2024-08-31'),(70,70,'Bruna Pereira',5,'2024-08-31'),(71,71,'Andressa Fernandes',26,'2024-08-31'),(72,72,'Victor Siqueira',16,'2024-08-31'),(73,73,'Elaine Costa',3,'2024-08-31'),(74,74,'João Pedro Lima',68,'2024-08-31'),(75,75,'Verônica Cardoso',30,'2024-08-31'),(76,76,'Diogo Santana',46,'2024-08-31'),(77,77,'Thales Castro',40,'2024-08-31'),(78,78,'Milena Oliveira',64,'2024-08-31'),(79,79,'Eduardo Souza',1,'2024-08-31'),(80,80,'Janaina Araújo',15,'2024-08-31'),(81,81,'Cláudio Santos',70,'2024-08-31'),(82,82,'Brenda Lima',7,'2024-08-31'),(83,83,'Murilo Almeida',24,'2024-08-31'),(84,84,'Vitória Santos',99,'2024-08-31'),(85,85,'Raphael Medeiros',23,'2024-08-31'),(86,86,'Jéssica Farias',18,'2024-08-31'),(87,87,'Samuel Mendes',21,'2024-08-31'),(88,88,'Patrícia Cunha',53,'2024-08-31'),(89,89,'Breno Costa',4,'2024-08-31'),(90,90,'Roberto Martins',58,'2024-08-31'),(91,91,'Mônica Lopes',81,'2024-08-31'),(92,92,'Thiago Andrade',31,'2024-08-31'),(93,93,'Helena Oliveira',11,'2024-08-31'),(94,94,'Danilo Ferreira',64,'2024-08-31'),(95,95,'Mariana Lima',85,'2024-08-31'),(96,96,'Igor Rocha',36,'2024-08-31'),(97,97,'Nicole Pereira',25,'2024-08-31'),(98,98,'Luiz Henrique',19,'2024-08-31'),(99,99,'Juliana Barros',18,'2024-08-31'),(100,100,'Matheus Araújo',35,'2024-08-31'),(101,101,'Karine Souza',19,'2024-08-31'),(102,102,'Renata Costa',93,'2024-08-31'),(103,103,'Sandro Lima',10,'2024-08-31'),(104,104,'Tatiana Lopes',69,'2024-08-31'),(105,105,'Alan Farias',18,'2024-08-31'),(106,106,'Fabiana Almeida',83,'2024-08-31'),(107,107,'Pablo Freitas',63,'2024-08-31'),(108,108,'Sônia Martins',65,'2024-08-31'),(109,109,'Felipe Barros',38,'2024-08-31'),(110,110,'Érica Silva',96,'2024-08-31'),(111,111,'Gustavo Mendes',63,'2024-08-31'),(112,112,'Túlio Araújo',31,'2024-08-31'),(128,NULL,'Marcio C M',40,'2024-09-02'),(129,NULL,'Marcio C M',40,'2024-09-02'),(130,NULL,'marcio cm',80,'2024-09-02'),(131,NULL,'marcio cm',80,'2024-09-02'),(132,NULL,'mcm',60,'2024-09-05'),(133,NULL,'mcm',60,'2024-09-05'),(134,NULL,'Suelen',85,'2024-09-05'),(135,NULL,'Suelen',85,'2024-09-05'),(136,NULL,'Pedro',70,'2024-09-08'),(137,NULL,'Pedro',70,'2024-09-08'),(138,NULL,'Pedro Maiochi',99,'2024-09-08'),(139,NULL,'Pedro Maiochi',99,'2024-09-08'),(140,NULL,'Pedrinho',264,'2024-09-08'),(141,NULL,'Pedrinho',264,'2024-09-08');
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tema` (
  `id_tema` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Ciência'),(2,'Geografia'),(3,'História'),(4,'Conhecimentos Gerais');
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 10:23:46
