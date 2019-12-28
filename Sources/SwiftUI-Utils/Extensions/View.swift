//
//  File.swift
//  
//
//  Created by Daniel Pourhadi on 12/28/19.
//

import SwiftUI

enum Alignment {
    case leadingTop
    case trailingBottom
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorners(radius: radius, corners: corners))
    }
    
    var any: AnyView {
        return AnyView(self)
    }
    
    func centered(_ axis: Axis = .horizontal) -> some View {
        Stack(axis) {
            Spacer()
            self
            Spacer()
        }
    }
    
    func align(_ axis: Axis, _ alignment: Alignment) -> some View {
        if alignment == .leadingTop {
            return Stack(axis) {
                self
                Spacer()
                Spacer()
            }.any
        } else {
            return Stack(axis) {
                Spacer()
                Spacer()
                self
            }.any
        }
    }
}

struct RoundedCorners: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
