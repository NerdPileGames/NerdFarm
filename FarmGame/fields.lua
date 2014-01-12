fields = {}

fields.Salad = {
    allowedPlants = {'Lettuce', 'Radish'},
    pests = {'Gopher'},
    rows = 5,
    columns = 5,
    initialWeights = {Lettuce=42, Radish=43, Mallet=5},
    Weights = initialWeights,
    X = 365,
    Y = 131,
    W = 650,
    H = 600,
    bg = 'images/fieldGrid.png',
    thumb = 'images/fieldPreviewSalad.png',
    Queue = {X = 175, Y=425, W=100},
    Basket = {X = 175, Y=626, W=100},
}
function fields.Salad.updateWeights()
    theQueue.weights.Mallet = 5*theField.gophers
    plants = 100-theQueue.weights.Mallet
    theQueue.weights.Lettuce = math.floor(plants/2)
    theQueue.weights.Radish = math.ceil(plants/2)
    print('--fields.lua def:  updateWeights')
end

fields.Stew = {
    allowedPlants = {'Celery', 'Potato', 'Carrot'},
    pests = {'Gopher'},
    rows = 5,
    columns = 5,
    initialWeights = {Mallet=15, Potato = 29, Carrot = 28, Celery = 28},
    Weights = initialWeights,
    X = 365,
    Y = 131,
    W = 650,
    H = 600,
    bg = 'images/fieldGrid.png',
    thumb = 'images/fieldPreviewStew.png',
    Queue = {X = 175, Y=425, W=100},
    Basket = {X = 175, Y=626, W=100},
}
function fields.Stew.updateWeights(queue, field)
    theQueue.weights.Mallet = 5*theField.gophers
    plants = 100-theQueue.weights.Mallet
    theQueue.weights.Potato = math.floor(plants/3)
    theQueue.weights.Carrot = math.floor(plants/3)
    theQueue.weights.Celery = 100-2*math.floor(plants/3)
    print('--fields.lua def:  updateWeights')
end

fields.Pumpkin = {
    allowedPlants = {'Celery', 'Potato', 'Carrot'},
    pests = {'Gopher'},
    rows = 5,
    columns = 5,
    initialWeights = {Mallet=15, Potato = 29, Carrot = 28, Celery = 28},
    Weights = initialWeights,
    X = 365,
    Y = 131,
    W = 650,
    H = 600,
    bg = 'images/fieldGrid.png',
    thumb = 'images/fieldPreviewPumpkin.png',
    Queue = {X = 175, Y=425, W=100},
    Basket = {X = 175, Y=626, W=100},
}
function fields.Stew.updateWeights(queue, field)
    theQueue.weights.Mallet = 5*theField.gophers
    plants = 100-theQueue.weights.Mallet
    theQueue.weights.Potato = math.floor(plants/3)
    theQueue.weights.Carrot = math.floor(plants/3)
    theQueue.weights.Celery = 100-2*math.floor(plants/3)
    print('--fields.lua def:  updateWeights')
end
