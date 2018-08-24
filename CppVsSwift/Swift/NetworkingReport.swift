//
//  NetworkingReport.swift
//  CppVsSwift
//
//  Created by Piotr Holub on 05.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

import Foundation
import QuartzCore

class NetworkingReport {
    
    init(){
        
        //testWebsiteLoading(url: "http://ekonom.ug.edu.pl/web/main/")
        testWebsiteLoading(url: "https://www.onet.pl/")
        // let end = CACurrentMediaTime()
        //print(end-start)
        sleep(10000)
        
    }
    
    func testWebsiteLoading(url:String)
    {
        let start2 = CACurrentMediaTime()
        cppGetRequest(url: url)
        let end2 = CACurrentMediaTime()
        print("Cpp \(end2-start2)")
        
        let start = CACurrentMediaTime()
        swiftGetRequest(url: url,completion: { () in
            let end = CACurrentMediaTime()
            print("Swift \(end-start)")
        })
    }
    
    
    func cppGetRequest(url:String){
        let cppAlgorithm = AlgorithmApi()
        cppAlgorithm.getRequest(url)
    }
    func swiftGetRequest(url:String,completion: @escaping () -> Void){
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            //print("Entered the completionHandler")
            //print(data)
            completion()
            }.resume()
    }
    
}
