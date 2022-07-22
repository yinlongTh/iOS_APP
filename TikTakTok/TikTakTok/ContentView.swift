//
//  ContentView.swift
//  TikTakTok
//
//  Created by Yinlong on 2021/5/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var i1 = "w1"
    @State var i2 = "w2"
    @State var s1 = 0
    @State var s2 = 0
    @State var txt = "Let's Begin : 5 first win"
    var body: some View {
        
      
        ZStack{
            Image("bg").resizable().ignoresSafeArea()
        
            VStack(alignment: .center){
           
            Text("Yinlong TikTakTok").bold().italic()
            Spacer()
            HStack{
                Image("\(i1)").resizable().aspectRatio(contentMode:.fit)
                Spacer()
                Image("\(i2)").resizable().aspectRatio(contentMode: .fit)
            }
       
                Text("\(txt)")
                    .font(.callout)
                    .foregroundColor(Color.gray)
            HStack{
                
                    Image("yin").resizable().aspectRatio(contentMode:.fit)
            
            Image("ray").resizable().aspectRatio(contentMode:.fit)
                    
            }
            HStack{Spacer()
                Text("\(s1)").foregroundColor(.red)
                Spacer()
                Text("\(s2)").foregroundColor(.red)
                Spacer()
            }
            Spacer()
            Button(action: {
                let x = Int.random(in: 1...3)
                let y = Int.random(in: 1...3)
                
                i1 = "w" + String(x)
                i2 = "w" + String(y)
                
                if x == 1 && y == 2 {s2 += 1}
                else if  x==1 && y==3{s1 += 1}
                else if  x==2 && y==1{s1 += 1}
                else if  x==2 && y==3{s2 += 1}
                else if  x==3 && y==1{s2 += 1}
                else if  x==3 && y==2{s1 += 1}
                
                if s1==5 || s2 == 5 {
                    if s1==5 {txt = "Yinnie winsss"}else if s2 == 5 {txt = "you just got lucky"}}
                
                if s1==6 || s2 == 6 {
                    txt = "Let's Begin"
                    s1 = 0
                    s2 = 0
                }
                
            }, label: {
                Image("arrowtriangle.right.circle")
                    .renderingMode(.original).font(Font.largeTitle)
                    
                    
        })
            Button("Reset"){
                s1 = 0
                s2 = 0
            }
            .padding(.all)
            
        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
