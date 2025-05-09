INSERT INTO course (id, title, description) VALUES
(1, 'Java Basics', 'Learn the basics of Java programming.'),
(2, 'Spring Boot Introduction', 'Get started with Spring Boot.');

-- Lessons
INSERT INTO lesson (id, title, content, video_url, course_id) VALUES
(1, 'Introduction to Java', 'Java is a versatile programming language...', NULL, 1),
(2, 'Java Syntax', 'Learn about Java syntax and structure...', NULL, 1),
(3, 'Getting Started with Spring Boot', 'Spring Boot is a framework for building microservices...', NULL, 2);

-- Topics
INSERT INTO topic (id, title, content, lesson_id) VALUES
(1, 'What is Java?', 'Java is a high-level, class-based programming language...', 1),
(2, 'Java Features', 'Java is platform-independent, robust, and secure...', 1),
(3, 'Basic Syntax', 'Learn the basic syntax of Java programs...', 2),
(4, 'Annotations in Spring Boot', 'Spring Boot relies heavily on annotations...', 3);