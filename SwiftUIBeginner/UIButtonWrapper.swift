//
//  UIButtonWrapper.swift
//  SwiftUIBeginner
//
//  Created by Thulani Mtetwa on 2023/09/12.
//

import UIKit
import SwiftUI

struct UIButtonWrapper: UIViewRepresentable {
    var text: String
    func makeUIView(context: Context) -> UIButton {
        let label = UIButton()
        return label
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        uiView.titleLabel?.text = text
    }
}
