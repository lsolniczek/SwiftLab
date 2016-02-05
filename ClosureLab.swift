struct ClosureLab {
    static func closurro() -> (String, String, Int, Int) -> String {
        return { (first, second, firstInt, secondInt) -> String in
            return "\(first), \(second), \(firstInt), \(secondInt)"
        }
    }
}
