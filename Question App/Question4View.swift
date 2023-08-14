//
//  Question3View.swift
//  Question App
//
//  Created by Audrey Ng on 8/11/23.
//

import SwiftUI

struct Question4View: View {
    @State private var answer = ""
    var body: some View {
        ZStack{
            Image("physicsquestionbackground")
                .blur(radius:6)
                
            
            VStack{
                Text("Question 4")
                    .foregroundColor(.white)
                    .font(.custom("Futura", size: 40))
                    .padding()
                
                Text("A 50 N force is applied to push a\nbox a distance of 10 meters across\na frictionless surface. How much\nwork is done on the box?")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Heiti TC", size: 20))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    
                //choice A
                Button("A) 250 J"){
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
                Button("B) 500 J"){
                    answer = "Incorrect!\nHint: W = Fd"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice C
                Button("C) 750 J"){
                    answer = "Incorrect!\nHint: W = Fd"
                }
                
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice D
                Button("D) 1000 J"){
                    answer = "Incorrect!\nHint: W = Fd"
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
                NavigationLink(destination:Question5View()){
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

struct Question4View_Previews: PreviewProvider {
    static var previews: some View {
        Question4View()
    }
}

