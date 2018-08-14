//
//  Event.swift
//  Tennis Tracker
//
//  Created by Emeka Ezike on 8/13/18.
//  Copyright © 2018 Emeka Ezike. All rights reserved.
//

import UIKit

class Event: Codable {
    var name : String
    var date : String
    var score : Int

    init(name: String, date: String, score: Int)
    {
        self.name = name
        self.date = date
        self.score = score
    }
}
