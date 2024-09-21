//
//  ViewController.swift
//  ContactApp
//
//  Created by iOSLab on 21/09/24.
//

import UIKit
struct Contact {
    var name: String
    var phone: String
    var email: String
    var companyName: String
}
class ViewController: UIViewController {
    @IBOutlet weak var initialCircle: UIView!
    @IBOutlet weak var initialLabel: UILabel!
    
    
    let mockContact = Contact (
        name: "Thiago",
        phone: "1 - 790 - 736 - 8031",
        email: "thiagoassis642@gmail.com",
        companyName: "kumon"
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        initialCircle.layer.borderWidth = 1
        initialCircle.layer.borderColor = UIColor.white.cgColor
        initialLabel.text = getInitials(from: mockContact.name)
    }
    
    public func getInitials(from name: String) -> String {
        let words = name.split(separator: " ")
        let firstName = words.first!.description
        let lastName = words.last!.description
        
        return firstName.first!.description + lastName.first!.description
    }

}

