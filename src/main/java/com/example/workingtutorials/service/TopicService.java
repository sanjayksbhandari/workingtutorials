package com.example.workingtutorials.service;

import com.example.workingtutorials.model.Topic;
import com.example.workingtutorials.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopicService {

    @Autowired
    private TopicRepository topicRepository;

    public List<Topic> getTopicsByLessonId(Long lessonId) {
        return topicRepository.findByLessonId(lessonId);
    }
}