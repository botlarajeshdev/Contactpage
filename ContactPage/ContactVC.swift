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
    
    let contacts: [[String: String]] =
    [
        
        ["name": "Mahesh", "mobile": "88039263748"],
        ["name": "Krishna", "mobile": "88039263748"],
        ["name": "Saikiran", "mobile": "88039263748"],
        ["name": "Uday", "mobile": "88039263748"],
        ["name": "Lavan", "mobile": "88039263748"],
        ["name": "Aksahay", "mobile": "88039263748"],
        ["name": "Heema", "mobile": "88039263748"],
        ["name": "Ramu", "mobile": "88039263748"],
    
    ]
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactNamesCell", for: indexPath) as! contactNamesCell
        
    
        let contact = contacts[indexPath.row]
        
        cell.contactNameViewLbl.text = contact["name"]
        cell.contactNumberViewLbl.text = contact["mobile"]
        
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
