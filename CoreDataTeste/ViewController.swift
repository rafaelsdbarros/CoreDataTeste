//
//  ViewController.swift
//  CoreDataTeste
//
//  Created by Rafael on 26/09/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {
   
    //get reference to manage our data
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var person: [Person]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func fetchPeople() {
        //fetch the data from Core data
        do {
            self.person = try context.fetch(Person.fetchRequest())
            print(self.person!)
        }catch{
            
        }
    }
    
    func addPerson() {
        let newPerson = Person(context: self.context)
        newPerson.name = "Rafael Barros"
    }
    
    @IBAction func addPerson(_ sender: Any) {
        //get item from core data
        addPerson()
        
    }
    
    @IBAction func getListOfPerson(_ sender: Any) {
        //get item from core data
        fetchPeople()
        
    }
}

