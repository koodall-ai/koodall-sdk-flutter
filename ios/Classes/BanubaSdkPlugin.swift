// Autogenerated from Pigeon (v10.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

enum SeverityLevel: Int {
  case debug = 0
  case info = 1
  case warning = 2
  case error = 3
}

/// An entry point to Banuba SDK
///
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol BanubaSdkManager {
  /// Intialize common banuba SDK resources. This must be called before any
  /// other call. Counterpart `deinitialize` exists.
  ///
  /// parameter resourcePath: paths to cutom resources folders
  /// parameter clientTokenString: client token
  /// parameter logLevel: log level
  func initialize(resourcePath: [String], clientTokenString: String, logLevel: SeverityLevel) throws
  /// Releases common Banuba SDK resources.
  func deinitialize() throws
  /// Creates and attaches render processing to a specific view
  func attachWidget(banubaId: Int64) throws
  /// Opens Camera
  func openCamera() throws
  /// Closes Camera
  func closeCamera() throws
  /// Starts render processing. Next, use loadEffect for applying effects
  func startPlayer() throws
  /// Stops render processing. Effects will not be applied.
  func stopPlayer() throws
  /// Loads effect. Invoke this method after startPlayer
  func loadEffect(path: String, synchronously: Bool) throws
  /// Unloads effect. Invoke this method after startPlayer
  func unloadEffect() throws
  /// Used for passing specific expressions to interact with an effect.
  func evalJs(script: String) throws
  /// Sets camera zoom level
  func setZoom(zoom: Double) throws
  /// Enables flashlight. Available only for back camera facing.
  func enableFlashlight(enabled: Bool) throws
  /// Start video recording
  func startVideoRecording(filePath: String, captureAudio: Bool, width: Int64, height: Int64) throws
  /// Stops video recording
  func stopVideoRecording(completion: @escaping (Result<Void, Error>) -> Void)
  /// Takes photo from camera
  func takePhoto(filePath: String, width: Int64, height: Int64, completion: @escaping (Result<Void, Error>) -> Void)
  /// Sets camera facing: front, back
  func setCameraFacing(front: Bool) throws
  /// Processes image with applied effect
  func processImage(sourceFilePath: String, destFilePath: String, completion: @escaping (Result<Void, Error>) -> Void)
  /// Starts image editing mode
  func startEditingImage(sourceImageFilePath: String, completion: @escaping (Result<Void, Error>) -> Void)
  /// Ending editing image and save result to destination file
  func endEditingImage(destImageFilePath: String, completion: @escaping (Result<Void, Error>) -> Void)
  /// Discard editing image mode
  func discardEditingImage() throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class BanubaSdkManagerSetup {
  /// The codec used by BanubaSdkManager.
  /// Sets up an instance of `BanubaSdkManager` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: BanubaSdkManager?) {
    /// Intialize common banuba SDK resources. This must be called before any
    /// other call. Counterpart `deinitialize` exists.
    ///
    /// parameter resourcePath: paths to cutom resources folders
    /// parameter clientTokenString: client token
    /// parameter logLevel: log level
    let initializeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.initialize", binaryMessenger: binaryMessenger)
    if let api = api {
      initializeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let resourcePathArg = args[0] as! [String]
        let clientTokenStringArg = args[1] as! String
        let logLevelArg = SeverityLevel(rawValue: args[2] as! Int)!
        do {
          try api.initialize(resourcePath: resourcePathArg, clientTokenString: clientTokenStringArg, logLevel: logLevelArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      initializeChannel.setMessageHandler(nil)
    }
    /// Releases common Banuba SDK resources.
    let deinitializeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.deinitialize", binaryMessenger: binaryMessenger)
    if let api = api {
      deinitializeChannel.setMessageHandler { _, reply in
        do {
          try api.deinitialize()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      deinitializeChannel.setMessageHandler(nil)
    }
    /// Creates and attaches render processing to a specific view
    let attachWidgetChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.attachWidget", binaryMessenger: binaryMessenger)
    if let api = api {
      attachWidgetChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let banubaIdArg = args[0] is Int64 ? args[0] as! Int64 : Int64(args[0] as! Int32)
        do {
          try api.attachWidget(banubaId: banubaIdArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      attachWidgetChannel.setMessageHandler(nil)
    }
    /// Opens Camera
    let openCameraChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.openCamera", binaryMessenger: binaryMessenger)
    if let api = api {
      openCameraChannel.setMessageHandler { _, reply in
        do {
          try api.openCamera()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      openCameraChannel.setMessageHandler(nil)
    }
    /// Closes Camera
    let closeCameraChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.closeCamera", binaryMessenger: binaryMessenger)
    if let api = api {
      closeCameraChannel.setMessageHandler { _, reply in
        do {
          try api.closeCamera()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      closeCameraChannel.setMessageHandler(nil)
    }
    /// Starts render processing. Next, use loadEffect for applying effects
    let startPlayerChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.startPlayer", binaryMessenger: binaryMessenger)
    if let api = api {
      startPlayerChannel.setMessageHandler { _, reply in
        do {
          try api.startPlayer()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      startPlayerChannel.setMessageHandler(nil)
    }
    /// Stops render processing. Effects will not be applied.
    let stopPlayerChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.stopPlayer", binaryMessenger: binaryMessenger)
    if let api = api {
      stopPlayerChannel.setMessageHandler { _, reply in
        do {
          try api.stopPlayer()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      stopPlayerChannel.setMessageHandler(nil)
    }
    /// Loads effect. Invoke this method after startPlayer
    let loadEffectChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.loadEffect", binaryMessenger: binaryMessenger)
    if let api = api {
      loadEffectChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let pathArg = args[0] as! String
        let synchronouslyArg = args[1] as! Bool
        do {
          try api.loadEffect(path: pathArg, synchronously: synchronouslyArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      loadEffectChannel.setMessageHandler(nil)
    }
    /// Unloads effect. Invoke this method after startPlayer
    let unloadEffectChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.unloadEffect", binaryMessenger: binaryMessenger)
    if let api = api {
      unloadEffectChannel.setMessageHandler { _, reply in
        do {
          try api.unloadEffect()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      unloadEffectChannel.setMessageHandler(nil)
    }
    /// Used for passing specific expressions to interact with an effect.
    let evalJsChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.evalJs", binaryMessenger: binaryMessenger)
    if let api = api {
      evalJsChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let scriptArg = args[0] as! String
        do {
          try api.evalJs(script: scriptArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      evalJsChannel.setMessageHandler(nil)
    }
    /// Sets camera zoom level
    let setZoomChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.setZoom", binaryMessenger: binaryMessenger)
    if let api = api {
      setZoomChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let zoomArg = args[0] as! Double
        do {
          try api.setZoom(zoom: zoomArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setZoomChannel.setMessageHandler(nil)
    }
    /// Enables flashlight. Available only for back camera facing.
    let enableFlashlightChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.enableFlashlight", binaryMessenger: binaryMessenger)
    if let api = api {
      enableFlashlightChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let enabledArg = args[0] as! Bool
        do {
          try api.enableFlashlight(enabled: enabledArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      enableFlashlightChannel.setMessageHandler(nil)
    }
    /// Start video recording
    let startVideoRecordingChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.startVideoRecording", binaryMessenger: binaryMessenger)
    if let api = api {
      startVideoRecordingChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let filePathArg = args[0] as! String
        let captureAudioArg = args[1] as! Bool
        let widthArg = args[2] is Int64 ? args[2] as! Int64 : Int64(args[2] as! Int32)
        let heightArg = args[3] is Int64 ? args[3] as! Int64 : Int64(args[3] as! Int32)
        do {
          try api.startVideoRecording(filePath: filePathArg, captureAudio: captureAudioArg, width: widthArg, height: heightArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      startVideoRecordingChannel.setMessageHandler(nil)
    }
    /// Stops video recording
    let stopVideoRecordingChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.stopVideoRecording", binaryMessenger: binaryMessenger)
    if let api = api {
      stopVideoRecordingChannel.setMessageHandler { _, reply in
        api.stopVideoRecording() { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      stopVideoRecordingChannel.setMessageHandler(nil)
    }
    /// Takes photo from camera
    let takePhotoChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.takePhoto", binaryMessenger: binaryMessenger)
    if let api = api {
      takePhotoChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let filePathArg = args[0] as! String
        let widthArg = args[1] is Int64 ? args[1] as! Int64 : Int64(args[1] as! Int32)
        let heightArg = args[2] is Int64 ? args[2] as! Int64 : Int64(args[2] as! Int32)
        api.takePhoto(filePath: filePathArg, width: widthArg, height: heightArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      takePhotoChannel.setMessageHandler(nil)
    }
    /// Sets camera facing: front, back
    let setCameraFacingChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.setCameraFacing", binaryMessenger: binaryMessenger)
    if let api = api {
      setCameraFacingChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let frontArg = args[0] as! Bool
        do {
          try api.setCameraFacing(front: frontArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setCameraFacingChannel.setMessageHandler(nil)
    }
    /// Processes image with applied effect
    let processImageChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.processImage", binaryMessenger: binaryMessenger)
    if let api = api {
      processImageChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let sourceFilePathArg = args[0] as! String
        let destFilePathArg = args[1] as! String
        api.processImage(sourceFilePath: sourceFilePathArg, destFilePath: destFilePathArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      processImageChannel.setMessageHandler(nil)
    }
    /// Starts image editing mode
    let startEditingImageChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.startEditingImage", binaryMessenger: binaryMessenger)
    if let api = api {
      startEditingImageChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let sourceImageFilePathArg = args[0] as! String
        api.startEditingImage(sourceImageFilePath: sourceImageFilePathArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      startEditingImageChannel.setMessageHandler(nil)
    }
    /// Ending editing image and save result to destination file
    let endEditingImageChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.endEditingImage", binaryMessenger: binaryMessenger)
    if let api = api {
      endEditingImageChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let destImageFilePathArg = args[0] as! String
        api.endEditingImage(destImageFilePath: destImageFilePathArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      endEditingImageChannel.setMessageHandler(nil)
    }
    /// Discard editing image mode
    let discardEditingImageChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.banuba_sdk.BanubaSdkManager.discardEditingImage", binaryMessenger: binaryMessenger)
    if let api = api {
      discardEditingImageChannel.setMessageHandler { _, reply in
        do {
          try api.discardEditingImage()
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      discardEditingImageChannel.setMessageHandler(nil)
    }
  }
}