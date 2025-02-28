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
    @Published var notes: [Note] = []
    private let context = CoreDataManager.shared.context
    
    init() {
        
    }

    // MARK: - Function to Fetch Notes:
    func fetchNotes(for subcategory: NoteSubCategory) -> [Note] {
        let request = NSFetchRequest<Note>(entityName: "Note")
        request.predicate = NSPredicate(format: "subcategory == %@", subcategory.rawValue)
        request.sortDescriptors = [NSSortDescriptor(keyPath: \Note.timestamp, ascending: false)]
        
        do {
            notes = try context.fetch(request)
            return notes
        } catch {
            print("There was an error fetching notes: \(error.localizedDescription)")
            return []
        }
        
    }
    
    
    // MARK: - Note Operations
    func createNote(title: String, content: String, category: NoteCategory, subcategory: NoteSubCategory) {
        let newNote = Note(context: context)
        newNote.title = title
        newNote.content = content
        newNote.timestamp = Date()
        newNote.category = category.rawValue
        newNote.subcategory = subcategory.rawValue
        
        save()
    }
    
    
    
    // Function to save:
    func save() {
        do {
            try context.save()
        } catch {
            print("There was an error saving data: \(error.localizedDescription)")
        }
    }
    
}


// MARK: - Enums for Category and Subcategory:
enum NoteCategory: String {
    case general = "General Categories"
    case work = "Work And Productivity"
    case personalAndLifeStyle = "Personal And Lifestyle"
    case health = "Health And Fitness"
    case finance = "Finance And Planning"
    case shopping = "Shopping And Errands"
    case social = "Social And Relationships"
}

enum NoteSubCategory: String {
    // General:
    case allNotes = "All Notes"
    case uncategorized = "Uncategorised Notes"
    
    // work:
    case work = "Work"
    case meeting = "Meeting"
    case tasks = "Tasks And To-Dos"
    case projects = "Projects"
    
    // personal:
    case personal = "Personal"
    case dailyJournal = "Daily Journal"
    case travel = "Travel"
    case hobbies = "Hobbies"
    case books = "Books To Read"
    case movies = "Movies And TV Shows"
    
    // health:
    case fitness = "Fitness"
    case diet = "Diet And Meal Plans"
    case mentalHealth = "Mental Health"
    case medicalRecords = "Medical Records"
    
    // finance:
    case budget = "Budget And Expenses"
    case savings = "Savings Goals"
    
    // shopping:
    case groceries = "Groceries"
    case giftIdeas = "Gift Ideas"
    
    // social:
    case friendsAndFamily = "Friends And Family"
    case dateNightIdeas = "Date Night Ideas"
    
}
