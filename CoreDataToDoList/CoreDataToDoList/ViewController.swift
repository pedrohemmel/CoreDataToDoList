//
//  ViewController.swift
//  CoreDataToDoList
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 14/04/22.
//

import UIKit

var toDoList: [[ToDoListItem]] = ToDoListItem().getAllItems()

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let view1 = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view1.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view1.delegate = self
        view1.dataSource = self
        
        view1.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view1.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = view1.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "oi \(indexPath.row + 1)"
        return cell
    }
    
}




