// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation
import UIKit

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: nil)
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewController(withIdentifier: self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func perform<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

struct Storyboard {
  enum LaunchScreen: StoryboardSceneType {
    static let storyboardName = "LaunchScreen"
  }
  enum Main: String, StoryboardSceneType {
    static let storyboardName = "Main"

    static func initialViewController() -> UITabBarController {
      guard let vc = storyboard().instantiateInitialViewController() as? UITabBarController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case thirdViewControllerScene = "ThirdViewController"
    static func instantiateThirdViewController() -> ThirdViewController {
      guard let vc = Storyboard.Main.thirdViewControllerScene.viewController() as? ThirdViewController
      else {
        fatalError("ViewController 'ThirdViewController' is not of the expected class ThirdViewController.")
      }
      return vc
    }
  }
  enum Second: String, StoryboardSceneType {
    static let storyboardName = "Second"

    case anotherViewControllerScene = "AnotherViewController"
    static func instantiateAnotherViewController() -> AnotherViewController {
      guard let vc = Storyboard.Second.anotherViewControllerScene.viewController() as? AnotherViewController
      else {
        fatalError("ViewController 'AnotherViewController' is not of the expected class AnotherViewController.")
      }
      return vc
    }
  }
}

struct StoryboardSegue {
}
