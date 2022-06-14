//
//  HabitRecord+CoreDataProperties.swift
//  HabitsV2
//
//  Created by K Janakan on 7/6/2022.
//
//

import Foundation
import CoreData


extension HabitRecord {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HabitRecord> {
        return NSFetchRequest<HabitRecord>(entityName: "HabitRecord")
    }

    @NSManaged public var date: Date?
    @NSManaged public var day: Int16
    @NSManaged public var habit: Habit?

}

extension HabitRecord : Identifiable {

}
