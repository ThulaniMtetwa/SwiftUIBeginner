//
//  UILabelWrapper.swift
//  SwiftUIBeginner
//
//  Created by Thulani Mtetwa on 2023/09/12.
//

import UIKit
import SwiftUI


struct UILabelWrapper: UIViewRepresentable {
    var text: String
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}
