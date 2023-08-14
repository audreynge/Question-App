//
//  Question1View.swift
//  Question App
//
//  Created by Audrey Ng on 8/11/23.
//

import SwiftUI

struct Question1View: View {
    @State private var answer = ""
    var body: some View {
        ZStack{
            Image("physicsquestionbackground")
                .blur(radius:6)
        
            
            VStack{
                Text("Question 1")
                    .foregroundColor(.white)
                    .font(.custom("Futura", size: 40))
                    .padding()
                
                Text("A car accelerates from rest at a\nrate of 2 m/s². How long does it\ntake for the car to reach a speed\nof 10 m/s?")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Heiti TC", size: 20))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    
                //choice A
                Button("A) 10 seconds"){
                    answer = "Incorrect!\nHint: v = u + at"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice B
                Button("B) 3 seconds"){
                    answer = "Incorrect!\nHint: v = u + at"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice C
                Button("C) 5 seconds"){
                    answer = "Correct!"
                }
                
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice D
                Button("D) 12 seconds"){
                    answer = "Incorrect!\nHint: v = u + at"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //answer display
                
                Text("\(answer)")
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 40, leading: 0, bottom: 40, trailing: 0))
                    .multilineTextAlignment(.center)
                    
                
                //next button
                NavigationLink(destination:Question2View()){
                    Text("Next")
                        .foregroundColor(.black)
                        .font(.custom("Heiti TC", size: 22))
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 8, trailing: 20))
                        .background(
                            RoundedRectangle(cornerRadius:23)
                                .fill(Color.white)
                        )
                }
                .padding()
                
                
                
                
            }
            
            
            
        }
    }
}

struct Question1View_Previews: PreviewProvider {
    static var previews: some View {
        Question1View()
    }
}
