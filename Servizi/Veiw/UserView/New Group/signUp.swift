//
//  signUp.swift
//  Servizi
//
//  Created by khaled on 2/28/22.
//

import SwiftUI

struct signUp: View {
    @StateObject var uvm = UserSignUpViewModel()
    @State  var number1: Bool = true
    @State  var number2: Bool = true
    @State  var number3: Bool = true
    @State  var number4: Bool = true
    @State  var number5: Bool = true
    @State  var number6: Bool = true
    var body: some View {
        
        
  ScrollView {

        VStack{
            Text("Register as a User")
                .font(.title)
                .fontWeight(.bold)
           
                .kerning(1.9)
                .frame(maxWidth : .infinity , alignment: .leading)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text(" First name")
                .fontWeight(.bold)
               .foregroundColor(.gray)
                TextField("michel", text:$uvm.firstName)
                    .font(.system(size: 20, weight: .semibold))
               
                    .padding(.top,5)

                Divider()
                if number1 == false
                {
                    Text("name not valied enter more than 3 letter")
                        .foregroundColor(.red)

                }
                else
                {
                    Text("")
                    
                }
                
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Last name")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("david", text:$uvm.lastName)
                    .font(.system(size: 20, weight: .semibold))
                  
                    .padding(.top,5)
                
                
                Divider()
                if number2 == false
                {
                    Text("name not valied enter more than 3 letter")
                        .foregroundColor(.red)

                }
                else
                {
                    Text("")
                    
                }
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Email")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("Servizi@yahoo.com", text:$uvm.email)
                    .font(.system(size: 20, weight: .semibold))
                  
                    .padding(.top,5)
                
                
                Divider()
                if number3 == false
                {
                    Text("email is not valid")
                        .foregroundColor(.red)

                }
                else
                {
                    Text("")
                    
                }
            })
            .padding(.top,5)
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Phone")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("0100555001", text:$uvm.phone)
                    .font(.system(size: 20, weight: .semibold))
               
                    .padding(.top,5)
                
                
                Divider()
                if number4 == false
                {
                    Text("phone is not valid")
                        .foregroundColor(.red)

                }
                else
                {
                    Text("")
                    
                }
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("City")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("Naser city", text:$uvm.city)
                    .font(.system(size: 20, weight: .semibold))
                    
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Goverment")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("Cairo", text:$uvm.governorate)
                    .font(.system(size: 20, weight: .semibold))
                  
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,5)
            // v stack for PASSWORD
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Password")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                SecureField("sssssssss", text:$uvm.password)
                .font(.system(size: 20, weight: .semibold))
            
                .padding(.top,5)
           
                Divider()
                if number5 == false
                {
                    Text("password length must be more than 7")
                        .foregroundColor(.red)

                }
                else
                {
                    Text("")
                    
                }
            })
            .padding(.top,5)
            
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Confirm Password")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                SecureField("sssssssss", text:$uvm.confirmpassword)
                .font(.system(size: 20, weight: .semibold))
                
                .padding(.top,5)
           
                Divider()
                if number6 == false
                {
                    Text("Passwords Mismatched")
                        .foregroundColor(.red)

                }
                else
                {
                    Text("")
                    
                }
            })
            .padding(.top,5)
            
            
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, 10)
            // button for moveing to next step
            Button(action: {
                Validate(user: uvm)
 }, label: {
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
    func Validate(user : UserSignUpViewModel) -> Bool
    {
            var valid = true

            if (!stringValidator(name: user.firstName)) {
            number1 = false
            valid = false
            }
            else{
            number1 = true
       

            }
            if (!stringValidator(name: user.lastName)) {
            number2 = false
            valid = false
            }
            else{
            number2 = true
         
        }
        if (!emailValidator(email: user.email)) {
        number3 = false
        valid = false
        }
        else{
        number3 = true
     

        }

        if (!phoneValidator(phone: user.phone)) {
        number4 = false
        valid = false
        }
        else{
        number4 = true
  

        }
        
        if (!passwordValidation(password: user.password)) {
        number5 = false
        valid = false
        }
        else{
        number5 = true
  

        }
if (user.password != user.confirmpassword) {
number6 = false
valid = false
}
else
{
number6 = true

}


return valid
}
    
    ////////////////////////////// it is to validate first name////////////////////////////////////////////
       func stringValidator(name: String) -> Bool {
     
        if (name.count < 3 || name.isEmpty)
           {
               return false
            
           }
           else{
          
              return true
           }
            }
    //////////////////////////////////////////////////////////////////////////////////////////////
 func emailValidator(email: String)-> Bool {
      if (email.isEmpty || email.count < 3) {
            return false
        }
      else {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}" // short format
                let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
                return emailPredicate.evaluate(with: email)
        }
    }
//******************************Validate foe phone *********************************
   func phoneValidator(phone: String)-> Bool {
    if (phone.isEmpty || phone.count != 11) {
             return false
        } else {
            let PHONE_REGEX =  #"^\(?\d{3}\)?[ -]?\d{3}[ -]?\d{5}$"#
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
            return phoneTest.evaluate(with : phone)
        }
    }
//******************************Validate foe psssword *********************************
    
    func passwordValidation(password: String)-> Bool {
        if (password.isEmpty || password.count < 8)
        {
            return false
        }
        else {
            return true
            
        }
         /*   /* - Password length is 8.
             2 - One Alphabet in Password.
             3 - One Special Character in Password.
*/
             let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
                return passwordTest.evaluate(with: password)
        }*/
    }
}

struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
    }
}

