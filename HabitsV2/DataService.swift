//
//  DataService.swift
//  HabitsV2
//
//  Created by K Janakan on 7/6/2022.
//

import Foundation


class DataService {
    
    private init(){}
    static let sharedDataService = DataService()
    
    func addHabit(habitname: String?,habitdescription: String?,displaycategory: Int16,displaycolor: Int16,habitfrequencyoccurrence: Int16) -> Bool{
        
        let newHabit = Habit(context: PersistenceController.shared.container.viewContext)
        
        newHabit.habitname = habitname
        newHabit.habitdescription = habitdescription
        newHabit.displaycategory = displaycategory
        newHabit.displaycolor = displaycolor
        newHabit.habitfrequencyoccurrence = habitfrequencyoccurrence
        
        newHabit.didSave()
        
        do{
            try PersistenceController.shared.container.viewContext.save()
        }
        catch{
            print(error)
        }
        
        
        return true
    }
    
    //sample data loading
    func loadsSampleHabits(){
        
        self.addHabit(habitname: "testhabit", habitdescription: "testhabit description", displaycategory: 1, displaycolor: 2, habitfrequencyoccurrence: 3)
        
        
        self.addHabit(habitname: "testhabit 2", habitdescription: "testhabit description 2", displaycategory: 1, displaycolor: 2, habitfrequencyoccurrence: 3)
        
        self.addHabit(habitname: "testhabit 3", habitdescription: "testhabit description  3", displaycategory: 1, displaycolor: 2, habitfrequencyoccurrence: 3)
        
        self.addHabit(habitname: "testhabit 4", habitdescription: "testhabit description 4", displaycategory: 1, displaycolor: 2, habitfrequencyoccurrence: 3)
        
        
    }

}

