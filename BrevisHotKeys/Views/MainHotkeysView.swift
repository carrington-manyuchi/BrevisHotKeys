//
//  MainHotkeysView.swift
//  BrevisHotKeys
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import SwiftUI

struct MainHotkeysView: View {
    
    @State private var searchQuery: String = ""
    var vm: HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    
    var body: some View {
        NavigationView {
            Form {
                List(vm.hotkeyCategoryModels) { hotkeyCategory in
                    HotkeySectionView(
                        hotkeyCategoryName: hotkeyCategory.name,
                        hotkeyModels: hotkeyCategory.hotkeyModels,
                        searchQuery: searchQuery
                    )
                }
            }
            .navigationTitle("XCode HotKeys")
            .searchable(text: $searchQuery, prompt: "Search...")
            
            
            
        }
        KeySymbolView()
    }
}

#Preview {
    MainHotkeysView()
}
