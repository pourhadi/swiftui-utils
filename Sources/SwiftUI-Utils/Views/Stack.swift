//
//  Stack.swift
//  
//
//  Created by Daniel Pourhadi on 12/28/19.
//

import SwiftUI

public struct Stack<Content> : View where Content : View {
        
    var body: AnyView
    
    @inlinable public init(_ stackType: Axis, spacing: CGFloat? = nil, @ViewBuilder content: () -> Content) {
        
        switch stackType {
        case .horizontal:
            self.body = AnyView(HStack(spacing: spacing, content: content))
        case .vertical:
            self.body = AnyView(VStack(spacing: spacing, content: content))
            
        }
    }
}

