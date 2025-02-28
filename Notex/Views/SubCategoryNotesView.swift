//
//  SubCategoryNotesView.swift
//  Notex
//
//  Created by Tanmay . on 28/02/25.
//

import SwiftUI

struct SubCategoryNotesView: View {
    @EnvironmentObject var viewModel: NotesViewModel
    let category: NoteCategory
    let subcategory: NoteSubCategory
    
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.notes.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: "note.text")
                            .font(.system(size: 60))
                            .foregroundStyle(.purple)
                        Text("No Notes in \(subcategory.rawValue).")
                            .font(.headline)
                    }
                } else {
                    List {
                        ForEach(viewModel.notes) { note in
                            NavigationLink {
                                Text("Note Detail View will come here")
                            } label: {
                                VStack(alignment: .leading) {
                                    Text("\(note.title ?? "")")
                                        .font(.headline)
                                    Text("\(note.content ?? "")")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                    
//                                    Text("\(note.timestamp ?? Date(), style: .date)")
//                                        .font(.caption)
//                                        .foregroundStyle(.gray)
                                }
                            }
                            
                            
                        } // ForEach
                    }
                }
            }
            .navigationTitle(subcategory.rawValue)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button("Edit") {}
                        Menu {
                            Button("Default (Date Edited)") {}
                            Button("Date Edited") {}
                            Button("Date Created") {}
                            Button("Title") {}
                            Divider()
                            Button("Newest First") {}
                            Button("Oldest First") {}
                        } label: {
                            HStack {
                                Text("Sort By")
                                Image(systemName: "arrow.up.arrow.down")
                            }
                        }
                        
                        Menu {
                            Button("Default(On)") {}
                            Button("On") {}
                            Button("Off") {}
                        } label: {
                            HStack {
                                Text("Group By Date")
                                Image(systemName: "calendar")
                            }

                        }
                        
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .tint(.purple)
                    }
                    .disabled(viewModel.notes.isEmpty)
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    
                    NavigationLink {
                        AddNoteView(category: category, subcategory: subcategory)
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .font(.title3)
                            .tint(.purple)
                    }

                }
                
            }
        }
        .onAppear {
            viewModel.fetchNotes(for: subcategory)
        }
    }
}

#Preview {
    SubCategoryNotesView(category: .health, subcategory: .fitness)
        .environmentObject(NotesViewModel())
}
