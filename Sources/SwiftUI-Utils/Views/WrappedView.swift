//
//  WrappedView.swift
//  
//
//  Created by Daniel Pourhadi on 12/28/19.
//

import SwiftUI

public struct WrappedUIView<V: UIView>: UIViewRepresentable {
    
    let initBlock: ()->V
    let updateBlock: ((_ uiView: V, _ context: UIViewRepresentableContext<WrappedUIView<V>>) -> Void)?
    
    public init(initBlock: @escaping ()->V, _ updateBlock:((_ uiView: V, _ context: UIViewRepresentableContext<WrappedUIView<V>>) -> Void)?) {
        self.initBlock = initBlock
        self.updateBlock = updateBlock
    }
    
    public func makeUIView(context: UIViewRepresentableContext<WrappedUIView<V>>) -> V {
        return initBlock()
    }
    
    public func updateUIView(_ uiView: V, context: UIViewRepresentableContext<WrappedUIView<V>>) {
        updateBlock?(uiView, context)
    }
    
    public typealias UIViewType = V

}
