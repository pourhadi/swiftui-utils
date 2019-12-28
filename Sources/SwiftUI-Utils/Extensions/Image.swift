//
//  Image.swift
//  
//
//  Created by Daniel Pourhadi on 12/28/19.
//

import SwiftUI

extension Image {

    /// For using SF Pro symbols.
    public static func symbol(_ named: String, _ symbolConfiguration: UIImage.SymbolConfiguration = .unspecified) -> Self? {
        guard let img = UIImage(systemName: named, withConfiguration: symbolConfiguration) else {
            return nil
        }
        
        return Image(uiImage: img)
    }
}

