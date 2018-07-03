local widget = require("widget")
local composer = require( "composer" )

local scene = composer.newScene()




	
function scene:create( event )

-- Code here runs when the scene is first created but has not yet appeared on screen
	    -- Assign "self.view" to local variable "sceneGroup" for easy reference
    local sceneGroup = self.view
local function Player1Event()
	title.isVisible = false
	
	composer.removeScene( "Menu" ,true )
	banner = display.newText( sceneGroup, "Naughts & Crosses", 150, 70, "Bella", 30)
	composer.gotoScene( "GameScreen", "fade" )
end
	
local function Player2Event()
	title.isVisible = false
	
	composer.removeScene( "Menu" , true )
	banner = display.newText( sceneGroup, "Naughts & Crosses", 150, 70, "Bella", 30)
	composer.gotoScene( "GameScreen2", "fade" )
end
	
bgd = display.newImage(sceneGroup, "background.png", 170, 275)
	title = display.newText( "Who Plays First?", 150, 70, "Bella", 30)

Rect4 = display.newRoundedRect( sceneGroup, 164,200, 140, 50, 12 )
	Rect4.strokeWidth = 3
	Rect4:setFillColor( 0.5 )
	Rect4:setStrokeColor( 3, 1, 0 )
	Rect4Inner = display.newRoundedRect(  400, 100, 100, 200, 30 )


Rect5 = display.newRoundedRect( sceneGroup, 164,300, 140, 50, 12 )
	Rect5.strokeWidth = 3
	Rect5:setFillColor( 0.5 )
	Rect5:setStrokeColor( 3, 1, 0 )
	Rect5Inner = display.newRoundedRect(  400, 100, 100, 200, 30 )

Player1MenuButton = widget.newButton(
	{
	
		left = 80,
		top = 175, 
		id = "Menu3",
		label = "You",
		onPress = Player1Event,
		labelColor = { default={ 3, 4, 1 }, over={ 1, 2, 0 } }
	
	}
	)
	
	
	
	sceneGroup:insert(Player1MenuButton)
	
Player2MenuButton = widget.newButton(
	{
	
		left = 80,
		top = 275, 
		id = "Menu4",
		label = "Computer",
		onPress = Player2Event,
		labelColor = { default={ 3, 4, 1 }, over={ 1, 2, 0 } }
	
	}
	)
	
	
	
	sceneGroup:insert(Player2MenuButton)


   
end


-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
		
	
    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene	
	