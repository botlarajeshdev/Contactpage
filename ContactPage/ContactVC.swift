//
//  ContactVC.swift
//  ContactPage
//
//  Created by Botla Rajesh on 26/06/26.
//

import UIKit

class ContactVC: UIViewController
{
    @IBOutlet weak var contactsTVC: UITableView!
    
    let contacts = ["Mahesh", "Krishna", "Ramesh", "Suresh", "Eshwar", "Ashok"]
    
    override func viewDidLoad()
    {
    
        super.viewDidLoad()
        contactsTVC.dataSource = self
        contactsTVC.delegate = self

    }
    
}
extension ContactVC: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact
        return cell
        
    }
}

extension ContactVC: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let contact = contacts[indexPath.row]
        print("You selected \(contact)")
    }
}
