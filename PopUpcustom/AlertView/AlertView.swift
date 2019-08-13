//
//  AlertView.swift
//  PopUpcustom
//
//  Created by Ari Munandar on 07/08/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import Foundation
import UIKit

class AlertView: UIView {
    
    static let instante = AlertView()
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commit() {
        img.layer.cornerRadius = 30
        img.layer.borderColor = UIColor.white.cgColor
        img.layer.borderWidth = 2
        
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
    }
    
    enum AlertType {
        case success
        case failure
    }
    
    func showAlert(title: String, message: String, alertType: AlertType) {
        self.titleLabel.text = title
        self.messageLabel.text = message
        switch alertType {
        case .success:
            img.image = UIImage(named: "1" )
        case .failure:
            img.image = UIImage(named: "2" )
        default:
            <#code#>
        }
    }
}
