//
//  ViewToAppearApointment.swift
//  Servizi
//
//  Created by khaled on 5/5/22.
//

import SwiftUI

struct ViewToAppearApointment: View {
    @State  var choosenButton : String = ""
    @State  var nameButton : String = ""
    @State  var loodza = ViewingAppointmentsVM.Appointments(id: 0, date: "emprt", duration: "", description: "", reviewed: 0, status: "", technician: ViewingAppointmentsVM.Technicians(firstName: "", lastName: "", phone: "", governorate: "", city: "", profession: ""))
 
    @State  var showingOptions = false
  
    @State  var lodza = ViewingAppointmentsVM.response(msg: "", appointments: [ViewingAppointmentsVM.Appointments(id: 0, date: "emprt", duration: "", description: "", reviewed: 0, status: "", technician: ViewingAppointmentsVM.Technicians(firstName: "", lastName: "", phone: "", governorate: "", city: "", profession: ""))])
    var body: some View {
        VStack
        {
            
            
            
            
            
            
            ScrollView{
                Group{
                
           ForEach( lodza.appointments , id: \.id)
                         { Appointments in
                              
                              
                              VStack(){
                               
                           
                                 if (Appointments.status == choosenButton ){
                                     
                                     VStack{
                                        
                                     HStack{
                                         
                                         VStack{
                                       
                                                 Image("app image")
                                                     .resizable()
                                                     .scaledToFit()
                                             Text(Appointments.date)
                                         } .frame(width: gentRect().width / 3.6, height: gentRect().height / 6)
                                      
                                             
                                         VStack
                                        {
                                             Text(Appointments.technician.profession)
                                                 .fontWeight(.bold)
                                                 .padding()
                                             Text(Appointments.technician.city)
                                                 .padding()
                                             Text(Appointments.duration)
                                             
                                                 
                                             
                                        
                                             } .frame(width: gentRect().width / 3, height: gentRect().height / 6)
                                      
                                         VStack{
                                             HStack
                                             {
                                             Text("ID: \(Appointments.id)")
                                             }
                                             .padding()
                                             
                                             }
                                         .frame(width: gentRect().width / 3.9, height: gentRect().height / 4.5)
                                    
                                     }
                                     .frame(width: gentRect().width-40, height: gentRect().height / 4.5)
                                     
                                   
                                     .background(Color(UIColor(named: "scroll_view _n_1")!))
                                     .cornerRadius(15)
                                         
                                        
                                             
                                          
                                          
                                                 HStack{
                                                     Text("\(nameButton)")
                                                    
                                                 }.foregroundColor(.white)
                                                 
                                                 .frame(width: gentRect().width-40, height : gentRect().height / 19)
                                                 .background(Color(UIColor(named: "bColor")!))
                                                 .cornerRadius(15)
                                              
                                               
                                             
                                             
                                         
                                       
                                     }
                                    
                                
                                   

                                 }
                             

                              }
                              .frame(width: gentRect().width-20)
                              .onTapGesture{
                                 self.loodza = Appointments
                               
                                 showingOptions.toggle()
                                 
                              }
                             
                       
                             
                              
                              
                          }
                    
                }
                
            }
       
        .background(Color(UIColor(named: "buttons_colors")!))
       .padding(.top,-2)
            
            
        }
        .popover(isPresented: $showingOptions) {
        
         
             sheetview(lodza:$loodza)
                 .ignoresSafeArea()
                 
               
        }

    }
}

struct ViewToAppearApointment_Previews: PreviewProvider {
    static var previews: some View {
        ViewToAppearApointment()
    }
}
