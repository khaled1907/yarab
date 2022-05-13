//
//  SignUpUserAndLogin_veiw.swift
//  Servizi
//
//  Created by khaled on 2/28/22.
//

import SwiftUI

struct testingVeiw: View
{
    
    @State private var isback: Bool = false
    @State private var isActive: Bool = false
    @State private var isActive1: Bool = false
    @State var MaxCircleHight : CGFloat = 0
    @State var showSignUp = false
    @State var index = 0
    @Namespace var name
    var body: some View
    {
        NavigationView{
            ZStack{
    VStack( spacing:25){
      

            VStack{
                HStack{
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: gentRect().width / 12, height: gentRect().width / 15)
                    Spacer()
                }.padding(.leading)
                .onTapGesture {
                    withAnimation(.spring()){
            
                    self.isback.toggle()
                        
                    }
                    
                }
                Spacer()
                           
            }    .frame(width:gentRect().width )
            .frame(height:  gentRect().height / 4.9)
            .background(Image("number2")
                            .resizable()
                            .scaledToFill())
                 


  
    
            HStack
            {
                
                
                Button(action: {
                    withAnimation(.spring()){
                        index = 0
                    }
                })
                {
                    VStack{
                        
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .blue : .gray)
                        ZStack{
                            Capsule()
                                .fill(Color.black.opacity(0.05))
                                .frame(height : 4 )
                            if index == 0 {
                                Capsule()
                                    .fill(Color.blue)
                                    .frame(height : 4 )
                                .matchedGeometryEffect(id: "Tab", in: name )
                                
                            }
                            
                        }
                        
                    }
                    
                    
                }
                Button(action: {
                    withAnimation(.spring()){
                        index = 1
                    }
                })
                {
                    
                    VStack{
                        
                        Text("Sing Up")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .blue : .gray)
                        ZStack{
                            Capsule()
                                .fill(Color.black.opacity(0.05))
                                .frame(height : 4 )
                            if index == 1 {
                                Capsule()
                                    .fill(Color.blue)
                                    .frame(height : 4 )
                                    .matchedGeometryEffect(id: "Tab", in:name )
                                
                            }
                            
                        }
                        
                        
                    }
                    
                    
                }
                
                
                
            }
            .padding(.top ,0)
        
      
            HStack{
                
                if index == 0 {
                    login()
                }
                else
                {
                    signUp()
                }
                            }
            Spacer()
        
            
            
            
   
    
        }
   
    .frame(width: gentRect().width)
                
                if isback{
                    FirstPageInApp()
                        .transition(.slide)
                }
                
                
            }
    .navigationBarHidden(true)
  
        }
        .navigationBarHidden(true)
       
    
        .navigationBarBackButtonHidden(true)
       
    
    }
           
 
}
    

struct testingVeiw_Previews: PreviewProvider {
    static var previews: some View {
        testingVeiw()
            .preferredColorScheme(.light)
    }
}

extension View{
    func gentRect()->CGRect{
        
        return UIScreen.main.bounds

    }
   
}

