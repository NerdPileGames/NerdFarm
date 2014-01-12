-----------------------------------------------------
-- 1. Imports and Includes
-----------------------------------------------------
--> Create physics (do we need this??)
local physics = require "physics"
physics.start()
physics.setGravity( 0, 0 )
physics.setDrawMode( hybrid )

local storyboard = require "storyboard"
storyboard.purgeOnSceneChange = true
--> Import Sprite Sheet
sheetInfo = require("plant_sheet")
myImageSheet = graphics.newImageSheet("plant_sheet.png", sheetInfo:getSheet())
--> Import Queue class
require 'class'
require 'libField'
require 'libQueue'
require 'libBasket'
require 'plants'
require 'fields'
require 'farmElement'


--> Import the Widget tool
local widget

------------------------------------------------------
-- 2. Global Variables
------------------------------------------------------
w = display.contentWidth
h = display.contentHeight
centerX = display.contentCenterX
centerY = display.contentCenterY
theQueue = {}
theField = {}
theBasket = {}
fieldType = 'Salad'
field = {}
local createSquare
local onSquareTouch
local nextDay
layers = {}
local clickedID
local score = 0
local clickAction = ""
-----------------------------------------
--Define the FarmElement class
-----------------------------------------

function getXY(id)
    sep = string.find(id, ',')
    x = tonumber(string.sub(id, 0, sep-1))
    y = tonumber(string.sub(id, -sep+1))
    return x, y
end

function getSquare(id)
    x, y = getXY(id)
    return theField.grid[x][y]
end

function addScore(inc)
    score = score + inc
    scoreHUD.text = score
end

-----------------------------------------------------
--Main Create Function
-----------------------------------------------------

storyboard.gotoScene( "title_screen", "fade", 400 )

