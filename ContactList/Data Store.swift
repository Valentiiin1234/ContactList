//
//  Data Store.swift
//  ContactList
//
//  Created by Mac on 24.01.2023.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    let names = ["John",
                 "Aaron",
                 "Tim",
                 "Ted",
                 "Steven",
                 "Adam",
                 "Austen",
                 "Bernard",
                 "Carl",
                 "Clayton",
                 "Eric",
                 "Harold",
                 "Jason",
                 "Scott"]
    
    let surnames = ["Smith",
                    "Dow",
                    "Isaacson",
                    "Pennyworth",
                    "Jankins",
                    "White",
                    "Garcia",
                    "Clark",
                    "Martinez",
                    "Lewis",
                    "Lee",
                    "Allen",
                    "Young",
                    "Hernandez"]
    let numbers = ["+11111",
                   "+22222",
                   "+33333",
                   "+44444",
                   "+55555",
                   "+12341",
                   "+09890",
                   "+12560",
                   "+45362",
                   "+019346",
                   "+246879",
                   "+12345",
                   "+876543",
                   "+2345665"]
    let mails = ["qwerty@gmail.com",
                 "asdfg@gmail.com",
                 "zxcvb@gmail.com",
                 "yuiop@gmail.com",
                 "hjkln@gmail.com",
                 "sdfdsfgvdfb@gmail.com",
                 "qwertyui@gmail.com",
                 "zzsderthn@gmail.com",
                 "schbs@gmail.com",
                 "aischak@gmail.com",
                 "rbcjkvj@gmail.com",
                 "cfgbvnjk@gmail.com",
                 "dfg43tergd@gmail.com",
                 "qazxcfgb@gmail.com"]
    
    private init() {}
}

