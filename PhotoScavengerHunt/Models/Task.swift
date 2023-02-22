//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

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
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to get a breath of nature?"),
            Task(title: "Your favorite local restaurant",
                 description: "Show us your favorite place to grab a bite to eat!"),
            Task(title: "Your favorite spot on-campus",
                 description: "What's the best place to go in between classes to study or just relax?")
        ]
    }
}
