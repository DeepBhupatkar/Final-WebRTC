//
//  main.swift
//  SignalingServer
//
//
//  Created by DEEP BHUPATKAR on 22/06/24.
//

import Foundation

let server = try WebSocketServer()
server.start()
RunLoop.main.run()
