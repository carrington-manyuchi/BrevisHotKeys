//
//  HotKeyModel.swift
//  BrevisHotKeys
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import Foundation

struct HotKeyModel: Identifiable {
    let id: UUID = UUID()
    
    let modifiers: [Modifier]
    
    let character: String
    let text: String
    
    var description: String {
        var result: String = ""
        for modifier in modifiers {
            result += modifier.rawValue
        }
        
        result += " \(character.capitalized)"
        return result
    }
}
