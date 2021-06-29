import FluentKit
import Foundation
import Hummingbird

struct FigmaEvent: Codable {
    let event_type: EventType
    let passcode: String
    let timestamp: Date
    let webhook_id: Int
    
    let file_key: String?
    let file_name: String?
    
    let triggered_by: FigmaUser?
    
    let created_at: Date?
    let description: String?
    let label: String?
    let version_id: Int?
    
    let created_components: [ComponentData]?
    let deleted_components: [ComponentData]?
    let modified_components: [ComponentData]?
}
