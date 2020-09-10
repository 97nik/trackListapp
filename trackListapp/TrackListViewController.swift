//
//  TrackListViewController.swift
//  trackListapp
//
//  Created by Никита Микрюков on 10.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import UIKit

class TrackListViewController: UITableViewController {
   
    //инцилизиурем массив
    var trackList = Track.getTrackList()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trackList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackList", for: indexPath)
       
        let track = trackList[indexPath.row]
        cell.textLabel?.text = track.artist
        cell.detailTextLabel?.text = track.song
        cell.imageView?.image = UIImage(named: track.track)
 
        return cell
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentTrack = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(currentTrack, at: sourceIndexPath.row)
        
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
     //MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.track = trackList[indexPath.row]
   }
    

}
