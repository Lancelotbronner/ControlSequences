//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-04-24.
//

//MARK: - Controls

extension ControlSequence {

	/// Starts an escape sequence
	public static let ESC: Character = "\u{1B}"
	
	/// `Save cursor`: Save cursor position, charmap and text attributes
	public static let SC = "\(ESC)7"
	
	/// `Restore cursor`: Restore cursor position, charmap and text attributes
	public static let RC = "\(ESC)8"
	
	//TODO: DECALN
	
	/// `Index`: Move the cursor one line down scrolling if needed
	public static let IND = "\(ESC)D"
	
	/// `Next Line`: Move the cursor to the beginning of the next row
	public static let NEL = "\(ESC)E"
	
	/// `Horizontal Tabulation Set`: Places a tab stop at the current cursor position
	public static let HTS = "\(ESC)H"
	
	/// `Reverse Index`: Move the cursor one line up scrolling if needed
	public static let IR = "\(ESC)M"
	
	//TODO: ST
	
	//TODO: PM
	//TODO: APC
	
}
