import RealmSwift

class Task: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0

    // タイトル
    @objc dynamic var title = ""

    // 内容
    @objc dynamic var contents = ""

    // 日時
    @objc dynamic var date = Date()
    
    // 日時
    @objc dynamic var category = "" 
    
    // id をプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
}

//
//  Task.swift
//  taskapp-2
//
//  Created by 木村太郎 on 2020/08/29.
//  Copyright © 2020 taro.kimura. All rights reserved.
//

