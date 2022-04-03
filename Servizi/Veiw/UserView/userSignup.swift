//
//  userSignup.swift
//  Servizi
//
//  Created by khaled on 2/28/22.
//

import SwiftUI

struct userSignup: View {
    @State var email = ""
    @State var password = ""
    @State var MaxCircleHight : CGFloat = 0
    var body: some View {
        VStack{
        
            
            GeometryReader{proxy ->  AnyView in
                let height = proxy.frame(in: .global).height
                DispatchQueue.main.async {
                    if MaxCircleHight == 0{
                        MaxCircleHight = height
                    }
                }
            return AnyView(

                ZStack  {
               
                    Circle()
                        .fill(Color(.orange))
                        .offset(x: -getRect().width / 2, y: -height / 1.5)
                    
                    Circle()
                        .fill(Color(.orange))
                        .offset(x: getRect().width / 2, y: -height / 1.3)
                    
                   Circle()
                       .fill(Color(UIColor(named: "bColor")!))
                       .offset( y: -height / 1.3)
                    .rotationEffect(.init(degrees: -5))
                    
              }
                
            )
        }
        .frame( maxHeight: getRect().width)
            
        VStack{
            Text("Login")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .kerning(1.9)
                .frame(maxWidth : .infinity , alignment: .leading)
            
            // username _ password
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("User name")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                TextField("StringProgdfgdfgftocol", text:$email)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                
                Divider()
            })
            .padding(.top,25)
            // v stack for PASSWORD
            VStack (alignment: .leading  , spacing: 8, content: {
                        
                        
               Text("Password")
                .fontWeight(.bold)
                .foregroundColor(.gray)
               SecureField("126868686", text:$password)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color("dark"))
                .padding(.top,5)
           
                Divider()
            })
            .padding(.top,20)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Forgrt Password")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                
                
            })
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
        .padding(.top, -MaxCircleHight / 1.6)
        .frame( maxHeight: .infinity, alignment: .top)
        }
        .overlay(
            
            
            HStack
            {
                    Text("New Member")
                    .fontWeight(.bold)
                        .foregroundColor(.gray)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign Up")
                    .fontWeight(.bold)
                    .foregroundColor(Color(UIColor(named: "bColor")!))                })
                
            }
            ,alignment: .bottom

        )
        .background(
            HStack{
                
                Circle()
                    .fill(Color(.orange))
                    .frame(width: 70, height: 70)
                    .offset(x: -30, y: 0)
                    
                
                Spacer(minLength: 0)
                
                Circle()
                    .fill(Color(UIColor(named: "bColor")!))
                    .frame(width: 100, height: 110)
                    .offset(x: 40, y: 20)
            }
            .offset( y: getSafeArea().bottom + 30 )
      ,alignment: .bottom
        )
    }
    
}
    


struct userSignup_Previews: PreviewProvider {
    static var previews: some View {
        userSignup()
    }
}
extension View{
    func getRect()->CGRect{
        
        return UIScreen.main.bounds

    }
    // getting safa area
    func getSafeArea()->UIEdgeInsets{
        return UIApplication.shared.windows.first?.safeAreaInsets
?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
