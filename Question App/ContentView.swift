//
//  ContentView.swift
//  Question App
//
//  Created by Audrey Ng on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("homepagebg")
                    .blur(radius: 9)
                Color.black.opacity(0.5)
                
                VStack {
                    Text("Physics Trivia")
                        .foregroundColor(.white)
                        .font(.custom("Futura", size: 55))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("Can you solve these\n physics problems?")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.custom("Heiti TC", size: 25))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    
                    NavigationLink(destination:Question1View()){
                        Text("Start")
                            .foregroundColor(.black)
                            .font(.custom("Heiti TC", size: 22))
                            .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                            .background(
                                RoundedRectangle(cornerRadius:23)
                                    .fill(Color.white)
                                    
                            )
                            
                        
                    }
                    
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
