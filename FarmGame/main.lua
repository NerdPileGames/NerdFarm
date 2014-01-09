-----------------------------------------------------
-- 1. Imports and Includes
-----------------------------------------------------
--> Create physics (do we need this??)
local physics = require "physics"
physics.start()
physics.setGravity( 0, 0 )
physics.setDrawMode( hybrid )
--> Import Sprite Sheet
sheetInfo = require("plant_sheet2")
myImageSheet = graphics.newImageSheet("plant_sheet2.png", sheetInfo:getSheet())
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
------------------------------------------------------
-- 2. a) Screen Size and display choices
------------------------------------------------------
--> X/Y info on screen size.  Standard, might need for screen scaling
w = display.contentWidth
h = display.contentHeight
centerX = display.contentCenterX
centerY = display.contentCenterY
-----------------------------------------------------
-- 2. b) Forward Declarations
-----------------------------------------------------
theQueue = {}
theField = {}
theBasket = {}
local scoreLabel
local scoreHUD
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
function create()
    layers = display.newGroup()
    layers.frame = display.newGroup()
    layers.field = display.newGroup()
    layers.overlays = display.newGroup()
    --> Set Background
    local bg = display.newImage('images/fieldGrid.png')
    layers.frame:insert(bg)
    bg.x = centerX
    bg.y = centerY
    bg.width = display.contentWidth
    bg.height = display.contentHeight
    --> Set Label
    scoreHUD = display.newText(0, 0, 0, gameFont, 42)
    scoreHUD.x = 170
    scoreHUD.y = 80
    scoreHUD:setTextColor(51, 16, 95)
    --> Define Square and Queue Tables
    print('--@create: Create Field')
    theField = Field('Salad')
    print(theField.rows)
    theField:fill()
    theQueue = libQueue(theField.initialWeights, 3)
    theQueue:fill()
    theBasket = Basket()

    timer.performWithDelay(10, function() touchesAllowed = true end)
    layers:insert(layers.frame)
    layers:insert(layers.field)
    layers:insert(layers.overlays)
end


create()
