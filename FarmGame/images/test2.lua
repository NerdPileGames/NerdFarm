--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a4179ed3237ba5f15ec74ab1d084fa59:1/1$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- gopher
            x=2,
            y=102,
            width=38,
            height=52,

            sourceX = 16,
            sourceY = 2,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- lettuce01
            x=72,
            y=144,
            width=20,
            height=20,

            sourceX = 22,
            sourceY = 32,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- lettuce02
            x=94,
            y=68,
            width=32,
            height=30,

            sourceX = 16,
            sourceY = 21,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- lettuce03
            x=52,
            y=68,
            width=40,
            height=42,

            sourceX = 12,
            sourceY = 11,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- lettuce04
            x=2,
            y=2,
            width=62,
            height=48,

            sourceX = 3,
            sourceY = 18,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- mallet
            x=66,
            y=2,
            width=58,
            height=64,

            sourceX = 6,
            sourceY = 3,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- radish01
            x=2,
            y=156,
            width=24,
            height=28,

            sourceX = 20,
            sourceY = 24,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- radish02
            x=42,
            y=144,
            width=28,
            height=40,

            sourceX = 18,
            sourceY = 12,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- radish03
            x=2,
            y=52,
            width=48,
            height=48,

            sourceX = 10,
            sourceY = 4,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- seeds
            x=52,
            y=52,
            width=12,
            height=8,

            sourceX = 29,
            sourceY = 53,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- smell
            x=42,
            y=112,
            width=34,
            height=30,

            sourceX = 16,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
        {
            -- tag
            x=94,
            y=100,
            width=28,
            height=66,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 70,
            sourceHeight = 70
        },
    },
    
    sheetContentWidth = 128,
    sheetContentHeight = 256
}

SheetInfo.frameIndex =
{

    ["gopher"] = 1,
    ["lettuce01"] = 2,
    ["lettuce02"] = 3,
    ["lettuce03"] = 4,
    ["lettuce04"] = 5,
    ["mallet"] = 6,
    ["radish01"] = 7,
    ["radish02"] = 8,
    ["radish03"] = 9,
    ["seeds"] = 10,
    ["smell"] = 11,
    ["tag"] = 12,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
