//
//  ToDoListItem+CoreDataClass.swift
//  CoreDataToDoList
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 14/04/22.
//
//

import Foundation
import CoreData
import UIKit

@objc(ToDoListItem)
public class ToDoListItem: NSManagedObject {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func fetchItems()->[ToDoListItem]{
        var items: [ToDoListItem] = []
        do {
            items = try context.fetch(ToDoListItem.fetchRequest())
        } catch {}
        
        return items
    }
    
    func getAllItems() -> [[ToDoListItem]] {
        let aux = fetchItems()
        
        var lista: [ToDoListItem] = []
        
        var listaFinal: [[ToDoListItem]] = []
        
        for item in aux {
            lista.append(item)
        }
        
        listaFinal.append(lista)
        
        return listaFinal
    }
    
    func createItem(name: String) {
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        
        do {
            try context.save()
        } catch {
            
        }
    }
    
    func deleteItem(item: ToDoListItem) {
        context.delete(item)
        do {
            try context.save()
        } catch {
            
        }
        
    }
    
    func updateItem(item: ToDoListItem, newName: String) {
        item.name = newName
        
        do {
            try context.save()
        } catch {
            
        }
    }
    
    
}
