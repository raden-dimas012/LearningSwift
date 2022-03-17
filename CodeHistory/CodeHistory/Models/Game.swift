//
//  Game.swift
//  CodeHistory
//
//  Created by Raden Dimas on 17/03/22.
//

import Foundation

struct Game {
    private(set) var guesses = [Question: Int]()
    private let questions = Question.allQuestions.shuffled()
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
//        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
