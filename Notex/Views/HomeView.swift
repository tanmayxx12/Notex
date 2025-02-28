//
//  RootView.swift
//  Notex
//
//  Created by Tanmay . on 26/02/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: NotesViewModel
    @State private var searchText: String = ""
    
    @State private var generalExpanded: Bool = false
    @State private var workExpanded: Bool = false
    @State private var personalExpanded: Bool = false
    @State private var healthExpanded: Bool = false
    @State private var financeExpanded: Bool = false
    @State private var shoppingExpanded: Bool = false
    @State private var socialExpanded: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    // MARK: - General Categories Section:
                    DisclosureGroup(isExpanded: $generalExpanded) {
                        NavigationLink {
                            Text("Display All Notes in a list here.")
                        } label: {
                            HStack {
                                Image(systemName: "folder")
                                    .foregroundStyle(.purple)
                                Text("All Notes")
                            }
                        }
                        
                        NavigationLink {
                            Text("Display Uncategorised Notes in a list here.")
                        } label: {
                            HStack {
                                Image(systemName: "folder.badge.questionmark")
                                    .foregroundStyle(.purple)
                                Text("Uncategorised Notes")
                            }
                        }
                    } label: {
                        HStack {
                            Image(systemName: "list.bullet.clipboard")
                                .foregroundStyle(.purple)
                            Text("General Categories")
                                
                        }
                       
                    }

                    
                    // MARK: - Work And Productivity:
                    DisclosureGroup(isExpanded: $workExpanded) {
                        // Work
                        NavigationLink {
                            Text("Show work notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "laptopcomputer")
                                    .foregroundStyle(.purple)
                                    .foregroundStyle(.purple)
                                Text("Work")
                            }
                        }
                        
                        // Meeting:
                        NavigationLink {
                            Text("Show Meeting notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "person.3")
                                    .foregroundStyle(.purple)
                                    .foregroundStyle(.purple)
                                Text("Meeting")
                            }
                        }
                        
                        // Tasks:
                        NavigationLink {
                            Text("Show Task notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "text.badge.checkmark")
                                    .foregroundStyle(.purple)
                                    .foregroundStyle(.purple)
                                Text("Tasks And To-Dos")
                            }
                        }
                        
                        // Projects:
                        NavigationLink {
                            Text("Show Project notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "pencil.and.list.clipboard")
                                    .foregroundStyle(.purple)
                                    .foregroundStyle(.purple)
                                Text("Projects")
                            }
                        }
                    } label: {
                        HStack {
                            Image(systemName: "chart.bar.xaxis.ascending.badge.clock")
                                .foregroundStyle(.purple)
                            Text("Work And Productivity")
                        }
                       
                    }
                    
                    // MARK: - Personal and Lifestyle:
                    DisclosureGroup(isExpanded: $personalExpanded) {
                        // Personal:
                        NavigationLink {
                            Text("Show Personal Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "person.and.arrow.left.and.arrow.right.outward")
                                    .foregroundStyle(.purple)
                                Text("Personal")
                            }
                        }
                        // Daily Journal:
                        NavigationLink {
                            Text("Show Daily Journal Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "pencil.and.scribble")
                                    .foregroundStyle(.purple)
                                Text("Daily Journal")
                            }
                        }
                        // Travel:
                        NavigationLink {
                            Text("Show Travel Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "airplane.departure")
                                    .foregroundStyle(.purple)
                                Text("Travel")
                            }
                        }
                        // Hobbies:
                        NavigationLink {
                            Text("Show Hobbies Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "guitars")
                                    .foregroundStyle(.purple)
                                Text("Hobbies")
                            }
                        }
                        // Books To Read:
                        NavigationLink {
                            Text("Show Books To Read Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "books.vertical")
                                    .foregroundStyle(.purple)
                                Text("Books To Read")
                            }
                        }
                        // Movies And TV Shows:
                        NavigationLink {
                            Text("Show Movies And TV Shows Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "desktopcomputer.and.macbook")
                                    .foregroundStyle(.purple)
                                Text("Movies And TV Shows")
                            }
                        }

                       
                    } label: {
                        HStack {
                            Image(systemName: "person")
                                .foregroundStyle(.purple)
                            Text("Personal And Lifestyle")
                        }
                    }
                    
                    // MARK: - Health And Wellness:
                    DisclosureGroup(isExpanded: $healthExpanded) {
                        // Fitness:
                        NavigationLink {
                            Text("Show Fitness Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "figure.run")
                                    .foregroundStyle(.purple)
                                Text("Fitness")
                            }
                        }
                        // Diet and Meal Plans:
                        NavigationLink {
                            Text("Show Diet And Meal Plans Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "fork.knife.circle")
                                    .foregroundStyle(.purple)
                                Text("Diet And Meal Plans")
                            }
                        }
                        // Mental Health:
                        NavigationLink {
                            Text("Show Mental Health Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "brain.filled.head.profile")
                                    .foregroundStyle(.purple)
                                Text("Mental Health")
                            }
                        }
                        // Medical Records:
                        NavigationLink {
                            Text("Show Medical Record Notes here")
                        } label: {
                            HStack {
                                Image(systemName: "heart.text.square")
                                    .foregroundStyle(.purple)
                                Text("Medical Records")
                            }
                        }
                    } label: {
                        HStack {
                            Image(systemName: "figure.highintensity.intervaltraining")
                                .foregroundStyle(.purple)
                            Text("Health And Fitness")
                        }
                    }
                    
                    // MARK: - Finance And Planning:
                    DisclosureGroup(isExpanded: $financeExpanded) {
                        // Budget and Expenses:
                        NavigationLink {
                            Text("Show Budget And Expenses Notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "dollarsign")
                                    .foregroundStyle(.purple)
                                Text("Budget And Expenses")
                            }
                        }
                        // Savings Goals:
                        NavigationLink {
                            Text("Show Savings Goals Notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "dollarsign.bank.building")
                                    .foregroundStyle(.purple)
                                Text("Savings Goals")
                            }
                        }
                    } label: {
                        HStack {
                            Image(systemName: "dollarsign.arrow.trianglehead.counterclockwise.rotate.90")
                                .foregroundStyle(.purple)
                            Text("Finance And Planning")
                        }
                    }
                    
                    
                    // MARK: - Shopping And Errands
                    DisclosureGroup(isExpanded: $shoppingExpanded) {
                        // Groceries:
                        NavigationLink {
                            Text("Show Groceries Notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "tray.2")
                                    .foregroundStyle(.purple)
                                Text("Groceries")
                            }
                        }
                        // Gift Ideas:
                        NavigationLink {
                            Text("Show Gift Ideas Notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "gift")
                                    .foregroundStyle(.purple)
                                Text("Gift Ideas")
                            }
                        }
                    } label: {
                        HStack {
                            Image(systemName: "cart.badge.plus")
                                .foregroundStyle(.purple)
                            Text("Shopping And Errands")
                        }
                       
                    }
                    
                    
                    // MARK: - Social And Relationships
                    DisclosureGroup(isExpanded: $socialExpanded) {
                        NavigationLink {
                            Text("Show Friends And Family Notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "figure.2.arms.open")
                                    .foregroundStyle(.purple)
                                Text("Friends And Family")
                            }
                        }
                        
                        NavigationLink {
                            Text("Show Date Night Ideas Notes here.")
                        } label: {
                            HStack {
                                Image(systemName: "person.2")
                                    .foregroundStyle(.purple)
                                Text("Date Night Ideas")
                            }
                        }
                    } label: {
                        HStack {
                            Image(systemName: "heart")
                                .foregroundStyle(.purple)
                            Text("Social And Relationships")
                        }
                    }
                    
                    
                    
                }
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationTitle("Notes")
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
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    
                    NavigationLink {
                        AddNoteView()
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .font(.title3)
                            .tint(.purple)
                    }

                }
                
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(NotesViewModel())
}
