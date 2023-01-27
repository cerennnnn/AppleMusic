//
//  ViewController.swift
//  AppleMusicDesign
//
//  Created by Ceren Güneş on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var musicTableView: UITableView!
    
    var musicList = [Music]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicTableView.delegate = self
        musicTableView.dataSource = self
        
        let m1 = Music(imageName: "pureThrowback", title: "12.05 - 13.00", subtitle: "Pure Throwback Radio", info: "An amped-up time capsule from the 80s, 90s, and 2000s.")
        let m2 = Music(imageName: "hipHop", title: "13.00 - 14.00", subtitle: "Hip-Hop/R&B Throwback with Lowkey", info: "From Drake to Kelly Rowland, we're spinning 2011's hitmakers.")
        let m3 = Music(imageName: "2000s", title: "14.00 - 15.00", subtitle: "2000s Essentials Radio", info: "Rediscover songs you know and love from the new millennium.")
        let m4 = Music(imageName: "theEstelleShow", title: "15.00 - 17.00", subtitle: "The Estelle Show", info: "Estelle is back with a beautiful Love on A Wednesday playlist.")
        let m5 = Music(imageName: "dotty", title: "LIVE · 17.00 - 18.00", subtitle: "The Agenda Radio with Dotty", info: "Dotty satulates Headie One on his new single \"Martin's Sofa\".")
        let m6 = Music(imageName: "indie", title: "19.00 - 20.00", subtitle: "indie + chill", info: "Gentle indie pop and rock melodies that make moments...")
        let m7 = Music(imageName: "todaysHits", title: "20.00 - 22.00", subtitle: "Today's Hits", info: "The biggest songs in pop, hip-hop, R&B, and more.")
        let m8 = Music(imageName: "matt", title: "22.00 - 00.00", subtitle: "The Matt Wilkinson Show", info: "Spinning new music from Rosalia, Samia and Gorillaz.")
        let m9 = Music(imageName: "nadeska", title: "00.00 - 1.00", subtitle: "R&B Now Radio with Nadeska Alexis", info: "Discover the freshest R&B cuts from the Apple Music playlist.")
        let m10 = Music(imageName: "brooke", title: "1.00 - 2.00", subtitle: "The Chart Show with Brooke Reese", info: "Featuring Future, Miguel, and Miley Cyrus.")
        
        musicList = [m1, m2, m3, m4, m5, m6, m7, m8, m9, m10]
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MusicTableViewCell
        
        let item = musicList[indexPath.row]
        
        cell.musicImage.image = UIImage(named: item.imageName!)
        cell.title.text = item.title
        cell.subtitle.text = item.subtitle
        cell.info.text = item.info
        
        return cell
    }
}
