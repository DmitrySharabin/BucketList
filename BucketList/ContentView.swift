//
//  ContentView.swift
//  BucketList
//
//  Created by Dmitry Sharabin on 18.12.2021.
//

import SwiftUI

struct User: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
//    let values = [1, 5, 3, 6, 2, 9].sorted()
    
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister")
    ].sorted()
//    .sorted {
//        $0.lastName < $1.lastName
//    }
    
    var body: some View {
//        List(values, id: \.self) {
//            Text(String($0))
//        }
        
        List(users) { user in
            Text("\(user.lastName), \(user.firstName)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
