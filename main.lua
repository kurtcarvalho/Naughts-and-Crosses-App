-----------------------------------------------------------------------------------------
--	AUTHOR: KURT CARVALHO - 10387806 - 02/11/2017
--
-- main.lua
--
-- main for Checkers Game
--
-----------------------------------------------------------------------------------------

-- even though we only have one scene, we will use the composer library

local composer = require( "composer" )

-- Code to initialize the app can go here

-- Now load the opening scene

-- Assumes that "Menu.lua" exists and is configured as a Composer scene
composer.gotoScene( "Menu" )