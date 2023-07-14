//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-05-26.
//

extension ControlSequence {

	/// `Select Graphic Rendition`: Resets colors and style of the characters following this code
	public static let SGR = "\(CSI)m"

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(_ parameter: UInt8) -> String {
		"\(CSI)\(parameter)m"
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(_ parameter1: UInt8, _ parameter2: UInt8) -> String {
		"\(CSI)\(parameter1);\(parameter2)m"
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(_ parameter1: UInt8, _ parameter2: UInt8, _ parameter3: UInt8) -> String {
		"\(CSI)\(parameter1);\(parameter2);\(parameter3)m"
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(_ parameter1: UInt8, _ parameter2: UInt8, _ parameter3: UInt8, _ parameter4: UInt8) -> String {
		"\(CSI)\(parameter1);\(parameter2);\(parameter3);\(parameter4)m"
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(_ parameter1: UInt8, _ parameter2: UInt8, _ parameter3: UInt8, _ parameter4: UInt8, _ parameter5: UInt8) -> String {
		"\(CSI)\(parameter1);\(parameter2);\(parameter3);\(parameter4);\(parameter5)m"
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(parameters: [UInt8]) -> String {
		"\(CSI)\(parameters.lazy.map(\.description).joined(separator: ";"))m"
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(parameters: UInt8...) -> String {
		SGR(parameters: parameters)
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(foreground n: UInt8) -> String {
		SGR(38, 5, n)
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(background n: UInt8) -> String {
		SGR(48, 5, n)
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(foreground r: UInt8, _ g: UInt8, _ b: UInt8) -> String {
		SGR(38, 2, r, g, b)
	}

	/// `Select Graphic Rendition`: Sets colors and style of the characters following this code
	@inlinable public static func SGR(background r: UInt8, _ g: UInt8, _ b: UInt8) -> String {
		SGR(48, 2, r, g, b)
	}
	
}
