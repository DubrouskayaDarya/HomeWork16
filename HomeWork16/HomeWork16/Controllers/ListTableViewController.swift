//
//  ListTableViewController.swift
//  HomeWork16
//
//  Created by Дарья Дубровская on 10.02.22.
//

import UIKit

class ListTableViewController: UITableViewController {

    let personsProvider: PersonsProviderType = PersonsProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsProvider.persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 2 }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personsProvider.persons[section]
        return ("\(person.name) \(person.surName)")
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PersonContactsCellIdentifier") else { return UITableViewCell() }
        let person = personsProvider.persons[indexPath.row]

        switch indexPath.row {
        case 0: cell.textLabel?.text = "\(person.email)"
        case 1: cell.textLabel?.text = "\(person.phone)"
        default: break
        }

        if indexPath.row == 0 {
            cell.textLabel?.text = "\(person.email)"
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "\(person.phone)"
        }
        return cell
    }
}
