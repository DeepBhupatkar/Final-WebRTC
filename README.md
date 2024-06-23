 *WebRTC iOS App (CONNECT BEYOND WORDS: YOUR WORLD, YOUR VOICE, YOUR VISION)*

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

**Features**

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
          ]
    ```
3. Navigate to the TaskWebRTC-main folder. In TaskWebRTC-main, open the folder called WebRTCAVAPP. In that folder, run WebRTCAVAPP.xcodeproj to launch the app in xcode.

4. Navigate to the Swift folder available in Final-WebRTC. In the Swift folder, run SignalingServer.xcodeproj.
   
  ## Run instructions
  
  1. Run the app on two devices with the signaling server running.

  2. Make sure both of the devices are connected to the signaling server it shows the Co.
  
  3. On the first device, click on 'Send Request For Join Over Call' - this will generate a local offer SDP and send it to the other client using the signaling server.
  
  4. Wait until the second device receives the request from the first device.
 
  5. Click on 'Accept Request To Join Over Call' on the second device.
 
  6. when the answer arrives to the first device, both of the devices should be now connected to each other using webRTC and Status Will be Connected, try to talk or 
    click on the 'join video' button to start capturing video.
 
  7. To restart the process, kill both apps and repeat steps 1-6.

   
## Contributing

1. Fork the repository.

2. Create a new branch (git checkout -b feature-branch).

3. Make your changes and commit them (git commit -m 'Add new feature').

4. Push to the branch (git push origin feature-branch).

5. Create a pull request.

*Thank You For Checking out the WebRTC iOS Application*
