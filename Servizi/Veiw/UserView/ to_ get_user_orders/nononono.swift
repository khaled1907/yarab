//
//  nononono.swift
//  Servizi
//
//  Created by khaled on 4/18/22.
//

import SwiftUI

struct nononono: View {
    
    
   
    
   
   

    @State  var choosenButton : String = "inprogress"
    @State  var nameButton : String = "inprogress"
   
    let token = "Bearer-- eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksImlhdCI6MTY1MTcxNDEyNiwiZXhwIjoxNjUxODAwNTI2fQ.mbmGxGNv3_n8vzErG00xHFC8FW7Oyfh3XaYQB6KMeQ8"
  

 
    var body: some View {
    //    NavigationView{

        
        
        
        
        loadingforAppointment(choosenButton: choosenButton, nameButton: nameButton)
        
        
        
        
        
        
        
        
        

     
       
        
        
    }
   
}
   

struct nononono_Previews: PreviewProvider {
    static var previews: some View {
        nononono()
            .preferredColorScheme(.light)
    }
}


