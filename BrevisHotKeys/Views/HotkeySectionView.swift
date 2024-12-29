//
//  HotkeySectionView.swift
//  BrevisHotKeys
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import SwiftUI

struct HotkeySectionView: View {
    
    let hotkeyCategoryName: String
    let hotkeyModels: [HotKeyModel]
    let searchQuery: String
    
    // TODO: Use a theme
    let sectionHeaderFont: Font = .body
    let fontweight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red
    
    var filterHotkeyModels: [HotKeyModel] {
        hotkeyModels
    }
    
    var body: some View {
        
            if !filterHotkeyModels.isEmpty {
                Section {
                    ForEach(filterHotkeyModels) { hotkeyModel in
                                                
                        HotkeyRow(hotkeyModel: hotkeyModel, searchQuery: searchQuery)
                    }
                } header: {
                    Text(hotkeyCategoryName)
                        .font(sectionHeaderFont)
                        .fontWeight(fontweight)
                        .foregroundStyle(sectionHeaderColor)
                    
                }
            }
        
    }
}

#Preview {
    Form {
        HotkeySectionView(
            hotkeyCategoryName: "Navigation",
            hotkeyModels: [
                .init(
                    modifiers: [.command],
                    character: "1",
                    text: "Project"
                )
            ],
            searchQuery: ""
        )
    }
}
