struct ClosureLab {

    static var closurroVar: ((String, String, Int, Int) -> String)? = { (first, second, firstInt, secondInt) -> String in
        return "\(first), \(second), \(firstInt), \(secondInt)"
    }

    static func closurro() -> (String, String, Int, Int) -> String {
        return { (first, second, firstInt, secondInt) -> String in
            return "\(first), \(second), \(firstInt), \(secondInt)"
        }
    }

    static func closurroBis() -> (String, String, Int, Int) -> String {

        func anonim(x: String, y: String, i: Int, j: Int) -> String {
            return "\(x), \(y), \(i), \(j)"
        }
        return anonim
    }
}

let testClosurro = ClosureLab.closurro()
testClosurro("Lukasz", "Solniczek", 2, 3)

let testClo2 = ClosureLab.closurroBis()
testClo2("Lukasz", "Solniczek", 2, 3)
