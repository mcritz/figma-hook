import FluentKit
import Foundation
import Hummingbird

class FigmaEvent: Model, HBResponseCodable {
    static var schema = "figmaevents"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "event_type")
    var event_type: EventType
    @Field(key: "passcode")
    var passcode: String
    @Field(key: "timestamp")
    var timestamp: String
    @Field(key: "webhook_id")
    var webhook_id: String
    
    @Field(key: "file_key")
    var file_key: String?
    @Field(key: "file_name")
    var file_name: String?
    
    @Field(key: "triggered_by")
    var triggered_by: FigmaUser?
    
    @Field(key: "created_at")
    var created_at: String?
    @Field(key: "description")
    var description: String?
    @Field(key: "label")
    var label: String?
    @Field(key: "version_id")
    var version_id: String?
    
    @Field(key: "created_components")
    var created_components: [ComponentData]?
    @Field(key: "deleted_components")
    var deleted_components: [ComponentData]?
    @Field(key: "modified_components")
    var modified_components: [ComponentData]?
    
    required init() { }
}
