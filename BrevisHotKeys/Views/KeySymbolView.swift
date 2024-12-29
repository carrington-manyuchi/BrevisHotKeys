//
//  KeySymbolView.swift
//  BrevisHotKeys
//
//  Created by Manyuchi, Carrington C on 2024/12/29.
//

import SwiftUI

struct KeySymbolView: View {
    var body: some View {
        let midIndexInt = Modifier.allCases.count / 2 + 1
        
        HStack(alignment: .top) {
            KeySymbolViewColumn(lowerIndexInt: 0, upperIndexInt: midIndexInt)
            KeySymbolViewColumn(lowerIndexInt: midIndexInt, upperIndexInt: Modifier.allCases.count)
        }
    }
}

struct KeySymbolViewColumn: View {
    
    let lowerIndexInt: Int
    let upperIndexInt: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(lowerIndexInt..<upperIndexInt, id: \.self) { i in
                KeyValueRow(modifier: Modifier.allCases[i])
            }
        }
        .frame(maxWidth: .infinity)
    }
}


struct KeyValueRow: View {
    let modifier: Modifier
    
    // TODO: Use Theme
    let modifierFont: Font = .body
    
    var body: some View {
        HStack {
            Text("\(modifier.rawValue) = \(modifier.description)")
                .font(modifierFont)
        }
    }
}

#Preview {
    KeySymbolView()
}
