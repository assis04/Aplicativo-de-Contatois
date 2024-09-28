//
//  ViewController.swift
//  ContactApp
//
//  Created by iOSLab on 21/09/24.
//

import UIKit
class ContactDatailViewControler: UIViewController {
    @IBOutlet weak var initialCircle: UIView!
    @IBOutlet weak var initialLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    
    
    let mockContact = Contact (
        name: "Thiago Assis da Silva",
        phone: "1 - 790 - 736 - 8031",
        email: "thiagoassis642@gmail.com",
        companyName: "kumon"
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialCircle.layer.borderWidth = 1
        initialCircle.layer.borderColor = UIColor.white.cgColor
        initialLabel.text = getInitials(from: mockContact.name)
        nameLabel.text = mockContact.name
        phoneLabel.text = mockContact.phone
        emailLabel.text = mockContact.email
        companyLabel.text = mockContact.companyName
        
    }
    
    public func getInitials(from name: String) -> String {
        let words = name.split(separator: " ")
        guard let firstName = words.first, let lastName = words.last else{
            return ""
        }
        
        guard let firstChar = firstName.first?.description, let lastChar = lastName.first?.description else {
            return ""
        }
        return firstChar + lastChar
    }
    
    public func getName(from name: String) -> String {
        return name
    }

}

