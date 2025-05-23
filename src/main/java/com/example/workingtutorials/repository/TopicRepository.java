package com.example.workingtutorials.repository;

import com.example.workingtutorials.model.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {
    List<Topic> findByLessonId(Long lessonId);
}