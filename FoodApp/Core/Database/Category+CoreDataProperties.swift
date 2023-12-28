//
//  Category+CoreDataProperties.swift
//  FoodApp
//
//  Created by Ary Sugiarto on 14/12/23.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var image: String?

}

extension Category : Identifiable {

}
