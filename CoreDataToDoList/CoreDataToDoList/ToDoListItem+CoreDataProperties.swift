//
//  ToDoListItem+CoreDataProperties.swift
//  CoreDataToDoList
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 14/04/22.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?

}

extension ToDoListItem : Identifiable {

}
