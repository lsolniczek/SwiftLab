enum Position {
    case CEO
    case CTO
}

class Employee {
    var firstName: String
    var lastName: String
    var position: Position? {
        didSet {
            if let position = position {
                switch position {
                case .CEO:
                    self.baseSalary = 3000.0
                case .CTO:
                    self.baseSalary = 2500.0
                }
            }
        }
    }
    var salary: Float? {
        if let baseSalary = baseSalary, let premiumRate = premiumRate {
            return baseSalary + (baseSalary * premiumRate)
        } else {
            return nil
        }
    }
    var baseSalary: Float? {
        didSet {
            if let baseSalary = baseSalary, let position = position  {
                switch (baseSalary, position) {
                case (0..<2700.0, .CEO):
                    self.premiumRate = 0.3
                case (_, .CEO):
                    self.premiumRate = 0.5
                case (2700.0..<5000.0 , _):
                    self.premiumRate = 0.4
                case (_, .CTO):
                    self.premiumRate = 0.6
                default:
                    self.premiumRate = 0.2
                }
            }
        }
    }
    var premiumRate: Float?

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
