//
//  ContentView.swift
//  Quiz2
//
//  Created by Varun Sidhu on 2022-03-10.
//

import SwiftUI
import Foundation
import UIKit

struct Student {
    var name: String = ""
    var age: Int = 0
    var favMovie: String = ""
    
}

struct ContentView: View {
    
    @State var student: Student = Student()
    @State var name: String = ""
    @State var age: String = ""
    @State var favMovie: String = ""
    @State var submit = false
    
    var body: some View {
            VStack{
                Text("Student Info")
                    .font(.system(size: 30))

                HStack {
                    Text("Name: ")
                        .font(.system(size: 30))

                    TextField("Name ", text: $name)
                        .frame(width: 200, height: 30)
                }

                HStack {
                    Text("Age: ")
                        .font(.system(size: 30))

                    TextField("Age", text: $age)
                        .frame(width: 200, height: 30)
                }

                HStack {
                    Text("Favourite Movie: ")
                        .font(.system(size: 30))

                    TextField("Favorite Movie ", text: $favMovie)
                        .frame(width: 200, height: 30)

                }


                

                if submit {
                    VStack() {
                        Text("Name: " + student.name)
                            .font(.system(size: 22))
                        Text("Age: \(student.age)")
                            .font(.system(size: 22))
                        Text("Favourite Movie: " + student.favMovie)
                            .font(.system(size: 22))
                        
                    }
                }
                
                Button(action:{
                    let sAge: Int = Int(age) ?? 0
                    student = Student(name: name, age: sAge, movie: favMovie)
                    submit.toggle()},
                    label: {
                        Text("Submit")
                            .frame(width: 100, height:30, alignment: .center)
                            .foregroundColor(.white)
                            .background(.pink)
                            .padding()
                    
                })
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}