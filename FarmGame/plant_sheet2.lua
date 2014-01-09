--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:27a6c89e95b3b0a74754bb326133c9f8:c6d8d822983286d089a292e6a1f7e404:8d680f848ea47fae26b99a65f4e79914$
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
            -- arrow-left
            x=1970,
            y=156,
            width=31,
            height=52,

        },
        {
            -- arrow-right
            x=1848,
            y=206,
            width=31,
            height=52,

        },
        {
            -- barren
            x=1643,
            y=133,
            width=125,
            height=125,

            sourceX = 20,
            sourceY = 20,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- blank
            x=1367,
            y=143,
            width=122,
            height=122,

            sourceX = 24,
            sourceY = 24,
            sourceWidth = 173,
            sourceHeight = 173
        },
        {
            -- carrot01
            x=567,
            y=159,
            width=51,
            height=87,

            sourceX = 57,
            sourceY = 56,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- carrot02
            x=1517,
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
            x=1137,
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
            x=2,
            y=179,
            width=151,
            height=87,

            sourceX = 15,
            sourceY = 76,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery01
            x=1819,
            y=206,
            width=27,
            height=53,

            sourceX = 79,
            sourceY = 93,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery02
            x=804,
            y=157,
            width=61,
            height=113,

            sourceX = 55,
            sourceY = 33,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- celery03
            x=1284,
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
            x=1357,
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
            x=1733,
            y=2,
            width=89,
            height=125,

            sourceX = 48,
            sourceY = 18,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- icon
            x=830,
            y=2,
            width=152,
            height=152,

        },
        {
            -- jalapenos03
            x=318,
            y=2,
            width=141,
            height=157,

            sourceX = 18,
            sourceY = 2,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce01
            x=1824,
            y=77,
            width=51,
            height=49,

            sourceX = 56,
            sourceY = 81,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce02
            x=867,
            y=156,
            width=81,
            height=79,

            sourceX = 41,
            sourceY = 49,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce03
            x=155,
            y=161,
            width=99,
            height=109,

            sourceX = 30,
            sourceY = 26,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- lettuce04
            x=1208,
            y=147,
            width=157,
            height=123,

            sourceX = 8,
            sourceY = 43,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- mallet
            x=1432,
            y=2,
            width=83,
            height=137,

            sourceX = 31,
            sourceY = 22,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- moonflower03
            x=151,
            y=2,
            width=165,
            height=157,

            sourceX = 6,
            sourceY = 7,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- potatoes01
            x=1824,
            y=2,
            width=55,
            height=73,

            sourceX = 50,
            sourceY = 55,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- potatoes02
            x=1642,
            y=2,
            width=89,
            height=129,

            sourceX = 34,
            sourceY = 10,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- potatoes03
            x=984,
            y=2,
            width=151,
            height=145,

            sourceX = 8,
            sourceY = 1,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- potatoes04
            x=363,
            y=161,
            width=127,
            height=95,

            sourceX = 24,
            sourceY = 49,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish01
            x=1770,
            y=206,
            width=47,
            height=61,

            sourceX = 53,
            sourceY = 65,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish02
            x=492,
            y=159,
            width=73,
            height=93,

            sourceX = 44,
            sourceY = 36,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish03
            x=1494,
            y=141,
            width=147,
            height=129,

            sourceX = 13,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- radish04
            x=1055,
            y=149,
            width=151,
            height=117,

            sourceX = 21,
            sourceY = 51,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- rock
            x=256,
            y=161,
            width=105,
            height=107,

            sourceX = 31,
            sourceY = 48,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- seeds
            x=620,
            y=159,
            width=101,
            height=83,

            sourceX = 37,
            sourceY = 56,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- smell
            x=1881,
            y=156,
            width=87,
            height=75,

            sourceX = 38,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- smell01
            x=1881,
            y=79,
            width=99,
            height=75,

            sourceX = 34,
            sourceY = 15,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- smell02
            x=1770,
            y=129,
            width=105,
            height=75,

            sourceX = 32,
            sourceY = 15,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- smell03
            x=950,
            y=156,
            width=103,
            height=77,

            sourceX = 33,
            sourceY = 13,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- smell04
            x=1881,
            y=2,
            width=101,
            height=75,

            sourceX = 34,
            sourceY = 14,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- sunflower03
            x=2,
            y=2,
            width=147,
            height=175,

            sourceX = 9,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- tag
            x=767,
            y=2,
            width=61,
            height=153,

            sourceX = 62,
            sourceY = 12,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- tomatos01
            x=723,
            y=159,
            width=79,
            height=81,

            sourceX = 49,
            sourceY = 75,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- tomatos02
            x=622,
            y=2,
            width=143,
            height=155,

            sourceX = 6,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
        {
            -- tomatos03
            x=461,
            y=2,
            width=159,
            height=155,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 175,
            sourceHeight = 175
        },
    },

    sheetContentWidth = 2003,
    sheetContentHeight = 272
}

SheetInfo.frameIndex =
{

    ["arrow-left"] = 1,
    ["arrow-right"] = 2,
    ["barren"] = 3,
    ["blank"] = 4,
    ["carrot01"] = 5,
    ["carrot02"] = 6,
    ["carrot03"] = 7,
    ["carrot04"] = 8,
    ["celery01"] = 9,
    ["celery02"] = 10,
    ["celery03"] = 11,
    ["celery04"] = 12,
    ["gopher"] = 13,
    ["icon"] = 14,
    ["jalapenos03"] = 15,
    ["lettuce01"] = 16,
    ["lettuce02"] = 17,
    ["lettuce03"] = 18,
    ["lettuce04"] = 19,
    ["mallet"] = 20,
    ["moonflower03"] = 21,
    ["potatoes01"] = 22,
    ["potatoes02"] = 23,
    ["potatoes03"] = 24,
    ["potatoes04"] = 25,
    ["radish01"] = 26,
    ["radish02"] = 27,
    ["radish03"] = 28,
    ["radish04"] = 29,
    ["rock"] = 30,
    ["seeds"] = 31,
    ["smell"] = 32,
    ["smell01"] = 33,
    ["smell02"] = 34,
    ["smell03"] = 35,
    ["smell04"] = 36,
    ["sunflower03"] = 37,
    ["tag"] = 38,
    ["tomatos01"] = 39,
    ["tomatos02"] = 40,
    ["tomatos03"] = 41,
}

SheetInfo.sequenceData =
{
    { name="arrow-left", frames={ 1 }},
    { name="arrow-right", frames={ 2 }},
    { name="seqBarren", frames={ 3 }},
    { name="seqBlank", frames={ 4 }},
    { name="seqCarrot", frames = {5, 6, 7, 8}},
    { name="seqCelery", frames = {9, 10, 11, 12}},
    { name="seqGopher", frames = { 13 }},
    { name="icon", frames={ 14 }},
    { name="seqLettuce", frames={16, 17, 18, 19}},
    { name="seqMallet", frames={ 20 }},
    { name= "potatoes", frames={ 22, 23, 24 , 25}},
    { name="seqRadish", frames={26, 27, 28, 29}},
    { name="seqRock", frames={ 30 }},
    { name="seqSeeds", frames={ 31 }},
    { name="seqSmell", frames={ 32, 33, 34, 35, 36 }},
    { name="seqTag", frames={ 38 }},
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
