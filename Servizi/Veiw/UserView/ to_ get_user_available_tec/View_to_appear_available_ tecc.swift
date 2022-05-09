
//
//  SwiftUIViewAPIContoler.swift
//  ToDoList
//
//  Created by khaled on 2/9/22.
//

import SwiftUI



struct toshowavaliabletec: View {
    @State var showbo = false
    @State private var isActive10: Bool = false
    @State private var isActive11: Bool = false
 
    @State var accouuuunts  = UserHomeViewModel.Acccounts(msg:"",technicians: [
        UserHomeViewModel.Ttechnician(id: 4, firstName: "", lastName: "", email: "", phone: "", governorate: "", city: "", profession: "")
    ])
    @State private var isActive: Bool = false
    @State var index = 0
    @Namespace var name
    
    let token = "Bearer-- eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksImlhdCI6MTY1MTcxNDEyNiwiZXhwIjoxNjUxODAwNTI2fQ.mbmGxGNv3_n8vzErG00xHFC8FW7Oyfh3XaYQB6KMeQ8"
    
    var chosenprof : String = "carpenter"
    var body: some View {
   
         
            VStack
            {
                ScrollView{
                ZStack{
                    Text("")
                        .hidden()
                }.frame(width: gentRect().width, height : 0)
                NavigationLink(
                    destination:viewToMakeAppoint(),
                    isActive:self.$isActive )
                     {
                        Text("")
                    }
                ForEach(accouuuunts.technicians, id: \.id) { Technician
                    in
                    
                    
                    VStack(spacing:15){
                        Spacer()
                        HStack {
                            
                            VStack
                            {
                                
                                Image("app image")
                                    .resizable()
                                    .scaledToFill()
                            } .frame(width: gentRect().width / 4)
                            
                            VStack{
                                Text(Technician.firstName + " " + Technician.lastName)
                                    .font(.headline)
                            }.frame(width: gentRect().width / 3)
                            
                            VStack{
                                
                                Button(action: {
                                    
                                    self.isActive = true
                                }) {
                                    Text("Book")
                                        .frame(width: gentRect().width/6 , height: gentRect().height / 16)
                                        
                                        
                                        .background(Color(UIColor(named: "bColor")!))
                                        .foregroundColor(.white)
                                    
                                }
                            }
                            
                            
                            
                        }  .frame(width: gentRect().width)
                        .background(Color(UIColor(named: "scroll_view _n_1")!))
                        
                        .cornerRadius(5)
                        
                        
                      
                    } .frame(width: gentRect().width)
                    
                    
                }
            }
           
            .background(Color(UIColor(named: "buttons_colors")!))
           .padding(.top,-2)
                
                
            }
          
              

                
          
            
            
            
     
        
        
    }
   
    
}





struct SwiftUIiViewAPIContoler_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            toshowavaliabletec()
                .preferredColorScheme(.dark)
            toshowavaliabletec()
                .preferredColorScheme(.light)
   
        }
    }
}



