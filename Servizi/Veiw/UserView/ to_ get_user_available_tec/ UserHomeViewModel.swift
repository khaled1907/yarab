
import Foundation
import SwiftUI

class UserHomeViewModel : ObservableObject {
struct Acccounts: Codable , Hashable {
    let msg: String
    let technicians: [Ttechnician]
}

struct Ttechnician: Codable , Identifiable,Hashable{
    let id: Int
    let firstName, lastName, email, phone: String
    let governorate, city, profession: String
}



    enum States {
        case loading
        case loaded
        case Empty
        case Error }
    
    
    var accouuuunts = Acccounts(msg:"",technicians: [])
    @Published var state : States = .loading
    
    func getAllAccounts(token : String, chosenprof : String){
         guard let url = URL(string: "https://servizi.seifahmed.com/user/alltechnicians?profession=\(chosenprof)") else {
            print("Invalid URL")
            return
         }
       
    
        var request = URLRequest(url: url)
        request.addValue(token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, _, _ in
            do {
                
             let acccounts = try JSONDecoder().decode(Acccounts.self, from: data!)
                DispatchQueue.main.async {
                    self.accouuuunts = acccounts
                    print(self.accouuuunts)
                    if (acccounts.technicians.isEmpty == true)
                    {
                        self.state = .Empty
                    }
                    else {
                        self.state = .loaded
                    }
                    
                }
            
            } catch {
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.state = .Error
                    
                }
                
                
            }///
        
        }.resume()
  
         } }
