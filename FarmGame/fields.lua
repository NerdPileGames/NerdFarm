fields = {}

fields.Salad = {
    allowedPlants = {'Lettuce', 'Radish'},
    pests = {'Gopher'},
    rows = 5,
    columns = 5,
    initialWeights = {Lettuce=42, Radish=43, Mallet=15},
    X = 365,
    Y = 131,
    W = 650,
    H = 600,
    bg = 'images/fieldGrid.png',
    Queue = {X = 175, Y=425, W=100},
    Basket = {X = 175, Y=626, W=100},

}
function fields.Salad.updateWeights(queue, field)
    print('--fields.lua def:  updateWeights')
end

fields.Stew = {
    allowedPlants = {'Celery', 'Potato', 'Carrot'},
    pests = {'Gopher'},
    rows = 5,
    columns = 5,
    initialWeights = {Mallet=15, Potato = 29, Carrot = 28, Celery = 28},
    X = 365,
    Y = 131,
    W = 650,
    H = 600,
    bg = 'images/fieldGrid.png',
    Queue = {X = 175, Y=680, W=100},
    Basket = {X = 175, Y=680, W=100},
}
function fields.Stew.updateWeights(queue, field)
    print('--fields.lua def:  updateWeights')
end
