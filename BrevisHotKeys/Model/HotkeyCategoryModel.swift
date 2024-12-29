//
//  HotKeyCategoryModel.swift
//  BrevisHotKeys
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import Foundation


struct HotkeyCategoryModel: Identifiable {
    let id: UUID = UUID()
    
    let name: String
    let hotkeyModels: [HotKeyModel]
    
}
