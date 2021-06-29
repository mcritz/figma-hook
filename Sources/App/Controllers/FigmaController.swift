import FluentKit
import Foundation
import Hummingbird
import HummingbirdFluent
import NIO

struct FigmaController {
    func addRoutes(to group: HBRouterGroup) {
        group
//            .get(use: self.list)
//            .get(":id", use: self.get)
            .post(use: self.create)
//            .delete(use: self.deleteAll)
//            .patch(use: self.update)
//            .patch(":id", use: self.updateId)
//            .delete(":id", use: self.deleteId)
    }

    func create(_ request: HBRequest) -> EventLoopFuture<[Todo]> {
        return Todo.query(on: request.db).all()
    }
}
