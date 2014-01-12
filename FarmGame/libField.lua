require 'class'
require 'fields'
require 'fieldEvents'

Field = class(function(field, type)
        print('--@Field init: type =')
        print(type)
        tmp = fields[type]
        for i, v in pairs(tmp) do
            field[i] = v
        end
        print('ROWS: '..field.rows)
        field.turns = 0
        field.gophers = 0
        field.grid = {}
        bg = display.newImage(field.bg)
        bg.anchorX = 0
        bg.anchorY = 0
        bg.x = 0
        bg.y = 0
        layers.field:insert(bg)
        print('ROWS: '..field.rows)
        return field
    end)

function Field:fill()
    for i=1,self.columns do
        self.grid[i] = {}
        for j=1,self.rows do
            self.grid[i][j]={}
            --local tmp = createSquare(layers.field, 'static', i..','..j)
            x = self.X + (i-1)*((self.W/self.columns))
            y = self.Y + (j-1)*((self.H/self.rows))
            local tmp = FarmElement(x, y, i, j)
            self.grid[i][j] = tmp
        end
    end
    self.first = self.grid[1][1]
    square = self.first
    while square do
        square:initialize()
        square = square.next
    end
end

function Field:cleanup()
    square = self.first
    while square do
        tmp = square.sprite
        tmp.checked = false
        if tmp.empty == true then
            tmp:setSequence('seqBlank')
        end
        square = square.next
    end
    while square do
        tmp = square.sprite
        if not tmp.empty then
            if tmp.isPlant then
                if tmp.myStage==0 then
                    tmp:setSequence('seqSeeds')
                elseif tmp.isBarren then
                    tmp:setSequence('seqBarren')
                else
                    tmp:setSequence('seq'..tmp.myType)
                    tmp:setFrame(tmp.myStage)
                end
            else
                print(mytype)
                tmp:setSequence('seq'..tmp.myType)
            end
        end
        square = square.next
    end
end

function Field:nextDay()
    print('--@nextDay: Next Day Function')
    print("--@nextDay: clicked ID: "..clickedID)
    if clickAction=='harvest' then
        print("--@nextDay: harvest(in nextDay)")
        getSquare(clickedID).sprite:checkNeighbors()
        clickAction=""
    end
    if clickAction=='clear' then
        print("--@nextDay: Pruning")
        getSquare(clickedID):makeBarren()
        clickAction=""
    end
    print('--@nextDay: updating unclicked plots')
    square = self.first
    while square do
        sprite = square.sprite
        if sprite.id~=clickedID and not sprite.empty then
            if sprite.myType=='Gopher' and sprite.checked == false then
                print('--@nextDay: Gopher at '..sprite.id..' moves')
                moveGopher(sprite.id)
            elseif sprite.isPlant then
                sprite.myProgress = sprite.myProgress + 1
                print('--nextDay: '..sprite.myType..' at '..sprite.id..' progress: '..sprite.myProgress)
                if sprite.myProgress > sprite.toNext then
                    if sprite.isBarren then
                        print("--@nextDay: "..sprite.id.." can now make babies again")
                        square:clearImage()
                    elseif sprite.myStage < Plants.rot then
                        sprite:grow()
                    end
                end
            end
        end
        square = square.next
    end
    theField:cleanup()
    theField.turns = theField.turns + 1
    if theField.gophers < 3 then
        if theField.turns >5 and theField.turns < 20 then
            rnd = math.random(1, 20)
            if rnd==1 then
                spawnGopher()
            end
        end
        if theField.turns > 20 then
            rnd = math.random(1, 10)
            if rnd==1 then
                spawnGopher()
            end
        end
    end
end
