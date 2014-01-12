require 'class'
require 'plants'
require 'fieldEvents'

FarmElement = class(function(elem, x, y, i, j)
            local sprite = display.newSprite(myImageSheet, sheetInfo:getSequenceData())
            sprite:setSequence("seqBlank")
            sprite.alpha = .1
            sprite.empty = true
            sprite.x = x
            sprite.y = y
            local decorator = display.newSprite(myImageSheet,
                sheetInfo:getSequenceData())
            decorator:setSequence("seqBlank")
            decorator.alpha = .1
            decorator.x = x
            decorator.y = y

            sprite.row = j
            sprite.column = i
            sprite.id = i..','..j
            elem.id = i..','..j
            sprite.myStage = 1
            sprite.myProgress = 0
            sprite.myType = 'blank'
            sprite.timesHarvested = 0
            sprite.checked = false
            sprite.pestProof=false
            sprite.isPlant = false
            sprite.isBarren = false
            sprite.neighbors = {above = false,
                             below = false,
                             right = false,
                             left = false}
            function sprite:square()
                return theField.grid[sprite.column][sprite.row]
            end
            sprite.next = false
            sprite.touch = onSquareTouch
            sprite:addEventListener("touch", sprite)

            layers.field:insert(sprite)
            layers.overlays:insert(decorator)
            elem.sprite = sprite
            elem.decorator = decorator
            return elem
            end)

function FarmElement:setNeighbors()
    sprite = self.sprite
    x = sprite.column
    y = sprite.row
    if x > 1 then
        sprite.neighbors.left = theField.grid[x-1][y].sprite
    end
    if y > 1 then
        sprite.neighbors.above = theField.grid[x][y-1].sprite
    end
    if x < theField.columns then
        sprite.neighbors.right = theField.grid[x+1][y].sprite
    end
    if y < theField.rows then
        sprite.neighbors.below = theField.grid[x][y+1].sprite
    end
end

function FarmElement:initialize()
    self:setSpriteFunctions()
    local sprite = self.sprite
    self:setNeighbors()
    if sprite.neighbors.right then
        print(sprite.neighbors.right:square())
        self.next = sprite.neighbors.right:square()
    elseif sprite.row < theField.rows then
        self.next = theField.grid[1][sprite.row + 1]
    end
end

function FarmElement:setSpriteFunctions()
    local sprite = self.sprite
    function sprite:checkNeighbors()
        local plant = sprite.plant
        local parent = sprite:square()
        local myType = sprite.myType
        print("--@checkNeighbors: checking: "..sprite.id)
        if sprite.checked == true or sprite.myStage ~= Plants.mature  then
            print("--@checkNeighbors: not this one")
            return true
        end
        sprite.timesHarvested = sprite.timesHarvested + 1
        sprite.checked = true
        addScore(sprite.xp)
        print("--@checkNeighbors: new timesHarvested: "..sprite.timesHarvested..' vs maxHarvest '..plant['maxHarvest'])
        if sprite.timesHarvested >= plant['maxHarvest'] then
            parent:clearImage()
        end

        for i, tmp in pairs(sprite.neighbors) do
            if tmp then
                if tmp.checked == false and tmp.myType==myType then
                    tmp:checkNeighbors()
                end
            end
        end
    end
    function sprite:grow()
        self.myStage = self.myStage + 1
        print("--@nextDay: now at stage "..self.myStage)
        square:setImage(self.myType, self.myStage)
    end
end


function FarmElement:setSequence(seq)
    self.sprite:setSequence(seq)
end

function FarmElement:setFrame(frame)
    self.sprite:setFrame(frame)
end

function FarmElement:setImage(type, phase)
    phase = phase or 0
    print('--@FarmElement:setImage: set '..self.id..' to type '..type..' phase '..phase)
    sprite = self.sprite
    if sprite.isPlant then
        sprite.plant = Plants[type]
        sprite.toNext = sprite.plant.turns[phase + 1]
        sprite.xp = sprite.plant.xp
        if phase == 0 then
            print('--@FarmElement:setImage: placing seeds')
            self:setSequence('seqSeeds')
        else
            self:setSequence('seq'..type)
            self:setFrame(phase)
            if self.sprite.myStage == Plants.rot then
                self:setDecorator('smell')
            elseif self.sprite.myStage == Plants.mature then
                --self:setDecorator('tag')
            else
                self:clearDecorator()
            end
        end
    else
        print(sprite.id..' is pest proof... cus its a '..type)
        self:setSequence('seq'..type)
        sprite.pestProof=true
    end
    sprite.myStage = phase
    if sprite.myStage==Plants.rot then
        sprite.pestProof=true
    end
    sprite.myType = type
    sprite.empty = false
    sprite.alpha = 1
    sprite.myProgress = 0
    sprite.checked = false
end

function FarmElement:clearImage()
    print('clearing '..self.sprite.id)
    self:setSequence('seqBlank')
    self.sprite.empty = true
    self.sprite.alpha = 1
    self.sprite.timesHarvested = 0
    self.sprite.myStage = 0
    self.sprite.myProgress = 0
    self.sprite.myType = "blank"
    self.sprite.pestProof = false
    self.sprite.isPlant = false
    self.sprite.checked = false
end

function FarmElement:makeBarren()
    print("Make Barren")
    self:setSequence('seqBarren')
    self:setFrame(1)
    self:clearDecorator()
    self.sprite.isBarren=true
    self.sprite.myProgress=0
end

function FarmElement:setDecorator(dec)
    if dec == 'smell' then
        self.decorator:setSequence('seqSmell')
        self.decorator:play()
        self.decorator.alpha=1
    elseif dec == 'tag' then
        print('--@FarmElement:setDecorator:  set Tag')
        self.decorator:setSequence('seqTag')
        self.decorator.alpha = 1
    end
end

function FarmElement:clearDecorator()
    self.decorator:setSequence('seqBlank')
    self.decorator.alpha = .1
end
