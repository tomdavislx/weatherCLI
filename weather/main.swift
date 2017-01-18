//
//  main.swift
//  weather
//
//  Created by Tom Davis on 16/01/2017.
//  Copyright © 2017 Tom Davis. All rights reserved.
//

import Foundation

let weather = Weather()
var location = ""


if CommandLine.arguments.count <= 1 {
    print("No location provided")
    weather.finished = true
} else {
    for index in 0..<CommandLine.arguments.count {
        if index != 0 {
            location += CommandLine.arguments[index] + " "
        }
    }
}

while !weather.finished {
    
    if !weather.apiLaunched {
        
        weather.getTemp(location: location)
        weather.apiLaunched = true
    }
}



