//
//  GTNProductImage.swift
//  GootenCore
//
//  Created by Boro Perisic on 7/6/16.
//  Copyright © 2016 Gooten. All rights reserved.
//

import Foundation

public class GTNProductImage: NSObject{
    
    public var url: String = "";
    public var index: Int = 0;
    public var id: Int = 0;
    public var types: Array<String> = [];
    
    init(_ jsonObj: AnyObject) {
        super.init();
        self.parseJson(jsonObj);
    }
    
    func parseJson(jsonObj: AnyObject) {
        if let urlS = jsonObj["Url"] as? String { self.url = urlS; }
        if let indexS = jsonObj["Index"] as? Int { self.index = indexS; }
        
        if let idObj = jsonObj["Id"] {
            if idObj is String, let idS = idObj as? String, let idI = Int(idS){
                self.id = idI;
            } else if idObj is Int, let idI = idObj as? Int {
                self.id = idI;
            }
        }
        
        if let typesS = jsonObj["ImageTypes"] as? Array<String> { self.types = typesS; }
    }
}