//
//  GTNUserInfo.swift
//  GootenCore
//
//  Created by Boro Perisic on 7/21/16.
//  Copyright © 2016 Gooten. All rights reserved.
//

import Foundation

open class GTNUserInfo: NSObject{
    
    open var languageCode: String = "";
    open var countryCode: String = "";
    open var countryName: String = "";
    open var currencyFormat: String = "";
    open var currencyCode: String = "";
    open var currencyName: String = "";
    
    init(_ jsonObj: AnyObject) {
        super.init();
        self.parseJson(jsonObj);
    }
    
    func parseJson(_ jsonObj: AnyObject){
        if let languageCodeS = jsonObj["LanguageCode"] as? String { self.languageCode = languageCodeS; }
        if let countryCodeS = jsonObj["CountryCode"] as? String { self.countryCode = countryCodeS; }
        if let countryNameS = jsonObj["CountryName"] as? String { self.countryName = countryNameS; }
        if let currencyFormatS = jsonObj["CurrencyFormat"] as? String { self.currencyFormat = currencyFormatS; }
        if let currencyCodeS = jsonObj["CurrencyCode"] as? String { self.currencyCode = currencyCodeS; }
        if let currencyNameS = jsonObj["CurrencyName"] as? String { self.currencyName = currencyNameS; }
    }
}
