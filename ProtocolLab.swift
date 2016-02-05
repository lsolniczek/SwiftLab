protocol ProtocolLab {
  func showMeAlert(x: String, y: String, z: String, zz: String)
}

extension ProtocolLab {
    func showMeAlert(x: String, y: String, z: String, zz: String) {
        print(x + y + z + zz)
    }
}
