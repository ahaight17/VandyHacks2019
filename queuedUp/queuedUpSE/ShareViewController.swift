//
//  ShareViewController.swift
//  queuedUpSE
//
//  Created by Alex Haight on 11/1/19.
//  Copyright © 2019 Alex Haight. All rights reserved.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {

    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        return true
    }

    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
        // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
        //let url = URL(string: "https://ptsv2.com/t/ngiaa-1572674328/post")!
        //var request = URLRequest(url: url)
        self.extensionContext!.completeRequest(returningItems: [], completionHandler: nil)
        print("hey there");
        print(self.extensionContext!.inputItems[0]);
    }

    override func configurationItems() -> [Any]! {
        // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
        return []
    }

}
