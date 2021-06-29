import Foundation

enum EventType: String, Codable, RawRepresentable {
    case ping = "PING"
    case fileUpdate = "FILE_UPDATE"
    case fileVersionUpdate = "FILE_VERSION_UPDATE"
    case fileDelete = "FILE_DELETE"
    case libraryPublish = "LIBRARY_PUBLISH"
    case fileComment = "FILE_COMMENT"
}
