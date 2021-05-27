//===----------------------------------------------------------------------===//
//
// This source file is part of the Hummingbird server framework project
//
// Copyright (c) 2021-2021 the Hummingbird authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See hummingbird/CONTRIBUTORS.txt for the list of Hummingbird authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import FluentKit
import Foundation
import Hummingbird

final class Todo: Model, HBResponseCodable {
    static let schema = "todos"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String

    @Field(key: "order")
    var order: Int?

    @Field(key: "url")
    var url: String?

    @Field(key: "completed")
    var completed: Bool?

    init() {}

    init(id: UUID? = nil, title: String, order: Int?, url: String?, completed: Bool?) {
        self.id = id
        self.title = title
        self.order = order
        self.url = url
        self.completed = completed
    }

    func update(from edit: EditTodo) {
        if let title = edit.title {
            self.title = title
        }
        if let order = edit.order {
            self.order = order
        }
        if let completed = edit.completed {
            self.completed = completed
        }
    }

    func update(from todo: Todo) {
        self.title = todo.title
        if let order = todo.order {
            self.order = order
        }
        if let completed = todo.completed {
            self.completed = completed
        }
    }
}

struct EditTodo: HBResponseCodable {
    var title: String?
    var order: Int?
    var completed: Bool?
}
