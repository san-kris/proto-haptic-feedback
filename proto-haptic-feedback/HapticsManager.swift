//
//  HapticsManager.swift
//  proto-haptic-feedback
//
//  Created by Santosh Krishnamurthy on 3/8/23.
//

import UIKit

final class HapticsManager{
    static let shared = HapticsManager()
    
    private init(){}
    
    public func selectionVibrate(){
        DispatchQueue.main.async {
            let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
            /*
             Calling the generator’s prepare() method puts the Taptic Engine in a prepared state.
             To preserve power, the Taptic Engine stays in this state for only a short period of time
             (on the order of seconds), or until you next trigger feedback.
             */
            selectionFeedbackGenerator.prepare()
            // you can use other feedback generator methods in the generator instance
            selectionFeedbackGenerator.selectionChanged()
        }
    }
    
    public func vibrate(for type:UINotificationFeedbackGenerator.FeedbackType){
        DispatchQueue.main.async {
            print("generating feedback oof type: \(type)")
            let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
            notificationFeedbackGenerator.prepare()
            notificationFeedbackGenerator.notificationOccurred(type)
        }
    }
}
