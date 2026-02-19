--[[--
Pocketbook plugin to use 8BitDo.

This is a simplification of bluetooth.koplugin and https://www.mobileread.com/forums/showthread.php?t=370120

@module koplugin.Pocketbook8BitDo
--]]--

local UIManager = require("ui/uimanager")
local InputContainer = require("ui/widget/container/inputcontainer")
local Event = require("ui/event")
local logger = require("logger")
local _ = require("gettext")

local BRIGHTNESS_DELTA = 5
local WARMTH_DELTA = 1

local Pocketbook8BitDo = InputContainer:extend{
    name = "Pocketbook8BitDo",
}

function Pocketbook8BitDo:init()
    self:registerKeyEvents()
    logger.info("Pocketbook8BitDo plugin initialized.")
end

function Pocketbook8BitDo:registerKeyEvents()
    self.key_events.GotoNextChapterviaBT = { { "GotoNextChapterviaBT" }, event = "GotoNextChapterviaBT" }
    self.key_events.GotoPrevChapterviaBT = { { "GotoPrevChapterviaBT" }, event = "GotoPrevChapterviaBT" }
    self.key_events.DecreaseFontSizeviaBT = { { "DecreaseFontSizeviaBT" }, event = "DecreaseFontSizeviaBT" }
    self.key_events.IncreaseFontSizeviaBT = { { "IncreaseFontSizeviaBT" }, event = "IncreaseFontSizeviaBT" }
    self.key_events.ToggleBookmarkviaBT = { { "ToggleBookmarkviaBT" }, event = "ToggleBookmarkviaBT" }
    self.key_events.IterateRotationviaBT = { { "IterateRotationviaBT" }, event = "IterateRotationviaBT" }
    self.key_events.RightviaBT = { { "RightviaBT" }, event = "RightviaBT" }
    self.key_events.LeftviaBT = { { "LeftviaBT" }, event = "LeftviaBT" }
    self.key_events.IncreaseBrightnessviaBT = { { "IncreaseBrightnessviaBT" }, event = "IncreaseBrightnessviaBT" }
    self.key_events.DecreaseBrightnessviaBT = { { "DecreaseBrightnessviaBT" }, event = "DecreaseBrightnessviaBT" }
    self.key_events.IncreaseWarmthviaBT = { { "IncreaseWarmthviaBT" }, event = "IncreaseWarmthviaBT" }
    self.key_events.DecreaseWarmthviaBT = { { "DecreaseWarmthviaBT" }, event = "DecreaseWarmthviaBT" }
    self.key_events.NextBookmarkviaBT = { { "NextBookmarkviaBT" }, event = "NextBookmarkviaBT" }
    self.key_events.PrevBookmarkviaBT = { { "PrevBookmarkviaBT" }, event = "PrevBookmarkviaBT" }
    self.key_events.LastBookmarkviaBT = { { "LastBookmarkviaBT" }, event = "LastBookmarkviaBT" }
    self.key_events.ToggleNightModeviaBT = { { "ToggleNightModeviaBT" }, event = "ToggleNightModeviaBT" }
    self.key_events.ToggleStatusBarviaBT = { { "ToggleStatusBarviaBT" }, event = "ToggleStatusBarviaBT" }
    self.key_events.GoBackLinkviaBT = { { "GoBackLinkviaBT" }, event = "GoBackLinkviaBT" }
    self.key_events.GoForwardLinkviaBT = { { "GoForwardLinkviaBT" }, event = "GoForwardLinkviaBT" }
    self.key_events.ShowTocviaBT = { { "ShowTocviaBT" }, event = "ShowTocviaBT" }
    self.key_events.BackviaBT = { { "BackviaBT" }, event = "BackviaBT" }
end

function Pocketbook8BitDo:onGotoNextChapterviaBT()
    UIManager:sendEvent(Event:new("GotoNextChapter"))
end

function Pocketbook8BitDo:onGotoPrevChapterviaBT()
    UIManager:sendEvent(Event:new("GotoPrevChapter"))
end

function Pocketbook8BitDo:onDecreaseFontSizeviaBT()
    UIManager:sendEvent(Event:new("DecreaseFontSize", 1))
end

function Pocketbook8BitDo:onIncreaseFontSizeviaBT()
    UIManager:sendEvent(Event:new("IncreaseFontSize", 1))
end

function Pocketbook8BitDo:onToggleBookmarkviaBT()
    UIManager:sendEvent(Event:new("ToggleBookmark"))
end

function Pocketbook8BitDo:onIterateRotationviaBT()
    UIManager:sendEvent(Event:new("IterateRotation"))
end

function Pocketbook8BitDo:onRightviaBT()
    UIManager:sendEvent(Event:new("GotoViewRel", 1))
end

function Pocketbook8BitDo:onLeftviaBT()
    UIManager:sendEvent(Event:new("GotoViewRel", -1))
end

function Pocketbook8BitDo:onIncreaseBrightnessviaBT()
    UIManager:sendEvent(Event:new("IncreaseFlIntensity", BRIGHTNESS_DELTA))
end

function Pocketbook8BitDo:onDecreaseBrightnessviaBT()
    UIManager:sendEvent(Event:new("DecreaseFlIntensity", BRIGHTNESS_DELTA))
end

function Pocketbook8BitDo:onIncreaseWarmthviaBT()
    UIManager:sendEvent(Event:new("IncreaseFlWarmth", WARMTH_DELTA))
end

function Pocketbook8BitDo:onDecreaseWarmthviaBT()
    UIManager:sendEvent(Event:new("IncreaseFlWarmth", -WARMTH_DELTA))
end

function Pocketbook8BitDo:onNextBookmarkviaBT()
    UIManager:sendEvent(Event:new("GotoNextBookmarkFromPage"))
end

function Pocketbook8BitDo:onPrevBookmarkviaBT()
    UIManager:sendEvent(Event:new("GotoPreviousBookmarkFromPage"))
end

function Pocketbook8BitDo:onLastBookmarkviaBT()
    UIManager:sendEvent(Event:new("GoToLatestBookmark"))
end

function Pocketbook8BitDo:onToggleNightModeviaBT()
    UIManager:sendEvent(Event:new("ToggleNightMode"))
end

function Pocketbook8BitDo:onToggleStatusBarviaBT()
    UIManager:sendEvent(Event:new("ToggleFooterMode"))
end

function Pocketbook8BitDo:onGoBackLinkviaBT()
    UIManager:sendEvent(Event:new("GoBackLink"))
end

function Pocketbook8BitDo:onGoForwardLinkviaBT()
    UIManager:sendEvent(Event:new("GoForwardLink"))
end

function Pocketbook8BitDo:onShowTocviaBT()
    UIManager:sendEvent(Event:new("ShowToc"))
end

return Pocketbook8BitDo
