--Main Code Protected GNU General Public License v3.0(GPL 3.0) and copyright violation.

function Patch(library, flag, offset, value)
    list = gg.getRangesList(library)
    for i in pairs(list) do
        if list[i].state == "Xa" then -- Libary Module Framework  libil2cpp.so (Unity il2cpp)
        
        -- In Game Guardian, XA is where the library framework module (libil2cpp.so) is located. Sometimes it can also be found in CD.
            start = list[i].start
            break
        end
    end
    local t = {}
    t[1] = {}
    t[1].address = start + offset
    t[1].value = value
    t[1].flags = flag
    gg.setValues(t)
end

--Menu and Patching Code Protected GNU General Public License v3.0(GPL 3.0) and copyright violation.

local menu = gg.choice({' Auto Patch',' '},nil,' Example Names Games and Version  Game Dinos Online 9.2.0')

if menu == 1 then
  Patch("libil2cpp.so", 4, 0x13D38F4 , "hC0035FD6") --AntiHero (remove hero id)
  Patch("libil2cpp.so", 4, 0x13D39B8 , "hC0035FD6") --AntiHero (remove hero id)
  Patch("libil2cpp.so", 4, 0x13D3C44 , "hC0035FD6") --AntiHero (remove hero id)
  Patch("libil2cpp.so", 4, 0x113B234 , "hC0035FD6") --Immortal life (remove damage player blocked)
end

--example

-- 4 void

-- 32 bool

-- Copyright (c) 2025 Sky-Stars-Air-Yaxcess
-- Author: Star_Space_Galaxy
-- Repository: https://github.com/Sky-Stars-Air-Yaxcess/Game-Guardian-FindAddress-RVA-Methods-Auto-Find-Auto-Patching-Methods-RVA.-
-- License: GNU General Public License v3.0 (GPL-3.0)
-- Do not remove this header. All rights reserved under GPL v3.0.
-- This works for any Unity game, but only on a 64-bit il2cpp build where you can create a game dump.
-- This method  script was created for educational purposes only. Users are solely responsible for how they use it. We respect developers and urge them to fix vulnerabilities. Our goal is not to cause harm, but to promote fair and secure gameplay.

gg.toast('Author Script My YouTube Channel Star_Space_Galaxy')
gg.toast('Author Script My GitHub Sky-Stars-Air-Yaxcess')
gg.sleep(100)
gg.toast('My GitHub Sky-Stars-Yaxcess')
gg.toast('My YouTube 2 Channel Star_Space_Local_Yaxcess')