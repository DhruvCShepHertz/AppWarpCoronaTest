-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

require "myResponseListeners"
require "myNotificationListeners"

awClient = require "AppWarp.WarpClient"

awClient.initialize("AppKey", "SecretKey");
 
 awClient.enableTrace(true)
 
 awClient.addRequestListener("onConnectDone", onConnectDone)
 awClient.addRequestListener("onDisconnectDone", onDisconnectDone)
 awClient.addRequestListener("onJoinRoomDone", onJoinRoomDone)
 awClient.addRequestListener("onSubscribeRoomDone", onSubscribeRoomDone)
 awClient.addRequestListener("onLeaveRoomDone", onLeaveRoomDone)
 awClient.addRequestListener("onUnsubscribeRoomDone", onUnsubscribeRoomDone)
 awClient.addRequestListener("onCreateRoomDone", onCreateRoomDone)
 awClient.addRequestListener("onDeleteRoomDone", onDeleteRoomDone)
 awClient.addRequestListener("onGetLiveRoomInfoDone", onGetLiveRoomInfoDone)
 awClient.addRequestListener("onSetCustomRoomDataDone", onSetCustomRoomDataDone)
 awClient.addRequestListener("onGetAllRoomsDone", onGetAllRoomsDone)
 awClient.addRequestListener("onGetOnlineUsersDone", onGetOnlineUsersDone)
 
 awClient.addRequestListener("onSendMoveDone", onSendMoveDone)
 awClient.addRequestListener("onStartGameDone", onStartGameDone)
 awClient.addRequestListener("onStopGameDone", onStopGameDone)
 awClient.addRequestListener("onGetMoveHistoryDone", onGetMoveHistoryDone)
 
 awClient.addRequestListener("onSetCustomUserDataDone", onSetCustomUserDataDone)
 awClient.addRequestListener("onGetLiveUserInfoDone", onGetLiveUserInfoDone)
 
 awClient.addRequestListener("onSendChatDone", onSendChatDone)
 awClient.addRequestListener("onSendUpdatePeersDone", onSendUpdatePeersDone) 
 awClient.addRequestListener("onSendPrivateChatDone", onSendPrivateChatDone)  
 awClient.addRequestListener("onGetLiveUserInfoDone", onGetLiveUserInfoDone)
 
 awClient.addRequestListener("onJoinLobbyDone", onJoinLobbyDone)
 awClient.addRequestListener("onLeaveLobbyDone", onLeaveLobbyDone) 
 awClient.addRequestListener("onSubscribeLobbyDone", onSubscribeLobbyDone)  
 awClient.addRequestListener("onUnsubscribeLobbyDone", onUnsubscribeLobbyDone) 
 awClient.addRequestListener("onGetLiveLobbyInfoDone", onGetLiveLobbyInfoDone) 

  
 awClient.addRequestListener("onUpdateRoomProperties", onUpdateRoomProperties) 
 awClient.addRequestListener("onGetMatchedRoomsDone", onGetMatchedRoomsDone)

 awClient.addRequestListener("onLockPropertiesDone", onLockPropertiesDone) 
 awClient.addRequestListener("onUnlockPropertiesDone", onUnlockPropertiesDone)
 
 awClient.addNotificationListener("onRoomCreated", onRoomCreated)
 awClient.addNotificationListener("onRoomDeleted", onRoomDeleted)
 
 awClient.addNotificationListener("onUserJoinedLobby", onUserJoinedLobby)
 awClient.addNotificationListener("onUserLeftLobby", onUserLeftLobby)
 
 awClient.addNotificationListener("onUserJoinedRoom", onUserJoinedRoom)
 awClient.addNotificationListener("onUserLeftRoom", onUserLeftRoom)
 
 awClient.addNotificationListener("onChatReceived", onChatReceived)
 awClient.addNotificationListener("onUpdatePeersReceieved", onUpdatePeersReceieved)
 
 awClient.addNotificationListener("onUserChangedRoomProperty", onUserChangedRoomProperty)
 awClient.addNotificationListener("onPrivateChatReceived", onPrivateChatReceived)
 
 awClient.addNotificationListener("onMoveCompleted", onMoveCompleted)
 awClient.addNotificationListener("onGameStarted", onGameStarted)
 awClient.addNotificationListener("onGameStopped", onGameStopped)
 
  local background = display.newImage( "leaderboard_bg.png" )
  myText = display.newText( "Hello, World!", 0, 0, native.systemFont, 10 )
  myText.x = display.contentWidth / 2
  myText.y = 20
  myText:setTextColor( 125,110,110 )
  
  require "myUIButtons" -- define the buttons and their actions to the screen
        
local function gameLoop(event)
  awClient.Loop()
end

Runtime:addEventListener("enterFrame", gameLoop)