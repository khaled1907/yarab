//
//  signUp.swift
//  Servizi
//
//  Created by khaled on 2/28/22.
//

import SwiftUI

struct signUp: View {
    @State var email = ""
    @State var password = ""
    @State var confirmpassword = ""
    @State var firstName = ""
    @State var lastName = ""
    @State var phone = ""
    @State var city = ""
    
    @State var governorate = ""
    
    var body: some View {
        
        
  ScrollView {

        VStack{
            Text("Register as a User")
                .font(.title)
                .fontWeight(.bold)
             //   .foregroundColor(.black)
                .kerning(1.9)
                .frame(maxWidth : .infinity , alignment: .leading)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text(" First name")
                .fontWeight(.bold)
               .foregroundColor(.gray)
                TextField("michel", text:$firstName)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Last name")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("david", text:$lastName)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Email")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("Servizi@yahoo.com", text:$email)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Phone")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("0100555001", text:$phone)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("City")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("Naser city", text:$city)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Goverment")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("Cairo", text:$governorate)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(.black))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            // v stack for PASSWORD
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Password")
                .fontWeight(.bold)
                .foregroundColor(.gray)
               SecureField("1268686@kjhjfhvHo6", text:$password)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color(.black))
                .padding(.top,5)
           
                Divider()
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Confirm Password")
                .fontWeight(.bold)
                .foregroundColor(.gray)
               SecureField("1268686@kjhjfhvHo6", text:$confirmpassword)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color(.black))
                .padding(.top,5)
           
                Divider()
            })
            .padding(.top,5)
            
            
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, 10)
            // button for moveing to next step
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Image(systemName: "arrow.right")
                .font(.system(size: 24, weight:.bold))
                .foregroundColor(.white)
                .padding()
                .background(Color(UIColor(named: "bColor")!))
                .clipShape(Circle())
                // shadow
                .shadow(color: Color(.black).opacity(0.6), radius: 5, x: 0, y: 0)
          
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
            
            
        }
        
        .padding()
            
  }
    }
}

struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
    }
}
