//
//  Question2View.swift
//  Question App
//
//  Created by Audrey Ng on 8/11/23.
//

import SwiftUI

struct Question2View: View {
    @State private var answer = ""
    var body: some View {
        ZStack{
            Image("physicsquestionbackground")
                .blur(radius:6)
                
            
            VStack{
                Text("Question 2")
                    .foregroundColor(.white)
                    .font(.custom("Futura", size: 40))
                    .padding()
                
                Text("A 5 kg object experiences a net\nforce of 15 N. What is the\nacceleration of the object?")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Heiti TC", size: 20))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    
                //choice A
                Button("A) 3 m/s²"){
                    answer = "Correct!"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice B
                Button("B) 4 m/s²"){
                    answer = "Incorrect!\nHint: F = ma"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice C
                Button("C) 5 m/s²"){
                    answer = "Incorrect!\nHint: F = ma"
                }
                
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice D
                Button("D) 6 m/s²"){
                    answer = "Incorrect!\nHint: F = ma"
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
                
                NavigationLink(destination:Question3View()){
                    Text("Next")
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

struct Question2View_Previews: PreviewProvider {
    static var previews: some View {
        Question2View()
    }
}
