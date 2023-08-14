//
//  Question3View.swift
//  Question App
//
//  Created by Audrey Ng on 8/11/23.
//

import SwiftUI

struct Question3View: View {
    @State private var answer = ""
    var body: some View {
        ZStack{
            Image("physicsquestionbackground")
                .blur(radius:6)
                
            
            VStack{
                Text("Question 3")
                    .foregroundColor(.white)
                    .font(.custom("Futura", size: 40))
                    .padding()
                
                Text("A ball is kicked off the ground with\na speed of 20 m/s at an angle of\n45 degrees above the horizontal. \nCalculate the maximum height\nreached by the ball.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("Heiti TC", size: 20))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    
                //choice A
                Button("A) 25 m"){
                    answer = "Incorrect!\nHint: horizontal & vertical components"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice B
                Button("B) 10 m"){
                    answer = "Correct!"
                }
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice C
                Button("C) 20 m"){
                    answer = "Incorrect!\nHint: horizontal and vertical components"
                }
                
                .foregroundColor(.purple)
                .font(.custom("Heiti TC", size: 20))
                .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .background(
                    RoundedRectangle(cornerRadius:23)
                        .fill(Color.white)
                    )
                
                //choice D
                Button("D) 15 m"){
                    answer = "Incorrect!\nHint: horizontal and vertical components"
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
                NavigationLink(destination:Question4View()){
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

struct Question3View_Previews: PreviewProvider {
    static var previews: some View {
        Question3View()
    }
}
