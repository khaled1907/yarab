import Foundation
import SwiftUI

struct Loading: View {
    @StateObject var ViewModel = UserHomeViewModel()
    @State var token = "Bearer-- eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksImlhdCI6MTY1MTcxNDEyNiwiZXhwIjoxNjUxODAwNTI2fQ.mbmGxGNv3_n8vzErG00xHFC8FW7Oyfh3XaYQB6KMeQ8"
    @State var chosenprof = "carpenter"
    var body: some View {
        ScrollView{
        switch ViewModel.state {
        case .loading :
            
            VStack
                    {
                        Spacer()
                       
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.blue))
                    .scaleEffect(x: 2, y: 2)
                    .onAppear{
                        ViewModel.getAllAccounts(token: token, chosenprof: chosenprof)
                    }
                
                        Spacer()

                    }.frame( height : gentRect().height - gentRect().height / 4)
            
        case .Empty :
            CaseEmpty()
        case .loaded :
            toshowavaliabletec(accouuuunts : ViewModel.accouuuunts)
        case .Error :
            CaseError()
        }
        }
    }
}



struct CaseEmpty : View
{
    var body : some View
    {
        
        
            VStack
                    {
                        Spacer()
                        HStack
                        {
                        Spacer()
                        Text("No technicians to show")
                        .font(.title2)
                        .bold()
                        Spacer()
                        }
                        Spacer()

                    }.frame( height : gentRect().height - gentRect().height / 4)

    }
}

struct Caseloaded : View{
    var body : some View {
        ScrollView{
          
        Text("loaded Successfully")
        }
        
    }
    
}



struct CaseError : View{
    var body : some View {
        VStack
                {
                    Spacer()
                    HStack
                    {
                    Spacer()
                        Text("Error inretrieving data")
                    .font(.title2)
                    .bold()
                    Spacer()
                    }
                   
        }.frame( height : gentRect().height - gentRect().height / 4)
        
    }
    
}



struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        Loading()
    }
}
