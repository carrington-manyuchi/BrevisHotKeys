//
//  Theme.swift
//  BrevisHotKeys
//
//  Created by Manyuchi, Carrington C on 2024/12/29.
//

import Foundation
import SwiftUI
import UIKit

#if os(iOS)
struct Theme {
    static let font: Font = .headline
    static let fontSecondary: Font = .body
    static let fontWeight: Font.Weight = .regular
    static let modifierFont: Font = .headline
    static let frameWidth: CGFloat? = nil
    static let frameHeight: CGFloat? = nil
    static let listSTyle = DefaultListStyle()
    static let sectionHeaderFont: Font = .body
    static let hotkeyWidth: CGFloat? = nil
    static let subTitleColor: Color = .red
    
    func layout( isIPad: Bool) -> AnyLayout {
        isIPad ? AnyLayout( VStackLayout(alignment: .leading)) : AnyLayout( HStackLayout(alignment: .center))
    }
}
#else
struct Theme {
    static let font: Font = .title
    static let fontSecondary: Font = .title
    static let fontWeight: Font.Weight = .semibold
    static let modifierFont: Font = .title
    static let frameWidth: CGFloat? = 900
    static let frameHeight: CGFloat? = 900
    static let listSTyle = SidebarListStyle()
    static let sectionHeaderFont: Font = .largeTitle
    static let hotkeyWidth: CGFloat? = 200
    static let subTitleColor: Color = .red
    
    func layout( isIPad: Bool) -> AnyLayout {
       AnyLayout(HStackLayout())
    }
}
#endif
