//
//  NetworkManager.swift
//  Parsing Nested JSON
//
//  Created by Adwait Barkale on 18/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation


class NetworkManager
{
    static let shared = NetworkManager()
    
    func urlRequest(with url: String)
    {
        if let Url = URL(string: url){
            
            URLSession.shared.dataTask(with: Url) { (data, response, error) in
                
                if error != nil{
                    print("Error Hitting Api, Please Check the URL")
                    return
                }
                
                if let safeData = data{
                    //print(safeData)
                    do{
                        let users = try JSONDecoder().decode([User].self, from: safeData)
                        //print(users)
                        //print(users[5].address.city)
                        print("Details of 2nd User Company")
                        let user2CompanyData = users[1].company
                        print("Name - \(user2CompanyData.name)")
                        print("Catch Phrase - \(user2CompanyData.catchPhrase)")
                        print("BS - \(user2CompanyData.bs)")
                    }catch let err{
                        print("Error Decoding - \(err.localizedDescription)")
                    }
                }
            }.resume()
        }
    }
    
}
