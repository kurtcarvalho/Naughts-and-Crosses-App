--	AUTHOR: KURT CARVALHO - 10387806 - 02/11/2017

--GameScreen.lua
local composer = require( "composer" )
local widget = require("widget")
local scene = composer.newScene()



--Undo Moves List (Stores last 2 Moves)
UndoMoves = {}






function scene:create( event )

    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Assign "self.view" to local variable "sceneGroup" for easy reference
    local sceneGroup = self.view
	banner = display.newText(sceneGroup, "Naughts & Crosses", display.contentCenterX, 70, "Arial", 30)
	


function LookForWinner()

	winner = 1
	
	-- !!! X FOR THE WIN !!!
while (winner == 1) do
	--Horizontal Win L,M,R for X
	if (board [1][7] == 1) and (board [2][7] == 1) and (board[3][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end
	if (board [4][7] == 1) and (board [5][7] == 1) and (board[6][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end		
	if (board [7][7] == 1) and (board [8][7] == 1) and (board[9][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end		
	--Vertical Win T, M, B	for X	
	if (board [1][7] == 1) and (board [4][7] == 1) and (board[7][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end			
	if (board [2][7] == 1) and (board [5][7] == 1) and (board[8][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end		
	if (board [3][7] == 1) and (board [6][7] == 1) and (board[9][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end		
	--Diagonal L to R \\ R to L for X
	if (board [1][7] == 1) and (board [5][7] == 1) and (board[9][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end		
	if (board [3][7] == 1) and (board [5][7] == 1) and (board[7][7] == 1) then
			banner = display.newText(sceneGroup, "X Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 1
			winnerfound()
	end	
			
	-- !!! O FOR THE WIN !!!!!
			
	--Horizontal Win L,M,R for O
	if (board [1][7] == 2) and (board [2][7] == 2) and (board[3][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end		
	if (board [4][7] == 2) and (board [5][7] == 2) and (board[6][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end		
	if (board [7][7] == 2) and (board [8][7] == 2) and (board[9][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end			
	--Vertical Win T, M, B	for O	
	if (board [1][7] == 2) and (board [4][7] == 2) and (board[7][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end			
	if (board [2][7] == 2) and (board [5][7] == 2) and (board[8][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end		
	if (board [3][7] == 2) and (board [6][7] == 2) and (board[9][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end			
	--Diagonal L to R \\ R to L for O
	if (board [1][7] == 2) and (board [5][7] == 2) and (board[9][7] == 2) then
			banner = display.newText(sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	end		
	if (board [3][7] == 2) and (board [5][7] == 2) and (board[7][7] == 2) then
			banner = display.newText( sceneGroup, "O Wins!", display.contentCenterX, 22, "Arial", 30)
			winner = 0
			player = 0
			winnerfound()
	
	elseif ((board [1][7] == 2) or (board [1][7] == 1)) and ((board [2][7] == 2) or (board [2][7] == 1)) and ((board [3][7] == 2) or (board [3][7] == 1)) 
	and ((board [4][7] == 2) or (board [4][7] == 1)) and ((board [6][7] == 2) or (board [6][7] == 1)) and (board [6][7] == 2 or board [6][7] == 1)
	and (board [7][7] == 2 or board [7][7] == 1) and (board [8][7] == 2 or board [8][7] == 1) and (board [9][7] == 2 or board [9][7] == 1)
	and (winner ~= 0)
	then
		banner = display.newText( sceneGroup, "Draw!", display.contentCenterX, 22, "Arial", 30)
		player = 9
		winnerfound()
		end
	winner = 0
		end	
	
			end
	
	


--      Menu Button Event Handler ( Saves Scores File, sets all data to nil for next game, Removes Scene)

function MenuButtonEvent()

	stopUndo()
	local file = io.open(system.pathForFile("Record.txt", system.DocumentsDirectory), "w" )
	file:write(winz, "\n", Draws, "\n", Losses, "\n") 
	file:close()

	Moves = nil
	Diff = nil
	Runtime:removeEventListener( "touch",	FirstPlayer)
	composer.removeScene( "GameScreen2", false )
    display.remove(sceneGroup)
    clearBoard()
    composer.gotoScene( "Menu", "fade" )
end


			


----------------------------------------------------------

-- Runs when a winner is found (Adds 1 to Win, Loss or Draw.) Stops Undo.
function winnerfound()
	
	stopUndo()
	
	if player == 0 then
	LossScore.isVisible = false
	Losses = Losses + 1
	LossScore2 = display.newText( sceneGroup, Losses, 220, 4, "Arial", 10)
	
	
	end
	
	if player == 1 then
	WinScore.isVisible = false
	winz = winz + 1
	WinScore2 = display.newText( sceneGroup, winz, 120, 4, "Arial", 10)
	
	end
	
	if player == 9 then
	DrawScore.isVisible = false
	Draws = Draws + 1
	DrawScore2 = display.newText( sceneGroup, Draws, 170, 4, "Arial", 10)
	
	end
	
	
	
	
-- Rectangle for Return to Menu
	local myRoundedRect = display.newRoundedRect( sceneGroup, 160, 425, 150, 50, 12 )
	myRoundedRect.strokeWidth = 3
	myRoundedRect:setFillColor( 0.5 )
	myRoundedRect:setStrokeColor( 1, 0, 0 )
	display.newRoundedRect(  400, 100, 100, 200, 30 )
	myRoundedRect:scale( 0.8, 0.8 )
	
	Gameover = 1
	
-- Return to Menu Button

	EndGameButton = widget.newButton(
{
	
	left = 70,
	top = 400, 
	id = "Menu1",
	label = "Return to Menu",
	onPress = MenuButtonEvent,
	labelColor = { default={ 1, 1, 1 }, over={ 1, 2, 0 } }
	
}
)

sceneGroup:insert(EndGameButton)

EndGameButton:scale( 0.8, 0.8 )

		
end	
------------------------------------------------------------------

-- Game Board DIMENSIONS
d = display
w20 = d.contentWidth * .2
h20 = d.contentHeight * .2
w40 = d.contentWidth * .4
h40 = d.contentHeight * .4
w60 = d.contentWidth * .6
h60 = d.contentHeight * .6
w80 = d.contentWidth * .8
h80 = d.contentHeight * .8


----DRAW LINES FOR BOARD

local lline = d.newLine(sceneGroup,w40,h20,w40,h80 )
lline.strokeWidth = 5
local rline = d.newLine(sceneGroup, w60,h20,w60,h80 )
rline.strokeWidth = 5
local bline = d.newLine(sceneGroup, w20,h40,w80,h40 )
bline.strokeWidth = 5
local tline = d.newLine(sceneGroup, w20,h60,w80,h60 )
tline.strokeWidth = 5



--PLACE BOARD COMPARTMENT DIMENSIONS IN TABLE

board ={
{"tl", 1, w20, h40, w40, h20,0},
{"tm",2, w40,h40,w60,h20,0},
{"tr",3, w60,h40,w80,h20,0},
{"ml", 4, w20, h60, w40, h40,0},
{"mm",5, w40,h60,w60,h40,0},
{"mr",6, w60,h60,w80,h40,0},
{"bl", 7, w20, h80, w40, h60,0},
{"bm",8, w40,h80,w60,h60,0},
{"br",9, w60,h80,w80,h60,0}
}





--Replay Game button Event Handler

function ReplayButtonEvent()
	 replayGame()
end

--REPLAY ICON
replayicon = display.newImage(sceneGroup, "replay1.png", 75, 470)
replayicon:scale( 0.27, 0.27 )


-- Replay Button(Only Replays at End of Game)
ReplayButton = widget.newButton(
{
	
	left = 0,
	top = 450, 
	id = "Replay1",
	label = "Replay",
	onPress = ReplayButtonEvent,
	labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0 } }
	
}
)

sceneGroup:insert(ReplayButton)

ReplayButton.isVisible = false
ReplayButton.isHitTestable = true

-- HOME ICON
homeimage = display.newImage(sceneGroup, "home.png", 65, 2)
homeimage:scale( 0.035, 0.035 ) 


-- Invisible Home Button (Displays throughout Game on top of Home Icon)

HomeButton = widget.newButton(
{
	
	left = -40,
	top = -20, 
	id = "Home",
	label = "Home",
	onPress = MenuButtonEvent,
	labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0 } }
	
}
)

HomeButton.isVisible = false
HomeButton.isHitTestable = true
--


Gameover = 0


--	Gets Score Record from Record.Txt
--	Count number of Wins

score = {}
z = 1

---			RESET SCORE CODE FOR FILE		------

-- Open the file handle
local file, errorString = io.open(system.pathForFile("Record.txt", system.DocumentsDirectory), "r" )
 
if not file then
    -- Error occurred; output the cause
     local file = io.open(system.pathForFile("Record.txt", system.DocumentsDirectory), "w" )
	 winz = 0
	 Draws = 0
	 Losses = 0
	 file:write(winz, "\n", Draws, "\n", Losses, "\n") 
	 file:close()
else
    -- Output lines
    for line in file:lines() do
		 table.insert(score, line)
		 print (line)
    end
    -- Close the file handle
    io.close( file )
	winz = (score[1])
	Draws = score[2]
	Losses = score[3]
end
-----------------------------------------------------------------------------------
--			DISPLAY SCORE			 --

WinLabel = display.newText( sceneGroup, "Wins:", 100, 4, "Arial", 10)
WinScore = display.newText( sceneGroup, winz, 120, 4, "Arial", 10)
DrawLabel = display.newText( sceneGroup, "Draws:", 150, 4, "Arial", 10)
DrawScore = display.newText( sceneGroup, Draws, 170, 4, "Arial", 10)
LossLabel = display.newText( sceneGroup, "Losses:", 200, 4, "Arial", 10)
LossScore = display.newText( sceneGroup, Losses, 220, 4, "Arial", 10)


--		Reset Score Button	Event	---					
function ResetScoreButtonEvent()


	WinScore.isVisible = false
		DrawScore.isVisible = false
			LossScore.isVisible = false
			
	winz = 0
		Draws = 0
			Losses = 0
			
	WinScore = display.newText( sceneGroup, winz, 120, 4, "Arial", 10)
		DrawScore = display.newText( sceneGroup, Draws, 170, 4, "Arial", 10)
				LossScore = display.newText( sceneGroup, Losses, 220, 4, "Arial", 10)

				


end

myImage = display.newImage(sceneGroup, "refresh.png", 245, 2)
myImage:scale( 0.05, 0.05 )

-- RESET SCORE BUTTON (Invisible)(On top of Refresh Icon) ---

ResetButton = widget.newButton(
{
	
	left = 150,
	top = -20, 
	id = "Reset1",
	label = "Reset",
	onPress = ResetScoreButtonEvent,
	labelColor = { default={ 1, 1, 1 }, over={ 1, 2, 0 } }
	
}
)
ResetButton.isVisible = false
ResetButton.isHitTestable = true

----------------------------------------------------------------------------------------------------------
--	Winning Conditions Lists ---
local winningState = 
{
	{9, 8, 7},
	{6, 5, 4},
	{9, 6, 3},
	{7, 5, 3},
	{8, 5, 2},
	{9, 5, 1},
	{7, 4, 1},
	{3, 2, 1},
	{7, 5, 3}
}


---		CODE FOR HARD AI 	---

-- TWO IN ROW MOVE --
function twoinRow()

print("TwoinRow")
for i = 1, 8 do

	if (board[winningState[i][1]][7] == 0) and (board[winningState[i][2]][7] == 2) and (board[winningState[i][3]][7] == 2) then
	return winningState[i][1]
	
	elseif (board[winningState[i][1]][7] == 2) and (board[winningState[i][2]][7] == 0) and (board[winningState[i][3]][7] == 2) then
	return winningState[i][2]
	
	elseif (board[winningState[i][1]][7] == 2) and (board[winningState[i][2]][7] == 2) and (board[winningState[i][3]][7] == 0) then
	return winningState[i][3]
end
end

for i = 1, 8 do

	if (board[winningState[i][1]][7] == 0) and (board[winningState[i][2]][7] == 1) and (board[winningState[i][3]][7] == 1) then
	return winningState[i][1]
	
	elseif (board[winningState[i][1]][7] == 1) and (board[winningState[i][2]][7] == 0) and (board[winningState[i][3]][7] == 1) then
	return winningState[i][2]
	
	elseif (board[winningState[i][1]][7] == 1) and (board[winningState[i][2]][7] == 1) and (board[winningState[i][3]][7] == 0) then
	return winningState[i][3]
end
end

return 0

end

--	CENTER SQUARE MOVE --
function CenterSquare()

print("Center")
if board[5][7] == 0 then
	return 5
else 
	return 0
end
end


-- CORNER MOVE  --
function CornerMove()

print("CornerMove")
if board[1][7] == 1 and board[9][7] == 0 then
	return 9
	
elseif board[9][7] == 1 and board[1][7] == 0 then
	return 1
	end

if board[3][7] == 1 and board[7][7] == 0 then
	return 7
	
elseif board[7][7] == 1 and board[3][7] == 0 then
	return 3
	end

return 0
end


-- PLAY RANDOM --
function playRandom()
	print ("Random Move")
	n = math.random(1,9)
	while (board[n][7] ~= 0) do
		n = math.random(1,9)
	end
	if (board[n][7] == 0) then
		return n
			
		end
end

-- FORM TWO LINE OF TWO MOVE --
function Forkit()
print("Fork")
	for i = 1, 9 do
		for t = 1,9 do
			if board[t][7] == 2 and board[i][7] == 2 and board[5][7] == 0 then
			return 5
			elseif board[t][7] == 0 and board[i][7] == 2 and board[5][7] == 2 then
			return t
			elseif board[t][7] == 2 and board[i][7] == 0 and board[5][7] == 2 then
			return i
			else 
			return 0
			end
		end
	end
end
	
function HardLogicCaller()
	n = twoinRow()
	if (n ~= 0) then
		return n
	elseif (n == 0 and Forkit() ~= 0) then
		n = Forkit()
	elseif (n == 0 and CenterSquare() ~= 0) then
		n = CenterSquare()
	elseif (n == 0 and CornerMove() ~= 0) then
		n = CornerMove()
	else 
		n = playRandom()
	end
	return n
end
-----------------------------------------------------------------------------------------------------------


-- 			PLAYER AND COMPUTER TURNS 				--


Moves = {}
local displaygroup = display.newGroup()
--Play against Computer
local Diff = composer.getVariable("Diff")
EMPTY, X, O = 0, 1, 2
whichTurn = X -- X is starting game
TEXT = "X"
switcher = 1
start = 1


--FILL COMPARTMENT W/ COLOUR WHEN TOUCHED 

--Play two Player

function FirstPlayer (event)
	if event.phase == "began" then
		for t = 1, 9 do
			if event.x > board[t][3] and event.x < board [t][5]
				then
					if event.y < board[t][4] and event.y > board[t][6]
						then
						
							if Gameover ~= 1 then
							if board[t][7] == EMPTY then
								board[t][7] = whichTurn
						
								r = d.newText(sceneGroup, TEXT, board[t][3],board[t][6],200,110,200,70)								
								table.insert(Moves, t)
								UndoMoves[1] = t
								UndoMoves[2] = r
								r:setFillColor(1,1,0)
								r.anchorX=0
								r.anchorY=0
								whichTurn = whichTurn == X and O or X
								LookForWinner()
								finish = 0
								ComputerMove()
								
							end
							end
end						
end						
end
end			
end

	
Runtime:addEventListener("touch", FirstPlayer)

 

--		COMPUTER MOVE CODE 		---

function ComputerMove()
							
	if (TEXT == "O") then
		TEXT = "X"
	elseif (TEXT == "X") then
		TEXT = "O"
	end
	
	if v ~= nil then 
	board[v][7] = whichTurn
	v = nil
	end
						
				if Diff == 1 then
					print ("Easy")	
					if Gameover ~= 1 then
						n = playRandom()					
						if board[n][7] == EMPTY then
							board[n][7] = whichTurn
							r = d.newText(sceneGroup, TEXT, board[n][3],board[n][6],200,110,200,70)
							table.insert(Moves, n)
							UndoMoves[3] = n
							UndoMoves[4] = r
							r:setFillColor(1,1,0)
							r.anchorX=0
							r.anchorY=0
							whichTurn = whichTurn == X and O or X
							BeginCount()
							LookForWinner()
						end
					end
				end
			
							
				if Diff == 2 then
					print ("Medium")
					if Gameover ~= 1 then			
							if switcher == 1 then
								print ("random")
								n = playRandom()
								switcher = 2
							elseif switcher == 2 then
								print ("Hard")
								n = HardLogicCaller()
								switcher = 1
							end
		
								
							if board[n][7] == EMPTY then
								board[n][7] = whichTurn
								r = d.newText(sceneGroup, TEXT, board[n][3],board[n][6],200,110,200,70)
								table.insert(Moves, n)
								UndoMoves[3] = n
								UndoMoves[4] = r
								r:setFillColor(1,1,0)
								r.anchorX=0
								r.anchorY=0
								whichTurn = whichTurn == X and O or X
								BeginCount()
								LookForWinner()
							end
						end	
					end
								
			if Diff == 3 then
				print ("Hard")
				if Gameover ~= 1 then
					n = HardLogicCaller()
				
					if board[n][7] == EMPTY then
							
						board[n][7] = whichTurn
						r = d.newText(sceneGroup, TEXT, board[n][3],board[n][6],200,110,200,70)
						table.insert(Moves, n)
						UndoMoves[3] = n
						UndoMoves[4] = r
						r:setFillColor(1,1,0)
						r.anchorX=0
						r.anchorY=0
						whichTurn = whichTurn == X and O or X
						BeginCount()
						LookForWinner()
					end
				end
			end
		
		
		if (TEXT == "O") then
			TEXT = "X"
		elseif (TEXT == "X") then
			TEXT = "O" 
		end
	
end

-- CODE TO GET COMPUTER FIRST MOVE
if start == 1 then

	FIRST = "O"
	
	v = playRandom()			
								
	if board[v][7] == EMPTY then	
		board[v][7] = 2
		r = d.newText(sceneGroup, FIRST, board[v][3],board[v][6],200,110,200,70)
		table.insert(Moves, n)
		r:setFillColor(1,1,0)
		r.anchorX=0
		r.anchorY=0
		start = 0
		end
end
---------------------------------------------------------------------------------------------------------
-- CLEAR BOARD WHEN EXITING GAME --

function clearBoard()
t = 1
while t < 10 do
		board[t][7] = 0
		t = t + 1
 end
end

local z = 1
local count
Player = "O"
function playMoves()
	
	r = display.newText(sceneGroup, Player , board[Moves[z]][3],board[Moves[z]][6],200,110,200,70)								
		r:setFillColor(1,1,0)
		r.anchorX=0
		r.anchorY=0
		
		
		z = z +1
		if z < count + 1 then
		timer.performWithDelay(500, playMoves)
		end
		
		if Player == "X" then
		Player = "O"
		else if Player == "O" then
		Player = "X"
		end
		end
end

-- REPLAY GAME FUNCTION --

function replayGame ()

	UndoButton.isVisible = false
	replaybg = display.newImage(sceneGroup, "blank.jpg") 
	if Gameover == 0 then
	NoReplay = display.newText(sceneGroup, "No Replay Available", 150, 220, "Arial", 30)
	end
	
	if Gameover == 1 then
	ReplayButton.isVisible = false
	
	
	local lline1 = d.newLine(sceneGroup,w40,h20,w40,h80 )
	lline1.strokeWidth = 5
	local rline1 = d.newLine(sceneGroup, w60,h20,w60,h80 )
	rline1.strokeWidth = 5
	local bline1 = d.newLine(sceneGroup, w20,h40,w80,h40 )
	bline1.strokeWidth = 5
	local tline1 = d.newLine(sceneGroup, w20,h60,w80,h60 )
	tline1.strokeWidth = 5
	count = 0
	for _ in pairs(Moves) do 
		count = count + 1
	end 

	z=1
	
	timer.performWithDelay(500, playMoves)			

end

-- EXIT REPLAY BUTTON ---

	EndReplayButton = widget.newButton(
{
	
	left = 150,
	top = 450, 
	id = "EndReplay1",
	label = "End",
	onPress = EndReplayButtonEvent,
	labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0 } }
	
}
)
sceneGroup:insert(EndReplayButton)


end



-- END REPLAY BUTTON EVENT HANDLER --	
function EndReplayButtonEvent ()
	
	Player = "O"
	if NoReplay ~= nil then
	display.remove(NoReplay)
	end
	display.remove(lline1)
	display.remove(rline1)
	display.remove(bline1)
	display.remove(tline1)
	display.remove(replaybg)
	display.remove(EndReplayButton)
	ReplayButton.isVisible = false
	ReplayButton.isHitTestable = true
end


-- UNDO MOVES FUNCTION --

function UndoMovez()
	stopUndo()
	count = 0
	for _ in pairs(Moves) do 
		count = count + 1
	end
	
	Moves[count] = nil
	Moves[count-1] = nil
	board[UndoMoves[1]][7] = 0
	board[UndoMoves[3]][7] = 0
	UndoMoves[2]:removeSelf() 
	UndoMoves[2] = nil
	UndoMoves[4]:removeSelf() 
	UndoMoves[4] = nil
end


-- 			UNDO BUTTON CODE 		---

-- BUTTON --
UndoButton = widget.newButton(
{
	
	left = 150,
	top = 450, 
	id = "Undo",
	label = "Undo",
	onPress = UndoMovez,
	labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0 } }
	
}
)

UndoButton.isVisible = false
tick = 0
running = false

-- STOP UNDO ( Stop Count, Make Button Disabled) --

function stopUndo()
	UndoButton.isVisible = false
	StopCount()
end


-- BEGIN COUNTDOWN 5 SECS --

function BeginCount()
	UndoButton.isVisible = true
	UndoButton:setLabel("Undo: 5")
	tick = 5
	if running ~= true then
		running = true
		timer.performWithDelay(1000, Clock)
	end
end


-- CLOCK Function --

function Clock()
	tick = tick - 1
	if tick > 0 then
	timer.performWithDelay(1000, Clock)
	UndoButton:setLabel("Undo: " .. tick)
	elseif tick == 0 then
	stopUndo()
	running = false
	end	
end


function StopCount()
	tick = -1
	running = false
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
		clearBoard()
	
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
		t = 1
	while t < 10 do
		board[t][7] = 0
		t = t + 1
	
 end

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