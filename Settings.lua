--	AUTHOR: KURT CARVALHO - 10387806 - 02/11/2017






local widget = require("widget")
local composer = require( "composer" )

local scene = composer.newScene()


-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------



function EasyEvent()
	local Diff = 1
	composer.setVariable("Diff", Diff)
	WhoFirst()
end
	
function MediumEvent()
	local Diff = 2
	composer.setVariable("Diff", Diff)
	WhoFirst()
end
	
function HardEvent()
	local Diff = 3
	composer.setVariable("Diff", Diff)
	WhoFirst()
end

function Player1Event()
	display.remove(sceneGroup)
	sceneGroup = nil
	display.remove(difficultyGroup)
	difficultyGroup = nil
	composer.removeScene( "Settings" ,false )
	composer.gotoScene( "GameScreen", "fade" )
end
	
function Player2Event()
	display.remove(sceneGroup)
	sceneGroup = nil
	display.remove(difficultyGroup)
	difficultyGroup = nil
	composer.removeScene( "Settings" , false )
	composer.gotoScene( "GameScreen2", "fade" )
end	
	

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Assign "self.view" to local variable "sceneGroup" for easy reference
    local sceneGroup = self.view
	local difficultyGroup = display.newGroup()

    Background = display.newImage(sceneGroup, "background.png", 170, 275)
	Background.isVisible = true
	
	
----------------------------------------------------------------------------

--------------------------------------------------------------------------------------
function SelectDifficulty()
	Difficulty = display.newText( difficultyGroup, "Select Difficulty", display.contentCenterX, 70, "Arial", 30)

Rect6 = display.newRoundedRect( difficultyGroup, 164,150, 140, 50, 12 )
	Rect6.strokeWidth = 3
	Rect6:setFillColor( 0.5 )
	Rect6:setStrokeColor( 3, 1, 0 )
	Rect6Inner = display.newRoundedRect(  400, 100, 100, 200, 30 )


Rect7 = display.newRoundedRect( difficultyGroup, 164, 250, 140, 50, 12 )
	Rect7.strokeWidth = 3
	Rect7:setFillColor( 0.5 )
	Rect7:setStrokeColor( 3, 1, 0 )
	Rect7Inner = display.newRoundedRect(  400, 100, 100, 200, 30 )
	
Rect8 = display.newRoundedRect( difficultyGroup, 164,350, 140, 50, 12 )
	Rect8.strokeWidth = 3
	Rect8:setFillColor( 0.5 )
	Rect8:setStrokeColor( 3, 1, 0 )
	Rect8Inner = display.newRoundedRect(  400, 100, 100, 200, 30 )

	EasyButton = widget.newButton(
	{
	
		left = 80,
		top = 125, 
		id = "Menu3",
		label = "Easy",
		onPress = EasyEvent,
		labelColor = { default={ 3, 4, 1 }, over={ 1, 2, 0 } }
	
	}
	)
	
	
	
	difficultyGroup:insert(EasyButton)
	
	MediumButton = widget.newButton(
	{
	
		left = 80,
		top = 225, 
		id = "Menu4",
		label = "Medium",
		onPress = MediumEvent,
		labelColor = { default={ 3, 4, 1 }, over={ 1, 2, 0 } }
	
	}
	)
	
	
	
	difficultyGroup:insert(MediumButton)

	
	HardButton = widget.newButton(
	{
	
		left = 80,
		top = 325, 
		id = "Menu5",
		label = "Hard",
		onPress = HardEvent,
		labelColor = { default={ 3, 4, 1 }, over={ 1, 2, 0 } }
	
	}
	)
	
	
	
	difficultyGroup:insert(HardButton)
end
SelectDifficulty()
function WhoFirst()
	
	title = display.newText( sceneGroup, "Who Plays First?", display.contentCenterX, 70, "Arial", 30)
	display.remove(difficultyGroup)
	difficultyGroup = nil
	
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
	print("destroy")
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



 
