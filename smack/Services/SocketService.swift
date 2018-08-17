//
//  SocketService.swift
//  smack
//
//  Created by MacbookPro on 17/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    static let instance = SocketService()
    
    let manager = SocketManager(socketURL: URL(string: BASE_URL)!)
    
    var socket: SocketIOClient!
    
    override init() {
        
    }
    
    func connectionEstablish(){
        socket = manager.defaultSocket
        socket.connect()
    }
    
    func closeConnection(){
        socket = manager.defaultSocket
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler){
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler){
        socket.on("channelCreated") { (data, ack) in
            guard let channelName = data[0] as? String else { return }
            guard let channelDescription = data[1] as? String else { return }
            guard let channelId = data[2] as? String else { return }
            
            let newChannel = Channel(name: channelName, description: channelDescription, _id: channelId, __v: 0)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    func addMessage(messageBody: String, userId: String, channelId: String, completion: @escaping CompletionHandler){
        let user = UserDataService.instance
        socket.emit("newMessage", messageBody, userId, channelId, user.name, user.avatarName, user.avatarColor)
        completion(true)
    }
    
}
