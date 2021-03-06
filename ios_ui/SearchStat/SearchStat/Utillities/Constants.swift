//
//  Constants.swift
//  SearchStat
//
//  Created by Roman Trekhlebov on 19.12.2017.
//  Copyright © 2017 Евгений Скилиоти. All rights reserved.
//

import Foundation
import UIKit

typealias CompletionHandler = (_ Success: Bool) -> ()
typealias DetailStatResponse = (success: Bool, error: String?, result: [DayStatsV2]?)
typealias DetailStatCompletion = (_ Response: DetailStatResponse) -> ()

//URL Constants
let URL_SCHEME = "http"
let URL_HOST = "195.110.59.16"
let URL_PORT = 8081
let URL_PATH = "/restapi-v3/"

//let BASE_URL = "http://195.110.59.16:8081/"
let BASE_URL = "\(URL_SCHEME)://\(URL_HOST):\(URL_PORT)"
let BASE_URLV2 = "\(BASE_URL)\(URL_PATH)?action="
let SITE_LIST_URL = "\(BASE_URLV2)get-sites&token="
let GENEARAL_STATS_URL = "\(BASE_URLV2)general-statistic&token=<TOKEN>&site=<SITE>"
let DAILY_STATS_URL = "\(BASE_URLV2)daily-statistic&person=<PERSON>&date1=<DATE1>&date2=<DATE2>&token=<TOKEN>&site=<SITE>"

let AUTH_URL = "\(BASE_URLV2)auth&"


//Colors
//let redColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
struct Colors {
    
    static let gradientColorOne = UIColor(red: 100.0/255.0, green: 143.0/255.0, blue: 203.0/255.0, alpha: 1.0)
    static let gradientColorTwo = UIColor(red: 29.0/255.0, green: 64.0/255.0, blue: 100.0/255.0, alpha: 1.0)
    
    
}

//Notification Constants
let NOTIF_USER_DID_CHANGED = Notification.Name("notifUserDataChanged")

//Segues
let TO_TOTAL_STAT = "toTotalStatistic"
let TO_DETAIL_STAT = "toDetailStatistic"
let TO_LOGIN = "toLogin"
let UNWIND = "unwindToMenu"
let TO_DETAIL_CHART = "toDetailChart"
let TO_SOURCE = "toSourceVC"
let TO_FIRST_VC = "backToFirstScreen"

//let TO_CREATE_ACCOUNT = "toCreateAccount"
//let TO_AVATAR_PICKER = "toAvatarPicker"


//User Defaults
let SITE_INDEX = "siteIndex"
let DATA_UPDATE_STRING = "dataUpdateString"
    //auth service
    let TOKEN_KEY = "token"
    let LOGGED_IN_KEY = "loggedin"
    let USER_NAME = "userName"


//let TOKEN_KEY = "token"
//let LOGGED_IN_KEY = "loggedin"
//let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]
