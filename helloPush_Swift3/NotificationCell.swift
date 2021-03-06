//
//  NotificationCell.swift
//  helloPush_Swift3
//
//  Created by Milan Strnad on 27/05/17.
//  Copyright © 2017 Ananth. All rights reserved.
//

import UIKit

class NotificationCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
}

extension NotificationCell: CellConfigurable {
    func configure(with model: CellConvertible) {
        guard let model = model as? NotificationCellModel else {
            return
        }

        messageLabel.text = model.message
    }
}
