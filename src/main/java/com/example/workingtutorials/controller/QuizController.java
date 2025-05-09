/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.workingtutorials.controller;

import com.example.workingtutorials.model.Lesson;
import com.example.workingtutorials.model.Quiz;
import com.example.workingtutorials.service.LessonService;
import com.example.workingtutorials.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class QuizController {

    @Autowired
    private LessonService lessonService;

    @Autowired
    private QuizService quizService;

    @GetMapping("/quiz/{lessonId}")
    public String getQuiz(@PathVariable Long lessonId, Model model) {
        Lesson lesson = lessonService.getLessonById(lessonId);
        List<Quiz> quizzes = quizService.getQuizzesByLessonId(lessonId);
        model.addAttribute("lesson", lesson);
        model.addAttribute("quizzes", quizzes);
        return "quiz";
    }

    @PostMapping("/quiz/{lessonId}/submit")
    public String submitQuiz(@PathVariable Long lessonId, @RequestParam Map<String, String> answers, Model model) {
        // Handle quiz submission logic here
        // Example: Validate answers and calculate score
        int score = quizService.calculateScore(lessonId, answers);
        model.addAttribute("score", score);
        return "quiz-result";
    }
}
