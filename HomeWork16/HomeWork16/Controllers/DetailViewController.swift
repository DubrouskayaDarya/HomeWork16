//
//  DetailViewController.swift
//  HomeWork16
//
//  Created by Дарья Дубровская on 10.02.22.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person!

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var valuePhoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var valueEmailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.surName)"
        valuePhoneLabel?.text = person.phone
        valueEmailLabel?.text = person.email
        navigationController?.navigationBar.prefersLargeTitles = false
    }
}
