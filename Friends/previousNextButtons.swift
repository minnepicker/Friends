//
//  previousNextButtons.swift
//  Friends
//
//  Created by morse on 3/7/19.
//  Copyright © 2019 morse. All rights reserved.
//

var position = 0

enum IndexPosition {
    case last
    case previous
    case next
}

func moveIndex(to: IndexPosition, list: [Contact]) -> Int {
    switch to {
    case .last:
        position = (list.count - 1)
        return position
    case .previous:
        position = position == 0 ? (list.count - 1) : position - 1
        return position
    case .next:
        position = position == (list.count - 1) ? 0 : position + 1
        return position
    }
}

