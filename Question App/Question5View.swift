//
//  Question5View.swift
//  Question App
//
//  Created by Audrey Ng on 8/11/23.
//

import SwiftUI

struct Question5View: View {
    @State private var showImageIsaac = false
    @State private var showImageAlbert = false

    var body: some View {
        ZStack{
            Image("spacebg1")
                .blur(radius:8)
            Color.black.opacity(0.2)
                
            
            VStack{
                Text("Question 5")
                    .foregroundColor(.white)
                    .font(.custom("Futura", size: 40))
                    .padding()
                
                Text("Who would win in a fight:\nIsaac Newton or Albert Einstein?")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Heiti TC", size: 20))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    
                //newton
                Button(action: { showImageIsaac.toggle() }){
                    Text("Isaac Newton")
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //einstein
                Button(action: { showImageAlbert.toggle() }){
                    Text("Albert Einstein")
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                
                if showImageIsaac {
                    Image("isaacnewton")
                        .resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                }
                
                if showImageAlbert {
                    Image("alberteinstein")
                        .resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                }
                       
                NavigationLink(destination:ContentView()){
                    Text("Home")
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

struct Question5View_Previews: PreviewProvider {
    static var previews: some View {
        Question5View()
    }
}
