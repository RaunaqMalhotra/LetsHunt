//
//  TaskCell.swift
//  Let's Hunt
//
//  Created by Raunaq Malhotra on 3/22/23.
//

import UIKit

class TaskCell: UITableViewCell {

    
    @IBOutlet weak var completedImage: UIImageView!
    @IBOutlet weak var taskLabel: UILabel!
    
    func configure(with task: Task) {
        taskLabel.text = task.title
        taskLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImage.image = UIImage(systemName: task.isComplete ? "checkmark.circle" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImage.tintColor = task.isComplete ? .systemGreen : .systemRed
    }
}
