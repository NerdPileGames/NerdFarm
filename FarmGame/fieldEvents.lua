require 'plants'

function spawnGopher()
    print("++++++++++++++++++++++SpawnGopher")
    while true do
        x = math.random(1, 5)
        y = math.random(1, 5)
        tmp = theField.grid[x][y]
        if tmp.sprite.empty then
            break
        end
    end
    print(x, y)
    tmp:setImage("Gopher", 0)
end

function moveGopher(id)
    while true do
        newX = math.random(1, 5)
        newY = math.random(1, 5)
        tmp = theField.grid[newX][newY].sprite
        print('--@moveGopher: checking '..newX..','..newY..' for gopher move.')
        print('--@moveGopher: type= '..tmp.myType..' and pest proof = ',tmp.pestProof)
        if not tmp.pestProof and tmp.id~=id and not (newX..','..newY)==clickedID then
            break
        end
    end
    x, y = getXY(id)
    print('--@moveGopher: Gopher moves from '..x..','..y..' to '..newX..','..newY)
    theField.grid[x][y]:clearImage()
    theField.grid[newX][newY].sprite.isPlant=false
    theField.grid[newX][newY]:setImage('Gopher')
    theField.grid[newX][newY].sprite.checked=true
end

function killGopher(id)
    getSquare(id):setImage("Rock", 0)
end

function onSquareTouch(self, event)
    local target  = event.target
    local phase   = event.phase
    local touchID = event.id
    local parent  = target.parent
    local nextElement = {}
    if theBasket.sprite.selected then
        nextElement = theBasket.sprite.type
    else
        nextElement = theQueue[1].square_type
    end
    local nextIsPlant = nextElement ~= 'Mallet'
    if( not touchesAllowed ) then return true end
    if( target.isBase ) then return true end
    if( phase == "began" ) then
        display.getCurrentStage():setFocus( target, touchID )
        target.isFocus = true
    elseif( self.isFocus and phase == 'ended') then
        print('--------------@onSquareTouch: click registered')
        print('----------@onSquareTouch: Square: '..self.id..' empty?')
        print(self.empty)
        clickedID = self.id
        if self.empty then
            if nextElement ~= "Mallet" then
                ------------------------------------------------------------
                --Event listener for key release
                --If the square is empty and the next entry in the queue
                --    is a plant
                --Add the next plant to this square, give it a stage and
                --    progress of 0 and set empty to false
                --Then, call the next-day function.
                ------------------------------------------------------------
                print("--@onSquareTouch: placing a "..nextElement.." at "..self.id)
                self.isPlant=true
                getSquare(self.id):setImage(nextElement, 0)
            end
            if theBasket.sprite.selected then
                theBasket:empty()
            else
                theQueue:nextEntry()
            end
            theField:nextDay()
        end
        if not self.empty then
            if nextElement == 'Mallet' then
                print('--@onSquareTouch: Mallet')
                -- Use the mallet on a Gopher *SMACK*
                if self.myType=="Gopher" then
                    killGopher(self.id)
                --Use the mallet to prune this square
                elseif self.myType~="Rock" then
                    print('--@onSquareTouch: pruning')
                    print(self.id)
                    getSquare(self.id):clearImage()
                end
                if theBasket.sprite.selected then
                    theBasket:empty()
                else
                    theQueue:nextEntry()
                end
                theField:nextDay()
            elseif self.myStage==3 then
                print("--@onSquareTouch: harvest")
                clickAction = "harvest"
                theField:nextDay()
                square = theField.first
                while square do
                    square.checked = false
                    square = square.next
                end
            elseif self.myStage==Plants.rot then
                print("--@onSquareTouch: clear")
                clickAction = "clear"
                theField:nextDay()
            end
        end
        if( phase == "ended" or phase == "cancelled" ) then
            display.getCurrentStage():setFocus( nil )
            target.isFocus = false
        end
    end
    return true
end

function onBasketTouch(self, event)
    local target  = event.target
    local phase   = event.phase
    local touchID = event.id
    local parent  = self.parent

    if( not touchesAllowed ) then return true end
    if( target.isBase ) then return true end

    if( phase == "began" ) then
        display.getCurrentStage():setFocus( target, touchID )
        target.isFocus = true
    elseif( self.isFocus and phase == 'ended') then
        print('--------------@onBasketTouch: click registered')

        theBasket:respond()

        if( phase == "ended" or phase == "cancelled" ) then
            display.getCurrentStage():setFocus( nil )
            target.isFocus = false
        end
    end
    return true
end
