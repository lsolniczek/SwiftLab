enum URLComposer {
  case UserCreate
  case UserUpdate
  case UserRemove
  case UserShow

  var method: String {
    switch self {
      case .UserCreate:
        return "POST"
      case .UserUpdate:
        return "POST"
      case .UserRemove:
        return "DELETE"
      case .UserShow:
        return "GET"
    }
  }

  var path: String {
    switch self {
      case .UserCreate:
        return "/users/create"
      case .UserUpdate:
        return "/user/1/update"
      case .UserRemove:
        return "/user/1/delete"
      case .UserShow:
        return "/user/1/"
    }
  }

}
