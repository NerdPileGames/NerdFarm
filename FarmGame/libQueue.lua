require 'class'
--[[
creation function for Queue object
    takes as arguments a table of weights and a length
    weights: The format for this table should be as such
        weights = {lettuce=30, radish=30, mallet=20, gopher=20}
            These each correspond to the percentage likelihood of
            that option
    length: This references the number of entries to fill into the queue
--]]

libQueue = class(function(queue, weights, length)
    queue.weights = weights
    queue.length = length
    print(weights)
    return queue
    end)


function libQueue:initialize() --push to fill the queue to the specified number
    for i=1, self.length do
        self[i] = self:pickNext()
    end
end

function libQueue:nextEntry() --push and pop, return the queue and the element that was popped
    theField:updateWeights()
    for i=1, self.length-1 do
        self[i].square_type = self[i+1].square_type
    end
    self[self.length].square_type = self:pickNext().square_type
    for i=1, self.length do
        self[i].sprite:setSequence('seq' .. self[i].square_type)
    end
end

function libQueue:pickNext()  --pick the next element in the queue based on weighted inputs
    local used = 1
    local total_weight=0
    for n in pairs(self.weights) do
        total_weight = total_weight + self.weights[n]
    end
    local rand = math.random(1,total_weight)
    for n in pairs(self.weights) do
        if rand < used + self.weights[n] then
            print('--@libQueue:pickNext()   added '..n..' to queue')
            return {square_type=n}
        else
            used = used + self.weights[n]
        end
    end
    print("No match found in queue selection: "..rand)
end

function libQueue:popLeft()
    local first = self.first
    if first > self.last then
        error("the queue is a lie")
    end
    local nxt = self[first]
    self[first] = nil
    self.first = first + 1
    return nxt
end

function libQueue:pushRight(nxt)
    local last = self.last + 1
    self.last = last
    self[last] = nxt
end

--these two probably won't be used
function libQueue:pushLeft(nxt)
    local first = self.first - 1
    self.first = first
    self[first] = nxt
end

function libQueue:popRight()
    local last = self.last
    if self.first > last then
        error("the queue is a lie")
    end
    local nxt = self[last]
    self[last] = nil
    self.last = last - 1
    return nxt
end

function libQueue:fill()
    self:initialize()
    local i = 0
    for key, val in ipairs(self) do
        i = i+1
        local tmp = display.newSprite(myImageSheet, sheetInfo:getSequenceData())
        tmp.x = theField.Queue.X
        tmp.y = theField.Queue.Y - (i-1)*125
        tmp:setSequence("seq" .. val.square_type)
        val.sprite = tmp
    end
end
