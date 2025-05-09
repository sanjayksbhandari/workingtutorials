/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.workingtutorials.service;

import com.example.workingtutorials.model.Quiz;
import com.example.workingtutorials.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class QuizService {

    @Autowired
    private QuizRepository quizRepository;

    public List<Quiz> getQuizzesByLessonId(Long lessonId) {
        return quizRepository.findByLessonId(lessonId);
    }

    public int calculateScore(Long lessonId, Map<String, String> answers) {
        List<Quiz> quizzes = getQuizzesByLessonId(lessonId);
        int score = 0;
        for (Quiz quiz : quizzes) {
            String userAnswer = answers.get(String.valueOf(quiz.getId()));
            if (quiz.getCorrectAnswer().equals(userAnswer)) {
                score++;
            }
        }
        return score;
    }
}
