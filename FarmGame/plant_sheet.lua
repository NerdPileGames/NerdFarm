--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:80040d93a2caaa581fb2f35da23ab625:ea8d9c7b218d775fe8aab0c000802970:b9dd8805c19c2414352d792dfe80739f$
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
            -- blank
            x=719,
            y=2,
            width=125,
            height=125,

            sourceX = 25,
            sourceY = 25,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- carrot01
            x=654,
            y=133,
            width=51,
            height=87,

            sourceX = 57,
            sourceY = 56,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- carrot02
            x=445,
            y=2,
            width=123,
            height=131,

            sourceX = 31,
            sourceY = 14,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- carrot03
            x=65,
            y=2,
            width=145,
            height=143,

            sourceX = 25,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- carrot04
            x=184,
            y=147,
            width=151,
            height=87,

            sourceX = 15,
            sourceY = 76,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery01
            x=970,
            y=190,
            width=27,
            height=53,

            sourceX = 79,
            sourceY = 93,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery02
            x=438,
            y=141,
            width=61,
            height=113,

            sourceX = 55,
            sourceY = 33,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery03
            x=212,
            y=2,
            width=71,
            height=143,

            sourceX = 48,
            sourceY = 4,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery04
            x=285,
            y=2,
            width=73,
            height=139,

            sourceX = 70,
            sourceY = 8,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- gopher
            x=790,
            y=129,
            width=89,
            height=125,

            sourceX = 48,
            sourceY = 18,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce01
            x=881,
            y=204,
            width=51,
            height=49,

            sourceX = 56,
            sourceY = 81,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce02
            x=707,
            y=133,
            width=81,
            height=79,

            sourceX = 41,
            sourceY = 49,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce03
            x=337,
            y=143,
            width=99,
            height=109,

            sourceX = 30,
            sourceY = 26,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce04
            x=846,
            y=2,
            width=157,
            height=123,

            sourceX = 8,
            sourceY = 43,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- mallet
            x=360,
            y=2,
            width=83,
            height=137,

            sourceX = 31,
            sourceY = 22,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish01
            x=970,
            y=127,
            width=47,
            height=61,

            sourceX = 53,
            sourceY = 65,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish02
            x=2,
            y=157,
            width=73,
            height=93,

            sourceX = 44,
            sourceY = 36,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish03
            x=570,
            y=2,
            width=147,
            height=129,

            sourceX = 13,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish04
            x=501,
            y=135,
            width=151,
            height=117,

            sourceX = 21,
            sourceY = 51,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- rock
            x=77,
            y=147,
            width=105,
            height=107,

            sourceX = 31,
            sourceY = 48,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- seeds
            x=654,
            y=222,
            width=31,
            height=23,

            sourceX = 75,
            sourceY = 70,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- smell
            x=881,
            y=127,
            width=87,
            height=75,

            sourceX = 38,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- tag
            x=2,
            y=2,
            width=61,
            height=153,

            sourceX = 62,
            sourceY = 12,
            sourceWidth = 175,
            sourceHeight = 175
        },
    },

    sheetContentWidth = 1019,
    sheetContentHeight = 256
}

SheetInfo.frameIndex =
{

    ["blank"] = 1,
    ["carrot01"] = 2,
    ["carrot02"] = 3,
    ["carrot03"] = 4,
    ["carrot04"] = 5,
    ["celery01"] = 6,
    ["celery02"] = 7,
    ["celery03"] = 8,
    ["celery04"] = 9,
    ["gopher"] = 10,
    ["lettuce01"] = 11,
    ["lettuce02"] = 12,
    ["lettuce03"] = 13,
    ["lettuce04"] = 14,
    ["mallet"] = 15,
    ["radish01"] = 16,
    ["radish02"] = 17,
    ["radish03"] = 18,
    ["radish04"] = 19,
    ["rock"] = 20,
    ["seeds"] = 21,
    ["smell"] = 22,
    ["tag"] = 23,
}

SheetInfo.sequenceData =
{
    { name="seqBlank", frames={ 1 }},
    { name="seqCarrot", frames = {2, 3, 4, 5}},
    { name="seqCelery", frames = {6, 7, 8, 9}},
    { name="seqBarren", frames = {9}},
    { name="seqGopher", frames = { 10 }},
    { name="seqLettuce", frames={11, 12, 13, 14}},
    { name="seqMallet", frames={ 15 }},
    { name="seqRadish", frames={16, 17, 18, 19}},
    { name="seqRock", frames={ 20 }},
    { name="seqSeeds", frames={ 21 }},
    { name="seqSmell", frames={ 22 }},
    { name="seqTag", frames={ 23 }},
}

function SheetInfo:getSequenceData()
    return self.sequenceData;
end


function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
