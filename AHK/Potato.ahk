1::
Loop {
    Loop, 9 {
        ; Pidä A-näppäin painettuna
        SendInput, {a down}
        Sleep, 93000 ; Odota 93 sekuntia
        SendInput, {a up}

        ; Odota 1 sekunti
        Sleep, 1000

        ; Pidä W-näppäin painettuna
        SendInput, {w down}
        Sleep, 1000 ; Odota 1 sekunti
        SendInput, {w up}

        ; Pidä D-näppäin painettuna
        SendInput, {d down}
        Sleep, 93000 ; Odota 93 sekuntia
        SendInput, {d up}

        ; Odota 1 sekunti
        Sleep, 1000

        ; Pidä W-näppäin painettuna
        SendInput, {w down}
        Sleep, 1000 ; Odota 1 sekunti
        SendInput, {w up}

        ; Odota 1 sekunti
        Sleep, 1000
    }

    ; Pidä S-näppäin painettuna
    SendInput, {s down}
    Sleep, 20000 ; Odota 20 sekuntia
    SendInput, {s up}
}

4::SendInput, {Lbutton down}

5::SendInput, {Lbutton up}

3::
exitapp