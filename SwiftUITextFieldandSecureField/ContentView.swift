//
//  ContentView.swift
//  SwiftUITextFieldandSecureField
//
//  Created by Md Khaled Hasan Manna on 13/10/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var userName = ""
    @State var passWord = ""
    
    var body: some View {
       
       
        VStack(alignment:.center,spacing: 100){
          
            VStack(){
                Text("\(userName)")
                 Text("\(passWord)")
            }
          
            
            VStack(alignment:.leading){
                Text("UserName")
                         TextField("Enter Your Name:", text: $userName)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .border(Color.blue)
                         
                         Text("Password")
                         SecureField("Enter Your Password:", text: $passWord)
                             .textFieldStyle(RoundedBorderTextFieldStyle())
                             .border(Color.blue)
                             
                           
            }
         

        }.font(.headline)
        
      
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
