//
//  ContentView.swift
//  TodoListSwiftUI
//
//  Created by Andrew Borisov on 27.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var newTask = ""
    @State private var tasks: [String] = []

    var body: some View {
        VStack {
            // Text field to enter new task
            TextField("Enter a new task", text: $newTask)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            // Button to add the task
            Button(action: {
                if !newTask.isEmpty {
                    tasks.append(newTask)
                    newTask = ""
                }
            }) {
                Text("Add Task")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            // List of tasks
            List(tasks, id: \.self) { task in
                Text(task)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
