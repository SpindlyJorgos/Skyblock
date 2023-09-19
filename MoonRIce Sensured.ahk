#NoEnv
SendMode Input
SetTitleMatchMode 2
SetWorkingDir %A_ScriptDir%

; Määritetään aluksi, mikä näkyy ensimmäisen Options-napin päällä
ModButtonText := "MOD"
ShowOptions := False

Gui, +ToolWindow +AlwaysOnTop
Gui, Add, Picture, x0 y0 w400 h300, Kuvat/Taivaspalikka.jpg ; Taustakuva JPG tai PNG mukaan?

Gui, Add, Button, x11 y118 w70 h20 gToggleMod, %ModButtonText% ; Ensimmäinen valinta nappula

Gui, Show, x0 y0 w400 h300, Moonrice

return

ToggleMod:
    ; Muutetaan ensimmäisen Options-napin tekstiä MOD -> OPTIONS ja näytetään/piilotetaan alasvetovalikko
    if (ModButtonText = "MOD") {
        ModButtonText := "OPTIONS"
        ShowOptions := True
        Gui, Add, DropDownList, x10 y150 w120 vOptionList, Wheat|Carrot|Potato|Pumpkin|Sugar Cane|Melon|Cactus|Cocoa Beans|Mushroom|Nether Wart
        Gui, Add, Button, x140 y150 w70 h20 gSelectedOption, OK
    } else {
        ModButtonText := "MOD"
        ShowOptions := False
        GuiControl, Hide, OptionList ; Piilotetaan alasvetovalikko
        GuiControl, Hide, OK ; Piilotetaan OK-nappi
    }
    GuiControl, +Text, OPTIONS, %ModButtonText%
return

SelectedOption:
    GuiControlGet, selectedOption, , OptionList
    ; Tarkista, minkä vaihtoehdon käyttäjä valitsi ja avaa sen mukainen .ahk-tiedosto
    if (selectedOption = "Wheat") {
        Run, AHK\Wheat.ahk ; Avaa Wheat.ahk-tiedoston
    }
    else if (selectedOption = "Carrot") {
        Run, AHK\Carrot.ahk ; Avaa Carrot.ahk-tiedoston
    }
    else if (selectedOption = "Potato") {
        Run, AHK\Potato.ahk ; Avaa Potato.ahk-tiedoston
    }
    else if (selectedOption = "Pumpkin") {
        Run, AHK\Pumpkin.ahk ; Avaa Pumpkin.ahk-tiedoston
    }
    else if (selectedOption = "Sugar Cane") {
        Run, AHK\SugarCane.ahk ; Avaa SugarCane.ahk-tiedoston
    }
    else if (selectedOption = "Melon") {
        Run, AHK\Melon.ahk ; Avaa Melon.ahk-tiedoston
    }
    else if (selectedOption = "Cactus") {
        Run, AHK\Cactus.ahk ; Avaa Cactus.ahk-tiedoston
    }
    else if (selectedOption = "Cocoa Beans") {
        Run, AHK\CocoaBeans.ahk ; Avaa CocoaBeans.ahk-tiedoston
    }
    else if (selectedOption = "Mushroom") {
        Run, AHK\Mushroom.ahk ; Avaa Mushroom.ahk-tiedoston
    }
    else if (selectedOption = "Nether Wart") {
        Run, AHK\NetherWart.ahk ; Avaa NetherWart.ahk-tiedoston
    }
    
    GuiControl,, OptionList
    GuiControl,, OK
return

GuiClose:
    ExitApp
return
