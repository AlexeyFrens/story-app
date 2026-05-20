//
//  StoryScreen.swift
//  StoryApp
//
//  Created by Joao Carlos Lima on 18/05/26.
//

import SwiftUI

protocol StoryScreen: View {
    var screenNumber: Int { get }
    var onNext: () -> Void { get }
}
