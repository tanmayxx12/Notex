//
//  AddingNoteView.swift
//  Notex
//
//  Created by Tanmay . on 25/02/25.
//

import SwiftUI

struct AddNoteView: View {
    @EnvironmentObject var viewModel: NotesViewModel
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    @State private var content: String = ""
    let category: NoteCategory
    let subcategory: NoteSubCategory

    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 4) {
                    Text(Date(), style: .date)
                    Text("at")
                    Text(Date(), style: .time)
                }
                .font(.caption)
              
                TextField("Title", text: $title)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.purple.opacity(0.6))
                    .cornerRadius(10)
                    .padding(.horizontal, 4)
                    
                
                TextEditor(text: $content)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.horizontal)
                
                
                
                Spacer()
                
            }
            .navigationTitle("New Note")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        viewModel.createNote(title: title, content: content, category: category, subcategory: subcategory)
                        dismiss()
                    }
                    .disabled(title.isEmpty && content.isEmpty)
                }
                
            }
            
        }
    }
}

#Preview {
    AddNoteView(category: .general, subcategory: .uncategorized)
        .environmentObject(NotesViewModel())
}
