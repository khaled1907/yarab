//
//  postReview.swift
//  Servizi
//
//  Created by khaled on 5/3/22.
//


import Foundation
import SwiftUI
class PostReview : ObservableObject{
    
    struct request : Codable {
        var content : String
        var rate : Int
        var appointmentId : String
         
    }
    struct response : Codable {
        var msg : String
    }
    
    
    func postReview(content : String, rate : Int, appointmentId: String, token : String){
        
        guard let url = URL(string :"https://servizi.seifahmed.com/user/postreview") else {
            print("Invalid Url")
            return
            }
        let body = request(content: content, rate: rate, appointmentId: appointmentId)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(body)
        request.addValue(token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { (data , resp , error) in
            if let error = error {
                print(error.localizedDescription)
                return }
            guard let resp = resp as? HTTPURLResponse else { return }
            print(resp.statusCode)
            if (resp.statusCode == 201)
            {
                print("success , status code 201")
                guard let decoded = try? JSONDecoder().decode(response.self, from: data!)
                else {
                    print("error in decoding")
                    return
                }
                print(decoded.msg)
            }
            else {
                print("status code not 201")
            }
        
        
        
        }.resume()
        
        
        
    }
}
