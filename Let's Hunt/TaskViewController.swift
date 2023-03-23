//
//  TaskViewController.swift
//  Let's Hunt
//
//  Created by Raunaq Malhotra on 3/22/23.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet weak var taskTable: UITableView!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        taskTable.dataSource = self
        tasks = Task.mockedTasks
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // This will reload data in order to reflect any changes made to a task after returning from the detail screen.
        taskTable.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailSegue" {
            if let detailViewController = segue.destination as? TaskDetailViewController,
               // Get the index path for the current selected table view row.
               let selectedIndexPath = taskTable.indexPathForSelectedRow {
                
                // Get the task associated with the slected index path
                let task = tasks[selectedIndexPath.row]
                
                // Set the selected task on the detail view controller.
                detailViewController.task = task
            }
        }
    }
}

extension TaskViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = taskTable.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as? TaskCell else {
            fatalError("Unable to dequeue Task Cell")
        }
        
        cell.configure(with: tasks[indexPath.row])
        return cell
    }
    
    
}

