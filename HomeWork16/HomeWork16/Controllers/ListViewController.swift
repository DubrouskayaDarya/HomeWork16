//
//  ViewController.swift
//  HomeWork16
//
//  Created by Дарья Дубровская on 9.02.22.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let personsProvider: PersonsProviderType = PersonsProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController,
            let index = (sender as? IndexPath)?.row {
            let person = personsProvider.persons[index]
            vc.person = person
        }
    }
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsProvider.persons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PersonDetailCellIdentifier") else { return UITableViewCell() }
        let person = personsProvider.persons[indexPath.row]
        cell.textLabel?.text = "\(person.name) \(person.surName)"
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailViewControllerSegueIdentifier", sender: indexPath)
    }
}
