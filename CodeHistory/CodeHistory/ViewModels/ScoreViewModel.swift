//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Raden Dimas on 17/03/22.
//


import SwiftUI

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
