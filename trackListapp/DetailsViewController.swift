//
//  DetailsViewController.swift
//  trackListapp
//
//  Created by Никита Микрюков on 10.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
 @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var track: Track!
    override func viewDidLoad() {
        super.viewDidLoad()

        trackNameLabel.text = track.track
        trackImageView.image = UIImage(named: track.track)
       
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
