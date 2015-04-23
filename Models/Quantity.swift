//
//  Quantity.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Quantity) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A measured or measurable amount.
 *
 *  A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that
 *  are not precisely quantified, including amounts involving arbitrary units and floating currencies.
 */
public class Quantity: FHIRElement
{
	override public class var resourceName: String {
		get { return "Quantity" }
	}
	
	/// Coded form of the unit
	public var code: String?
	
	/// < | <= | >= | > - how to understand the value
	public var comparator: String?
	
	/// System that defines coded unit form
	public var system: NSURL?
	
	/// Unit representation
	public var units: String?
	
	/// Numerical value (with implicit precision)
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["comparator"] {
				presentKeys.addObject("comparator")
				if let val = exist as? String {
					self.comparator = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comparator\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["units"] {
				presentKeys.addObject("units")
				if let val = exist as? String {
					self.units = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"units\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let comparator = self.comparator {
			json["comparator"] = comparator.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let units = self.units {
			json["units"] = units.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

