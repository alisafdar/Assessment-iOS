//
//  Application.swift
//  Assessment
//

import UIKit

@inline(__always) func DocumentDirectoryURL() {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
}

struct Application {

    static var delegate: AppDelegate { return UIApplication.shared.delegate as! AppDelegate }    
    static var apiKey: String = "Rh8SJQzHfdIXUk45JXrIjQNGEXjyO2zi"
	static var token: String = String()
}
