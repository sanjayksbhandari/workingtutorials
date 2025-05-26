-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (x86_64)
--
-- Host: localhost    Database: java_tutorials
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Java Basics','Learn the fundamentals of Java programming, starting from basic concepts to advanced topics. This course is designed for beginners and covers everything you need to master Java.');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjs3c7skmg8bvdddok5lc7s807` (`course_id`),
  CONSTRAINT `FKjs3c7skmg8bvdddok5lc7s807` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'Understand the basic concepts and history of Java and why it is one of the most popular programming languages.','Introduction to Java',NULL,1),(2,'Learn how to set up the Java development environment on your computer.','Setting up the Environment',NULL,1),(3,'Dive into the basic syntax of Java and learn how to write your first program.','Basic Java Syntax',NULL,1),(4,'Learn about different data types and how to declare variables in Java.','Data Types and Variables',NULL,1),(5,'Explore the different types of operators available in Java.','Operators in Java',NULL,1),(6,'Learn how to control the flow of your program using decision-making and looping statements.','Control Flow Statements',NULL,1),(7,'Understand how to work with arrays in Java.','Arrays in Java',NULL,1),(8,'Learn the principles of OOP and how they are implemented in Java.','Object-Oriented Programming (OOP)',NULL,1),(9,'Learn how to handle runtime errors in Java.','Exception Handling',NULL,1),(10,'Learn how to read and write data to files in Java.','File Handling',NULL,1),(11,'Explore the Java Collections Framework and its various classes and interfaces.','Java Collections Framework',NULL,1),(12,'Learn how to work with multiple threads in Java.','Multithreading in Java',NULL,1);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `correct_answer` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `lesson_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi10d7n4lf738sm3mon21aubik` (`lesson_id`),
  CONSTRAINT `FKi10d7n4lf738sm3mon21aubik` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `lesson_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKie3l7jgy01eohf5lyafc6qj1b` (`lesson_id`),
  CONSTRAINT `FKie3l7jgy01eohf5lyafc6qj1b` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Java is a high-level, class-based, object-oriented programming language. It is designed to be platform-independent, making it possible to compile on one platform and run on another.\nExample:\nCompile on Windows and execute on Linux.','What is Java?',1),(2,'Java offers features like platform independence (Write Once, Run Anywhere), robustness, security, portability, multithreading, and dynamic behavior.\nExample:\nJava\'s garbage collection ensures automatic memory management.','Features of Java',1),(3,'Java was developed by James Gosling at Sun Microsystems in 1995. Initially called Oak, it was renamed to Java and released as JDK 1.0 in 1996.\nExample:\nJava\'s evolution includes versions like JDK 1.0, 1.2, and Java 8 (with Streams).','History of Java',1),(4,'Java is widely used in web development, Android apps, enterprise software, and big data technologies like Hadoop.\nExample:\nApplications like WhatsApp (Android) and banking systems use Java.','Real-world Applications of Java',1),(5,'The JDK is essential for Java development. Download it from Oracle or OpenJDK\'s official website.\nExample:\nVerify installation using \"java -version\" after installing JDK 17.','Installing JDK (Java Development Kit)',2),(6,'Set JAVA_HOME to the JDK installation directory and add it to the PATH variable.\nExample:\nOn Windows, set JAVA_HOME=C:\\Program Files\\Java\\jdk-17.','Setting up Environment Variables',2),(7,'Popular IDEs for Java include IntelliJ IDEA, Eclipse, and Visual Studio Code.\nExample:\nCreate a new project in IntelliJ IDEA to start developing Java applications.','Installing IDEs for Java',2),(8,'The Hello World program is a beginner\'s first step.\nExample:\n```java\npublic class HelloWorld {\n    public static void main(String[] args) {\n        System.out.println(\"Hello, World!\");\n    }\n}\n```','Hello World Program',3),(9,'A Java program includes a class, main method, and statements.\nExample:\n```java\npublic class Example {\n    public static void main(String[] args) {\n        System.out.println(\"Structure of a Java Program!\");\n    }\n}\n```','Structure of a Java Program',3),(10,'Reserved keywords like class, public, static, void, and int define Java\'s structure.\nExample:\nThe keyword \"class\" is used to define a class.','Java Keywords',3),(11,'Comments document your code. Java supports single-line (//) and multi-line (/* */) comments.\nExample:\n```java\n// Single-line comment\n/* Multi-line\ncomment */\n```','Comments in Java',3),(12,'Java has 8 primitive types: byte, short, int, long, float, double, char, and boolean.\nExample:\n```java\nint age = 25;\nfloat price = 19.99f;\nboolean isAvailable = true;\n```','Primitive Data Types',4),(13,'Non-primitive types include arrays, classes, and Strings.\nExample:\n```java\nString name = \"Java\";\nint[] numbers = {1, 2, 3};\n```','Non-Primitive Data Types',4),(14,'Variables are declared and initialized with data types.\nExample:\n```java\nint x; // Declaration\nx = 10; // Initialization\nint y = 20; // Declaration and Initialization\n```','Variable Declaration and Initialization',4),(15,'Convert data types using implicit or explicit casting.\nExample:\n```java\nint x = 10;\ndouble y = x; // Implicit casting\ndouble z = 5.5;\nint w = (int) z; // Explicit casting\n```','Type Casting and Type Conversion',4),(16,'Operators for calculations include +, -, *, /, and %.\nExample:\n```java\nint a = 10;\nint b = 3;\nSystem.out.println(a + b); // 13\nSystem.out.println(a % b); // 1\n```','Arithmetic Operators',5),(17,'Compare values using >, <, >=, <=, ==, and !=.\nExample:\n```java\nint a = 5, b = 10;\nSystem.out.println(a > b); // false\nSystem.out.println(a == b); // false\n```','Relational Operators',5),(18,'Combine or negate expressions using &&, ||, and !.\nExample:\n```java\nboolean x = true, y = false;\nSystem.out.println(x && y); // false\nSystem.out.println(!x); // false\n```','Logical Operators',5),(19,'Assign values with =, +=, -=, *=, and /=.\nExample:\n```java\nint a = 5;\na += 3; // a = 8\n```','Assignment Operators',5),(20,'Perform bit-level operations with &, |, ^, ~, <<, >>, >>>.\nExample:\n```java\nint a = 5, b = 3;\nSystem.out.println(a & b); // 1\n```','Bitwise Operators',5),(21,'Make decisions using if-else.\nExample:\n```java\nint age = 18;\nif (age >= 18) {\n    System.out.println(\"Eligible to vote.\");\n} else {\n    System.out.println(\"Not eligible to vote.\");\n}\n```','if-else Statements',6),(22,'Handle multiple conditions using switch-case.\nExample:\n```java\nint day = 3;\nswitch (day) {\n    case 1:\n        System.out.println(\"Monday\");\n        break;\n    case 2:\n        System.out.println(\"Tuesday\");\n        break;\n    default:\n        System.out.println(\"Other day\");\n}\n```','switch-case Statements',6),(23,'Repeat tasks using for, while, or do-while loops.\nExample:\n```java\nfor (int i = 0; i < 5; i++) {\n    System.out.println(i);\n}\n```','Loops in Java',6),(24,'Alter loop execution using break and continue.\nExample:\n```java\nfor (int i = 0; i < 5; i++) {\n    if (i == 2) continue;\n    if (i == 4) break;\n    System.out.println(i);\n}\n```','Break and Continue',6),(25,'Arrays are collections of elements of the same type.\nExample:\n```java\nint[] numbers = {1, 2, 3};\nSystem.out.println(numbers[0]); // Output: 1\n```','Introduction to Arrays',7),(26,'Create arrays with square brackets.\nExample:\n```java\nint[] arr = new int[5];\narr[0] = 1;\n```','Declaring and Initializing Arrays',7),(27,'Access array elements using loops.\nExample:\n```java\nfor (int num : numbers) {\n    System.out.println(num);\n}\n```','Iterating through Arrays',7),(28,'Sort, search, or manipulate arrays.\nExample:\n```java\nArrays.sort(numbers);\nSystem.out.println(Arrays.toString(numbers));\n```','Common Array Operations',7),(29,'OOP is a programming paradigm based on objects that contain data and behavior.\nExample:\n```java\nclass Car {\n    String color;\n    void drive() {\n        System.out.println(\"Car is driving\");\n    }\n}\n```','What is OOP?',8),(30,'A class is a blueprint, and an object is an instance of the class.\nExample:\n```java\nCar myCar = new Car();\nmyCar.color = \"Red\";\nmyCar.drive();\n```','Classes and Objects',8),(31,'Constructors initialize objects and have the same name as the class.\nExample:\n```java\nclass Car {\n    Car() {\n        System.out.println(\"Car object created\");\n    }\n}\nCar myCar = new Car();\n```','Constructors',8),(32,'Inheritance enables a child class to inherit properties from a parent class.\nExample:\n```java\nclass Animal {\n    void eat() {\n        System.out.println(\"Eating\");\n    }\n}\nclass Dog extends Animal {\n    void bark() {\n        System.out.println(\"Barking\");\n    }\n}\nDog d = new Dog();\nd.eat();\nd.bark();\n```','Inheritance in Java',8),(33,'Polymorphism allows a method to perform different tasks based on the object.\nExample:\n```java\nclass Animal {\n    void makeSound() {\n        System.out.println(\"Animal sound\");\n    }\n}\nclass Dog extends Animal {\n    void makeSound() {\n        System.out.println(\"Bark\");\n    }\n}\nAnimal a = new Dog();\na.makeSound();\n```','Polymorphism',8),(34,'Abstraction hides implementation details and shows only functionality.\nExample:\n```java\nabstract class Shape {\n    abstract void draw();\n}\nclass Circle extends Shape {\n    void draw() {\n        System.out.println(\"Drawing Circle\");\n    }\n}\nShape s = new Circle();\ns.draw();\n```','Abstraction',8);
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `content` longtext,
  `difficulty_level` varchar(50) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
INSERT INTO `tutorials` VALUES (1,'Java Basics','Introduction to Java programming language','Content for Java basics tutorial goes here...','Beginner','Core Java','2025-05-05 07:44:40'),(2,'Object-Oriented Programming in Java','Learn about classes, objects, inheritance, etc.','Content for OOP tutorial goes here...','Intermediate','Core Java','2025-05-05 07:44:40'),(3,'Java Collections Framework','Learn about Lists, Sets, Maps, etc.','Content for collections tutorial goes here...','Intermediate','Core Java','2025-05-05 07:44:40');
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6.DFiVitTMhcSS5m','ADMIN','admin@example.com','2025-05-05 07:44:55'),(2,'user','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6.DFiVitTMhcSS5m','USER','user@example.com','2025-05-05 07:44:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'java_tutorials'
--

--
-- Dumping routines for database 'java_tutorials'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-26 14:34:43
