//
//  Habit+CoreDataProperties.swift
//  HabitsV2
//
//  Created by K Janakan on 7/6/2022.
//
//

import Foundation
import CoreData


extension Habit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Habit> {
        return NSFetchRequest<Habit>(entityName: "Habit")
    }

    @NSManaged public var displaycategory: Int16
    @NSManaged public var displaycolor: Int16
    @NSManaged public var habitdescription: String?
    @NSManaged public var habitfrequencyoccurrence: Int16
    @NSManaged public var habitname: String?
    @NSManaged public var habitrecord: HabitRecord?

}

extension Habit : Identifiable {

}
