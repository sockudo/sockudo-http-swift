import Foundation

public struct MessageVersionsFetchOptions: Sendable, Equatable {
  public let limit: UInt?
  public let direction: String?
  public let cursor: String?

  public init(
    limit: UInt? = nil,
    direction: String? = nil,
    cursor: String? = nil
  ) {
    self.limit = limit
    self.direction = direction
    self.cursor = cursor
  }

  var queryItems: [URLQueryItem] {
    var items = [URLQueryItem]()
    if let limit { items.append(URLQueryItem(name: "limit", value: String(limit))) }
    if let direction { items.append(URLQueryItem(name: "direction", value: direction)) }
    if let cursor { items.append(URLQueryItem(name: "cursor", value: cursor)) }
    return items
  }
}
