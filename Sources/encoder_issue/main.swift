protocol MyStruct: Codable {
  static var structName: String { get }
}

extension MyStruct {
  public func getName() -> String {
    return Self.structName
  }
}

struct User: MyStruct {
  static var structName = "User"
  let name: String
}

struct Me: Model {}

let info = try! TypeDecoder.decode(User.self)
print(info)

let user = User(name: "hello")
let encoded = try? DatabaseEncoder().encode(user)
print(encoded)
let user2 = try? DatabaseDecoder().decode(User.self, encoded!)
print(user2)


