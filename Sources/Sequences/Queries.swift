//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-04-24.
//

extension ControlQuery {
	
	/// Parses a cursor position response
	public static func DSR(_ response: String) -> (row: Int, column: Int) {
		var i = response.firstIndex(of: "[") ?? response.startIndex
		
		let startOfRow = i
		while response[i] != ";" {
			i = response.index(after: i)
		}
		let row = Int(response[startOfRow...i]) ?? 0
		
		i = response.index(after: i)
		
		let startOfColumn = i
		while response[i] != "R" {
			i = response.index(after: i)
		}
		let column = Int(response[startOfColumn...i]) ?? 0
		
		return (row, column)
	}
	
}
