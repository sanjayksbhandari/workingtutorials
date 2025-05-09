/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.workingtutorials.controller;

import com.example.workingtutorials.model.Course;
import com.example.workingtutorials.model.Lesson;
import com.example.workingtutorials.model.Topic;
import com.example.workingtutorials.service.CourseService;
import com.example.workingtutorials.service.LessonService;
import com.example.workingtutorials.service.TopicService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class LessonController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private LessonService lessonService;
    
    @Autowired
    private TopicService topicService;

    @GetMapping("/course/{courseId}")
    public String getCourseLessons(@PathVariable Long courseId, Model model) {
        Course course = courseService.getCourseById(courseId);
        model.addAttribute("course", course);
        model.addAttribute("selectedLesson", course.getLessons().get(0)); // Default to first lesson
        return "course";
    }
    
    @GetMapping("/lesson/{lessonId}")
    public String getLessonContent(@PathVariable Long lessonId, Model model) {
        Lesson lesson = lessonService.getLessonById(lessonId);
        List<Topic> topics = topicService.getTopicsByLessonId(lessonId);
        model.addAttribute("lesson", lesson);
        model.addAttribute("topics", topics);
        return "lesson";
    }
}
