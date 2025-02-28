//
//  NotesViewModel.swift
//  Notex
//
//  Created by Tanmay . on 25/02/25.
//

import CoreData
import Foundation


@MainActor
final class NotesViewModel: ObservableObject {
    @Published var categories: [Category] = []
    private let context = CoreDataManager.shared.context
    
    init() {
        
    }

    // Function to fetch categories:
    func fetchCategories() {
        let request = NSFetchRequest<Category>(entityName: "Category")
        do {
            categories = try context.fetch(request)
        } catch {
            print("There was an error fetching categories: \(error.localizedDescription)")
        }
    }
    
    // Function to fetch subcategories for a given category:
    func fetchSubcategory(for category: Category) -> [Subcategory] {
        if let subcategory = category.toSubcategories?.allObjects as? [Subcategory] {
            return subcategory.sorted{ $0.name! < $1.name! }
        }
        return []
    }
    
    

    
}
