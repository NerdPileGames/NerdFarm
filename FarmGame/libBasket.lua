require 'class'

Basket = class(function(basket)

        local sprite = display.newSprite(myImageSheet, sheetInfo:getSequenceData())
        sprite:setSequence("seqBlank")
        sprite.alpha = 1
        sprite.x = theField.Basket.X
        sprite.y = theField.Basket.Y
        sprite.touch = onBasketTouch
        sprite:addEventListener("touch", sprite)
        layers.frame:insert(sprite)
        basket.sprite = sprite

        local decorator = display.newSprite(myImageSheet,
            sheetInfo:getSequenceData())
        decorator:setSequence("seqBlank")
        decorator.alpha = .2
        decorator.x = sprite.x
        decorator.y = sprite.y
        layers.overlays:insert(decorator)
        basket.decorator = decorator

        basket.sprite.parent = basket
        basket.sprite.empty = true
        basket.sprite.selected = false
        basket.sprite.type = nil
    end)

function Basket:fill()
    print('filling the basket')
    local sprite = self.sprite
    local type = theQueue[1].square_type
    print('with '..type)
    sprite:setSequence("seq"..type)
    sprite:setFrame(1)
    sprite.type = type
    sprite.empty = false
    sprite.selected = false
    theQueue:nextEntry()
end

function Basket:select()
    local sprite = self.sprite
    local dec = self.decorator
    if sprite.selected then
        dec.alpha = .2
        sprite.selected = false
    else
        dec.alpha = .5
        sprite.selected = true
    end
end

function Basket:empty(square)
    print('empty')
    self.sprite:setSequence('seqBlank')
    self.decorator.alpha = .2
    self.sprite.empty = true
    self.sprite.selected = false
    self.sprite.type = nil
end

function Basket:respond()
    if self.sprite.empty then
        print('fill')
        self:fill()
    else
        print('select')
        self:select()
    end
end
