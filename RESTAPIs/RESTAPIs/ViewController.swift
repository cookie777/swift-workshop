//
//  ViewController.swift
//  RESTAPIs
//
//  Created by Takayuki Yamaguchi on 2020-12-29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .magenta
        fetchURLData()
    }

    func fetchURLData(){
        guard let url = URL(string: "https://api.edamam.com/api/food-database/v2/parser?ingr=apple&category=generic-foods&app_id=081467d5&app_key=9f150a888d61d5dd2250814a443e16ce") else {return}
        
        
        let task = URLSession.shared.dataTask(with: url) { (data, res, err) in
            
            if let err = err{
                print("Accessing error: \(err)")
                return
            }
            
            guard let httpResponse = res as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(res)")
                return
            }
            
            print("I got \(data)")
            
            
            //getting as plain text
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
                print(json)
            }catch{
                print("error parsing into json")
            }
            
        }
        
        task.resume()
    }
    

}




// ref
//https://learnappmaking.com/urlsession-swift-networking-how-to/
//https://medium.com/@nictheawesome/using-codable-with-nested-json-is-both-easy-and-fun-19375246c9ff
