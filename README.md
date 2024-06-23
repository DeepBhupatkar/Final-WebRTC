# WebRTC iOS App (CONNECT BEYOND WORDS: YOUR WORLD, YOUR VOICE, YOUR VISION)

# Developed an iOS application for real-time audio and video calling using WebRTC technology Created By Deep Bhupatkar. 


## What is WebRTC !?

Web Real-Time Communication, is an open-source project that provides web applications and sites with real-time communication capabilities via simple application programming interfaces (APIs). It allows for audio, video, and data sharing between browser clients (peers) without the need for plugins or intermediary servers.

- Uses both UDP and TCP, with a preference for UDP due to its low latency and suitability for real-time media transmission. ICE, STUN, and TURN protocols help in 
  navigating network constraints to establish the best possible connection.
  
- UDP is a connectionless protocol with minimal overhead, resulting in lower latency compared to TCP.


## What is WebSocket !?

WebSocket is a communication protocol that provides full-duplex (two-way) communication channels over a single, long-lived connection between a client and a server. WebSockets allow for continuous and bidirectional data exchange. This is especially useful for applications that require real-time updates, such as chat applications, Audio & Video Calling Application, live sports updates, and online gaming.

- Primarily uses TCP for reliable, ordered, and persistent communication. It is suitable for applications where data integrity and order are critical.

- TCP's connection-oriented nature ensures that a stable connection is established and maintained.

## What is WebRTC signaling server !? 

The mechanism used for establishing, coordinating, and controlling communication in WebRTC is known as signaling.

- Signaling in WebRTC refers to the process of exchanging control messages and metadata necessary to establish, manage, and terminate a peer-to-peer communication 
  session. While WebRTC handles the actual media and data transfer, signaling is needed to coordinate the connection setup between peers. This process typically 
  involves exchanging information such as session descriptions, network information, and media capabilities. Signaling itself is not a part of the WebRTC API; instead, 
  it is implemented using other communication channels like WebSockets.

- During signaling, one of the users sends an offer to connect with another user. The WebRTC negotiation component notifies the other user (device) about the offer 
  request. The second user can accept or reject the offer made by the first user. When the offer is accepted, the first user gets a notification. The server then 
  transfers information between both users. Finally, the connection either fails or succeeds.
  

## About iOS App i Created 

This iOS application uses WebRTC for real-time audio and video communication, with signaling implemented in Swift using Apple's native WebSocket. The app allows users to connect and communicate seamlessly with each other. 

## Features
- Real-time audio and video communication
  
- Low latency and high-quality media streaming
  
- Peer-to-peer connection with WebRTC
  
- Signaling implemented with Apple's native WebSocket.
  
- User-friendly interface

## Installation 

1. Clone the repo :
   
   ```bash
    git clone https://github.com/DeepBhupatkar/Final-WebRTC.git
   ```
2. Install Dependancy :
   
```bash
 dependencies: [
    .package(url: "https://github.com/stasel/WebRTC.git", .upToNextMajor("126.0.0"))
] ```




