import KituraContracts

public struct IdentifiedModel<I: Identifier & Codable, M: Model>: Codable {
  var id: I
  var model: M
}
