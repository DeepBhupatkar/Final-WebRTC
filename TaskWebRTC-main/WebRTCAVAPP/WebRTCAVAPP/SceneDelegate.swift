//
//  SceneDelegate.swift
//  WebRTCAVAPP
//
//  Created by DEEP BHUPATKAR on 22/06/24.
//


import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private let config = Config.default

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Create a new window for the window scene
        window = UIWindow(windowScene: windowScene)
        
        // Instantiate the initial view controller
        window?.rootViewController = buildMainViewController()
        
        // Present the window
        window?.makeKeyAndVisible()
    }

    private func buildMainViewController() -> UIViewController {
        
        let webRTCClient = WebRTCClient(iceServers: self.config.webRTCIceServers)
        let signalClient = self.buildSignalingClient()
        let mainViewController = WebRTCAVAPP.MainViewController(signalClient: signalClient, webRTCClient: webRTCClient)
        let navViewController = UINavigationController(rootViewController: mainViewController)
        navViewController.navigationBar.prefersLargeTitles = true
        return navViewController
    }

    private func buildSignalingClient() -> SignalingClient {
        
        //  native websocket support.
        let webSocketProvider: WebSocketProvider
        

            webSocketProvider = NativeWebSocket(url: self.config.signalingServerUrl)

        
        return SignalingClient(webSocket: webSocketProvider)
    }

}


