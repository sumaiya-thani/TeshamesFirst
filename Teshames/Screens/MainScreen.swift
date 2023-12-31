//
//  MainScreen.swift
//  Teshames
//
//  Created by sumaiya on 04/10/2566 BE.
//

import SwiftUI
import WidgetKit

struct MainScreen: View {
    @AppStorage ("Streak",store: UserDefaults(suiteName: "group.com.tashmas.widget03 ")) var Streak  = 0

    var body: some View {
        NavigationView {
            
            
            ScrollView {
                ContentView().padding()
                
                Dialog()
                Badgeview()
                
                Button(action: {
                    Streak += 1
                    //manually reload the widget]
                    WidgetCenter.shared.reloadTimelines(ofKind: "Tashamas_widget")
                }, label: {
                    Text(" ")
                })
              

                   
            }.background(Color.background)
                .toolbar{
                    ToolbarItem{
                        NavigationLink(
                            
                            destination:
                                StreakScreen()
                            
                        ) {
                            Image(systemName: "target")
                                .foregroundColor(.yellow)
                                .symbolRenderingMode(.palette)
                                //.imageSymbolScale()
                            
                            
                        }
                    }
                    
                }
            
            
        }.tint(.yellow)
        
    }
}

#Preview {
    MainScreen()
}
