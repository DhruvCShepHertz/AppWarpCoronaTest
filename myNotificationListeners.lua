 function onChatReceived(sender, message, roomid, isLobby)
  myText.text = myText.text.."\n"..sender.." says "..message
 end
 
 function onUpdatePeersReceieved(message)
   myText.text = myText.text.."\n".."UpdatePeers "..message
 end
 
 function onRoomCreated(roomid, name, maxUsers)
   myText.text = myText.text.."\n".."onRoomCreated "..roomid.." "..name.." "..maxUsers
 end
 
 function onRoomDeleted(roomid, name)
   myText.text = myText.text.."\n".."onRoomDeleted "..roomid.." "..name
 end
 
 function onUserJoinedRoom(username, roomid)
   myText.text = myText.text.."\n".."onUserJoinedRoom "..roomid.." "..username
 end
 
 function onMoveCompleted(sender, roomid, nextTurn, moveData)
   myText.text = myText.text.."\n".."onMoveCompleted "..roomid.." "..moveData
   if(moveData == "shit head") then
     awClient.sendMove("shit again")
   else
     awClient.getMoveHistory()
   end
   
 end
 
 function onGameStarted(sender, roomid, nextTurn)
   myText.text = myText.text.."\n".."onGameStarted "..sender.." "..roomid
 end
 
 function onGameStopped(sender, roomid)
   myText.text = myText.text.."\n".."onGameStopped "..sender.." "..roomid
 end
 
 function onUserLeftRoom(username, roomid)
   myText.text = myText.text.."\n".."onUserLeftRoom "..roomid.." "..username
 end
 
 function onUserLeftLobby(username)
   myText.text = myText.text.."\n".."onUserLeftLobby "..username
 end
 
 function onUserJoinedLobby(username)
   myText.text = myText.text.."\n".."onUserJoinedLobby "..username
 end 
 
 function onPrivateChatReceived(sender, message)
   myText.text = myText.text.."\n".."onPrivateChatReceived "..sender.." "..message
 end 
 
 function onUserChangedRoomProperty(username, roomid, propertyTable, lockTable)
   myText.text = myText.text.."\n".."onUserChangedRoomProperty "..username.." "..roomid.." "..propertyTable["color"].." "..lockTable["color"]
 end