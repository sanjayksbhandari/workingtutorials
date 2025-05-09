/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.workingtutorials.service;

import com.example.workingtutorials.model.Lesson;
import com.example.workingtutorials.repository.LessonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LessonService {

    @Autowired
    private LessonRepository lessonRepository;

    /**
     * Get all lessons.
     * 
     * @return List of lessons
     */
    public List<Lesson> getAllLessons() {
        return lessonRepository.findAll();
    }

    /**
     * Get a lesson by ID.
     * 
     * @param lessonId ID of the lesson
     * @return Lesson object if found
     */
    public Lesson getLessonById(Long lessonId) {
        Optional<Lesson> lesson = lessonRepository.findById(lessonId);
        return lesson.orElseThrow(() -> new RuntimeException("Lesson not found with ID: " + lessonId));
    }

    /**
     * Save a new lesson or update an existing one.
     * 
     * @param lesson Lesson object to save
     * @return Saved lesson object
     */
    public Lesson saveLesson(Lesson lesson) {
        return lessonRepository.save(lesson);
    }

    /**
     * Delete a lesson by ID.
     * 
     * @param lessonId ID of the lesson to delete
     */
    public void deleteLesson(Long lessonId) {
        if (!lessonRepository.existsById(lessonId)) {
            throw new RuntimeException("Lesson not found with ID: " + lessonId);
        }
        lessonRepository.deleteById(lessonId);
    }
}
