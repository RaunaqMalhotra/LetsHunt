//
//  Task.swift
//  Let's Hunt
//
//  Created by Raunaq Malhotra on 3/22/23.
//

import Foundation
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite restaurant",
                 description: "What's the one restaurant you can go to for the rest of your life?"),
            Task(title: "Your favorite local spot",
                 description: "Is there a place you go to if you want to get away from your busy life for a while?"),
            Task(title: "Your dream vacation city",
                 description: "If you could go to one city in the whole world, which one would it be?"),
            Task(title: "You favorite ice cream place",
                 description: "Everybody loves ice-cream!! What's your go-to ice-cream place? Mine's Franklin Fountain in Philadelphia 😋"),
            Task(title: "Where is your hometown on the Map?",
                 description: "Let's see if you can actually hunt your hometown! Attach a photo taken in your hometown and see it on the map!")
        ]
    }
}

