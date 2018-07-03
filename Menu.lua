
--	AUTHOR: KURT CARVALHO - 10387806 - 02/11/2017






local widget = require("widget")
local composer = require( "composer" )

local scene = composer.newScene()


-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function PlayGameMenuButtonEvent()
	AMenuButton.isVisible = false
	Rect1.isVisible = false
	banner.isVisible = false
	display.remove(sceneGroup)
	sceneGroup = nil
    composer.removeScene( "Menu" ,false )
	composer.gotoScene( "Settings", "fade" )
   
end


	
	

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Assign "self.view" to local variable "sceneGroup" for easy reference
    local sceneGroup = self.view

    Background = display.newImage(sceneGroup, "background.png", 170, 275)
	Background.isVisible = true
	banner = display.newText( "Naughts & Crosses", display.contentCenterX, 70, "Arial", 30)
----------------------------------------------------------------------------
	--Play Game Rectangle
	Rect1 = display.newRoundedRect( sceneGroup, 164,250, 140, 50, 12 )
	Rect1.strokeWidth = 3
	Rect1:setFillColor( 0.5 )
	Rect1:setStrokeColor( 3, 1, 0 )
	Rect1Inner = display.newRoundedRect(  400, 100, 100, 200, 30 )
	
	--Play Game Button in Main Menu
	AMenuButton = widget.newButton(
	{
	
		left = 80,
		top = 225, 
		id = "Menu1",
		label = "Play Game",
		onPress = PlayGameMenuButtonEvent,
		labelColor = { default={ 3, 4, 1 }, over={ 1, 2, 0 } }
	
	}
	)
	
	
	
	sceneGroup:insert(AMenuButton)
end
--------------------------------------------------------------------------------------



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



 
