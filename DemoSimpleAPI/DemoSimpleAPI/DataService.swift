//
//  DataService.swift
//  DemoSimpleAPI
//
//  Created by Đinh Văn Trình on 6/25/19.
//  Copyright © 2019 Wes.vn. All rights reserved.
//

import UIKit

class DataService {
    
    static var sharedInstance: DataService = DataService()
    
    var users = [User]()
    
    func getInfoUser(completedHandle: @escaping([User]) -> Void) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos?fbclid=IwAR0oULwAPtXGwk81Gn06F58EfGsbd0m95DebE2JfFwUjuVuFCwIJzl6eehk") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        let downloadTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            do {
                let recivedData = try JSONDecoder().decode([User].self, from: data!)
                self.users = recivedData
                //print(categoryMusicData)
                DispatchQueue.main.async {
                    completedHandle(self.users)
                }
            } catch {
                print(error)
            }
        })
        
        downloadTask.resume()
        
    }
}
