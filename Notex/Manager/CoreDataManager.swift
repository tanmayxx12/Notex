//
//  CoreDataManager.swift
//  Notex
//
//  Created by Tanmay . on 25/02/25.
//

import CoreData
import Foundation

class CoreDataManager {
    // Declaring a singleton:
    static let shared = CoreDataManager()
    let container: NSPersistentContainer
    var context: NSManagedObjectContext { container.viewContext }
    
    // Creating a privaet init:
    private init() {
        container = NSPersistentContainer(name: "NotesModel")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("There was an error loading CoreData: \(error.localizedDescription)")
            }
        }
    }
    
    func save() {
        do {
            try context.save()
        } catch {
            print("There was an error saving data to CoreData: \(error.localizedDescription)")
        }
    }
    
}
