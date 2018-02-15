//
//  ActiveTimeReportTVC.swift
//  Work Hours
//
//  Created by Jacob Ahlberg on 2018-02-15.
//  Copyright © 2018 Jacob Ahlberg. All rights reserved.
//

import UIKit

class ActiveTimeReportTVC: UITableViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    // MARK: - IBOutlets
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var abscentLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var startLbl: UILabel!
    @IBOutlet weak var endLbl: UILabel!
    @IBOutlet weak var breakLbl: UILabel!
    @IBOutlet weak var customerLbl: UILabel!
    
    @IBOutlet weak var noteView: UITextView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Class Variables
    
    var activeReport: TimeReport?
    let dateFormatter = DateFormatter()
    
    // MARK: - Application runtime
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let a = activeReport {
            dateFormatter.dateFormat = "yyyy-MM-dd"
            if let date = a.date {
                dateLbl.text = dateFormatter.string(from: date)
            }
            if let abscent = a.abscent {
                abscentLbl.text = NSLocalizedString(String(abscent), comment: String(abscent))
            }
            if let title = a.title {
                titleLbl.text = title
            }
            dateFormatter.dateFormat = "HH:mm"
            if let start = a.startTime {
                startLbl.text = dateFormatter.string(from: start)
            }
            if let end = a.endTime {
                endLbl.text = dateFormatter.string(from: end)
            }
            if let breakText = a.breakTime {
                breakLbl.text = String(breakText)
            }
            if let customer = a.customer {
                customerLbl.text = customer
            }
            if let notes = a.notes {
                noteView.text = notes
            }
        }
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
}
