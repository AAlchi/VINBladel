//
//  InspectionDataClass.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 3/5/24.
//

import Foundation
import SwiftUI

class InspectionDataClass: ObservableObject {
    @Published var inspectionData:inspectionDataStruct = inspectionDataStruct(general: [], brakes: [], underCar: [], tire: [], multiPoint: [])
    @Published var curView:Int = 0
    init() {
        createArrays()
    }
    func createArrays() {
        let generalItems = ["Wiper Blades", "Head Lights", "Mini Lights", "Air Filter", "Cabin Air Filter", "PCV Value", "Washer Fluid", "Engine Oil", "Power Steering Fluid", "Master Cyl. Fluid Level", "Brake Fluid", "Coolant Hoses", "Engine Coolant", "Battery Test", "Battery Accessories", "Start/Charge", "Belts", "Belt Tensioner", "Spark Plugs", "Fuel Filter", "Ignition  Wires", "Valve Cover Gasket", "Power Steering Hose", "Timing Belt", "Transfer Case/Differential Fluid", "Transmission Fluid"]
        let tireItems = ["Left Front", "Left Rear", "Right Front", "Right Rear", "Spare", "Tire Maintenance", "Alignment Check"]
        let multiPointItems = ["Wiper Blades", "Head Lights", "Mini Lights", "Air Filter", "Cabin Air Filter", "PCV Value", "Washer Fluid", "Engine Oil", "Power Steering Fluid", "Master Cyl. Fluid Level", "Brake Fluid", "Coolant Hoses", "Engine Coolant"]
        let underCarItems = ["Exhaust Sytem", "U-Joint", "Idler/Pitman Arm", "Center Link", "Bushings", "Link Pins", "Tie Rod Ends", "Ball Joints", "Rack & Pinion Assembly", "CV Boots/Joints", "Wheel Bearings", "Struts", "Shocks", "Wiper"]
        let brakesItems = ["LF Pad", "LR Pad/Shoe", "Rear Clean/Adj", "Brake Hose(s)", "Parking Cables", "Other Brake Services", "LF Rotor / RF Rotor", "Drum LR Rotor / Drum RR Rotor", "RF Pad", "RR Pad"]
        for i in generalItems {
            inspectionData.general.append(ChoiceStruct(title: i, choice: "OK"))
        }
        for i in brakesItems {
            inspectionData.brakes.append(ChoiceStruct(title: i, choice: "OK"))
        }
        for i in underCarItems {
            inspectionData.underCar.append(ChoiceStruct(title: i, choice: "OK"))
        }
        for i in multiPointItems {
            inspectionData.multiPoint.append(ChoiceStruct(title: i, choice: "OK"))
        }
        for i in tireItems {
            inspectionData.tire.append(ChoiceStruct(title: i, choice: "OK"))
        }
    }
    func returnArray(array: String) -> [ChoiceStruct] {
        switch array {
        case "general":
            return inspectionData.general
        case "brakes":
            return inspectionData.brakes
        case "underCar":
            return inspectionData.underCar
        case "multiPoint":
            return inspectionData.multiPoint
        case "tire":
            return inspectionData.tire
        default:
            return inspectionData.general
        }
    }
    func updateArrays(array: String, index: Int, newState: String) {
        switch array {
        case "general":
            inspectionData.general[index].choice = newState
        case "brakes":
            inspectionData.brakes[index].choice = newState
        case "underCar":
            inspectionData.underCar[index].choice = newState
        case "multiPoint":
            inspectionData.multiPoint[index].choice = newState
        case "tire":
            inspectionData.tire[index].choice = newState
        default:
            print("Error")
        }
    }
}

struct inspectionDataStruct: Hashable {
    var general: [ChoiceStruct]
    var brakes: [ChoiceStruct]
    var underCar: [ChoiceStruct]
    var tire: [ChoiceStruct]
    var multiPoint: [ChoiceStruct]
}
