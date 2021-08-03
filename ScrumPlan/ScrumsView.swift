//
//  ScrumsView.swift
//  ScrumsView
//
//  Created by Xiaochun Shen on 2021/8/3.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
                ForEach(scrums) { scrum in
                    NavigationLink(destination: DetailView(scrum: scrum)) {
                        CardView(scrum: scrum)
                            
                }
                    .listRowBackground(scrum.color)
            }
        }
        .navigationTitle("Daily Scrums")
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "plus")
        })
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.data)
        }
    }
}
