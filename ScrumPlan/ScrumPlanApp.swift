//
//  ScrumPlanApp.swift
//  ScrumPlan
//
//  Created by Xiaochun Shen on 2021/8/2.
//

import SwiftUI

@main
struct ScrumPlanApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.data)
        }
    }
}
