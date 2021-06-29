import FluentKit

struct CreateFigmaEvent: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(FigmaEvent.schema)
            .id()
            .field("event_type", .string, .required)
            .field("passcode", .string, .required)
            .field("timestamp", .string, .required)
            .field("webhook_id", .string, .required)
            .field("file_key", .string)
            .field("file_name", .string)
            .field("triggered_by", .data)
            .field("created_at", .datetime)
            .field("description", .string)
            .field("label", .string)
            .field("version_id", .string)
            .field("created_components", .array(of: .data))
            .field("deleted_components", .array(of: .data))
            .field("modified_components", .array(of: .data))
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(FigmaEvent.schema).delete()
    }
}
