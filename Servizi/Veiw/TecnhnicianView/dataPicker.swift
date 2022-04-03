//
//  dataPicker.swift
//  Servizi
//
//  Created by khaled on 3/25/22.
//

import SwiftUI

struct dataPicker: View {
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    @State private var birthDate = Date()
    @State  var age = ""
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate,  in: ...Date(),displayedComponents: .date)
            {
                Text("Select a date")
            }
            
            Text("Date is \(birthDate, formatter: dateFormatter)")
         /*   var   age = dateFormatter.string(from: birthDate )
            Text("\(age)")*/
        }
        
        
    }
}

struct dataPicker_Previews: PreviewProvider {
    static var previews: some View {
        dataPicker()
    }
}
