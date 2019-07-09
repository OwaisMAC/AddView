//
//  AddViewProtocol.swift
//  AddView
//
//  Created by Owais Munawar on 3/29/19.
//  Copyright © 2019 The Dev. All rights reserved.
//

import Foundation
import UIKit

protocol AddStrengthView: UIViewController {
    func addStrengthView()
}

extension AddStrengthView{
    func addStrengthView(){
        let subViews = self.view.subviews.sorted(by: {$0.frame.origin.y < $1.frame.origin.y})
        guard subViews.count > 1 else { return }
        
        let firstView = subViews[0]
        let secondView = subViews[1]
        
        if let strengthView = Bundle.main.loadNibNamed("StrengthView", owner: nil, options: nil)?.first as? StrengthView{
            self.view.addSubview(strengthView)
            strengthView.translatesAutoresizingMaskIntoConstraints = false
            strengthView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            strengthView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            strengthView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
            let topConstraint:NSLayoutConstraint = strengthView.topAnchor.constraint(equalTo: firstView.bottomAnchor)
            let bottomConstraint:NSLayoutConstraint = strengthView.bottomAnchor.constraint(equalTo: secondView.topAnchor)
            topConstraint.priority = UILayoutPriority.init(rawValue: 1000)
            bottomConstraint.priority = UILayoutPriority.init(rawValue: 1000)
            
            topConstraint.isActive = true
            bottomConstraint.isActive = true
            
        }
        
    }
}
