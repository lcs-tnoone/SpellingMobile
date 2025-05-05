//
//  Filtering.swift
//  SpellingMobile
//
//  Created by Thomas Noone on 2025-05-05.
//

import Foundation

func Filtering (
    originalList: [Result],
    on desiredOutcome: Outcome
) -> [Result] {
    //SEQUENCE
    
    //SELECTION
    //0. See if the user selected "All results"
    if desiredOutcome == .undetermined {
        return originalList
    } else {
        // 1. Make a new empty array
        var filteredHistory: [Result] = []
        // 2.Iterate over each item
        //    In the original array
        //    and decide whether to
        //    copy it to the filtered array
        
        for foodItem in originalList {
            // 3. Decide whether to copy over
            // say "desiredOutcome" is
            // "incorrect"... we copy over only food items where the user made the wrong guess
            
            if foodItem.outcome == desiredOutcome {
                filteredHistory.append(foodItem)
            }
        }
        return filteredHistory
    }
}
