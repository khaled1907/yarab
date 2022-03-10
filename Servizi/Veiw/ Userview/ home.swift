//
//  SignUpUserAndLogin_veiw.swift
//  Servizi
//
//  Created by khaled on 2/28/22.
//

import SwiftUI

struct SignUpUserAndLogin_veiw: View {
   
    @State var MaxCircleHight : CGFloat = 0
    @State var showSignUp = false
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

                ZStack (alignment: .center,  content: {
                 Image("number2")
                 .resizable()
            
                    .frame(height:  geeetRect().height / 4.5)
                  .offset( y: -height / 7.3)

                })
                .frame(width: geeetRect().width, height: geeetRect().height / 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            )
        }
        .frame( maxHeight: getRect().width)
            VStack{
            
           HStack{
                
                if showSignUp{
                signUp()
            }
                else {
                    login()
                }
            }
            
            
      
           .padding(.top, -MaxCircleHight / 4.4)
        .frame( maxHeight: .infinity, alignment: .top)
        }

        .overlay(
            
            
            HStack
            {
                Text( showSignUp ? "Already member": "New Member" )
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                 
                Button(action: {
                    withAnimation {
                        showSignUp.toggle()
                    }
                }, label: {
                    Text(showSignUp ? "Login" : "Sign Up" )
                    .fontWeight(.bold)
                    .foregroundColor(Color(UIColor(named: "bColor")!))
                     
                })
                
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
    
}

struct SignUpUserAndLogin_veiw_Previews: PreviewProvider {
    static var previews: some View {
        SignUpUserAndLogin_veiw()
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
/* ZStack (alignment: .center,  content: {
 Image("back")
 .resizable()
.scaledToFill()
.frame(maxWidth: . infinity,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
Image("app image")
    .resizable()
    .scaledToFit()
    .frame(maxWidth: . infinity,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
})*/
