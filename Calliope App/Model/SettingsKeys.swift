//
//  SettingsKeys.swift
//  Calliope App
//
//  Created by Tassilo Karge on 29.06.19.
//  Copyright © 2019 calliope. All rights reserved.
//

import Foundation

public struct Settings {
	static func registerDefaults() {
		var defaultSettings: [String: Any] = [:]
		for key in SettingsKey.allCases {
			let defaultValue: Any
			switch key {
			case .localEditorOn:
				defaultValue = false
			case .makeCodeOn:
				defaultValue = true
			case .robertaOn:
				defaultValue = true
			case .playgroundsOn:
				defaultValue = true
			case .makecodeUrl:
				defaultValue = "makecode.calliope.cc"
			case .robertaUrl:
				defaultValue = "https://lab.open-roberta.org/#loadSystem&&calliope2017"
			case .appVersion:
				defaultValue = "1.0"
			}
			defaultSettings[key.rawValue] = defaultValue
		}
		UserDefaults.standard.register(defaults: defaultSettings)
	}
}

public enum SettingsKey: String, CaseIterable {
	case localEditorOn = "localEditorOnPreference"
	case makeCodeOn = "makecodeOnPreference"
	case robertaOn = "robertaOnPreference"
	case playgroundsOn = "playgroundsOnPreference"

	case makecodeUrl = "makecodeUrlPreference"
	case robertaUrl = "robertaUrlPreference"

	case appVersion = "appVersionInformationPreference"
}