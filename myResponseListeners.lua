 function onConnectDone(resultCode)   
   myText.text = myText.text.."\n".."ConnectDone "..tostring(resultCode)
 end
 
 function onDisconnectDone(resultCode)
  myText.text = myText.text.."\n".."DisconnectDone "..tostring(resultCode)
 end
 
 function onJoinRoomDone(resultCode, roomid)
  myText.text = myText.text.."\n".."onJoinRoomDone "..tostring(resultCode).." id "..roomid;
  awClient.leaveRoom(roomid)
 end
 
 function onLeaveRoomDone(resultCode, roomid)
  myText.text = myText.text.."\n".."onLeaveRoomDone "..tostring(resultCode).." id "..roomid;
  awClient.deleteRoom(roomid)
 end
 
 function onSubscribeRoomDone(resultCode, roomid)
  myText.text = myText.text.."\n".."onSubscribeRoomDone "..tostring(resultCode).." id "..roomid 
  awClient.startGame();
 end
 
 function onUnsubscribeRoomDone(resultCode, roomid)
  myText.text = myText.text.."\n".."onUnsubscribeRoomDone "..tostring(resultCode).." id "..roomid
 end
 
 function onCreateRoomDone(resultCode, roomid, name)
  myText.text = myText.text.."\n".."onCreateRoomDone "..tostring(resultCode).." id "..roomid.." name "..name  
  awClient.joinRoom(roomid)
 end
 
 function onSendMoveDone(resultCode)
  myText.text = myText.text.."\n".."onSendMoveDone "..tostring(resultCode)  
 end
 
 function onStartGameDone(resultCode)
  myText.text = myText.text.."\n".."onStartGameDone "..tostring(resultCode)
 end
 
 function onStopGameDone(resultCode)
  myText.text = myText.text.."\n".."onStopGameDone "..tostring(resultCode)
 end 
 
 function onGetMoveHistoryDone(resultCode, moves)
  --myText.text = myText.text.."\n".."onGetMoveHistoryDone "..tostring(resultCode).." moves ".. tostring(moves[2].moveData)
 end
 
 function onDeleteRoomDone(resultCode, roomid, name)
  myText.text = myText.text.."\n".."onDeleteRoomDone "..tostring(resultCode).." id "..roomid
 end
 
 function onGetLiveRoomInfoDone(resultCode, roomTable)
  myText.text = myText.text.."\n".."onGetLiveRoomInfoDone "..tostring(resultCode)
 end
 
 function onGetLiveLobbyInfoDone(resultCode, lobbyTable)
  myText.text = myText.text.."\n".."onGetLiveLobbyInfoDone "..tostring(resultCode).." table "..lobbyTable.joinedUsersTable[1]
 end
 
 function onSetCustomRoomDataDone(resultCode, roomTable)
  myText.text = myText.text.."\n".."onSetCustomRoomDataDone "..tostring(resultCode).." data "..roomTable.customData
 end
 
 function onSetCustomUserDataDone(resultCode, name, custom, locid, isLobby)
  myText.text = myText.text.."\n".."onSetCustomRoomDataDone "..tostring(resultCode).." name "..name
 end 
 
 function onGetLiveUserInfoDone(resultCode, name, custom, locid, isLobby)
  myText.text = myText.text.."\n".."onGetLiveUserInfoDone "..tostring(resultCode).." name "..name
 end
 
 function onGetAllRoomsDone(resultCode, roomsTable)
  myText.text = myText.text.."\n".."onGetAllRoomsDone "..tostring(resultCode).." data ".. roomsTable[1]
 end
 
 function onGetOnlineUsersDone(resultCode, usersTable)
  myText.text = myText.text.."\n".."onGetOnlineUsersDone "..tostring(resultCode).." data "..tostring(table.getn(usersTable))
 end 
 
 function onSendChatDone(resultCode)
   myText.text = myText.text.."\n onSendChatDone "..tostring(resultCode)
 end
 
 function onSendPrivateChatDone(resultCode)
   myText.text = myText.text.."\n onSendPrivateChatDone "..tostring(resultCode)
 end
 
 function onSendUpdatePeersDone(resultCode)
   myText.text = myText.text.."\n onSendUpdatePeersDone "..tostring(resultCode)
 end 
 
 function onJoinLobbyDone(resultCode)   
   myText.text = myText.text.."\n onJoinLobbyDone "..tostring(resultCode)
   awClient.leaveLobby()
 end
 
 function onLeaveLobbyDone(resultCode)   
   myText.text = myText.text.."\n onLeaveLobbyDone "..tostring(resultCode)
 end
 
 function onSubscribeLobbyDone(resultCode)   
   myText.text = myText.text.."\n onSubscribeLobbyDone "..tostring(resultCode)
 end
 
 function onUnsubscribeLobbyDone(resultCode)   
   myText.text = myText.text.."\n onUnsubscribeLobbyDone "..tostring(resultCode)
 end 
 
 function onUpdateRoomProperties(resultCode, roomTable)   
   myText.text = myText.text.."\n onUpdateRoomProperties "..tostring(resultCode)
 end 
 
 function onGetMatchedRoomsDone(resultCode, roomsTable)   
   myText.text = myText.text.."\n onGetMatchedRoomsDone "..tostring(resultCode).. " matches ".. roomsTable[1].id
 end 
 
 function onLockPropertiesDone(resultCode)   
   myText.text = myText.text.."\n onLockPropertiesDone "..tostring(resultCode)
 end 
 
 function onUnlockPropertiesDone(resultCode)   
   myText.text = myText.text.."\n onUnlockPropertiesDone "..tostring(resultCode)
 end  
 