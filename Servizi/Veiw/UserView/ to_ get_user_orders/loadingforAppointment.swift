//
//  loadingforAppointment.swift
//  Servizi
//
//  Created by khaled on 5/5/22.
//

import SwiftUI

struct loadingforAppointment: View {
    @State  var choosenButton : String = "inprogress"
    @State  var nameButton : String = "inprogress"
    @StateObject var Viewmodel = ViewingAppointmentsVM()
    @State var token = "Bearer-- eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksImlhdCI6MTY1MTcxNDEyNiwiZXhwIjoxNjUxODAwNTI2fQ.mbmGxGNv3_n8vzErG00xHFC8FW7Oyfh3XaYQB6KMeQ8"
    
    var body: some View {
        ScrollView{
            switch Viewmodel.state {
        case .loading :
           
            
            VStack
                    {
                        Spacer()
          
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.blue))
                    .scaleEffect(x: 2, y: 2)
                   .onAppear{
                    Viewmodel.ViewAppointments(token: token)
                    }
            
                        Spacer()

                    }.frame( height : gentRect().height - gentRect().height / 3)
        

        case .loaded :
            ViewToAppearApointment(choosenButton: choosenButton,nameButton : nameButton,lodza: Viewmodel.JsonData)
        case .Error :
            CaseError()
        }
        }
    }
}











struct loadingforAppointment_Previews: PreviewProvider {
    static var previews: some View {
        loadingforAppointment()
    }
}
