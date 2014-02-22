 
    require("widget").newButton
        {
            left = (display.contentWidth-200)/2, top = display.contentHeight - 350, label = "Connect",
            width = 200, height = 40, cornerRadius = 4,
            onEvent = function(event) 
                if "ended" == event.phase then
                    myText.text = "Connecting.."
                    awClient.connectWithUserName("DhruvAppWarp");                    
                end
            end
        }
    require("widget").newButton
        {
            left = (display.contentWidth-200)/2, top = display.contentHeight - 280, label = "Lobby",
            width = 200, height = 40, cornerRadius = 4,
            onEvent = function(event) 
                if "ended" == event.phase then
                    awClient.joinLobby()                    
                end
            end
        }        
    require("widget").newButton
        {
            left = (display.contentWidth-200)/2, top = display.contentHeight - 70, label = "Quit",
            width = 200, height = 40, cornerRadius = 4,
            onEvent = function(event) 
                if "ended" == event.phase then
                    awClient.disconnect();                    
                end
            end
        }
 
     require("widget").newButton
        {
            left = (display.contentWidth-200)/2, top = display.contentHeight - 140, label = "Room", 
            width = 200, height = 40, cornerRadius = 4,
            onEvent = function(event) 
                if "ended" == event.phase then
                    awClient.createRoom("shop", "admin", 4, nil, 20)
                end
            end
        }
        
     require("widget").newButton
        {
            left = (display.contentWidth-200)/2, top = display.contentHeight - 210, label = "Chat", 
            width = 200, height = 40, cornerRadius = 4,
            onEvent = function(event) 
                if "ended" == event.phase then
                    awClient.sendChat("Hello Lua")
                end
            end
        }        