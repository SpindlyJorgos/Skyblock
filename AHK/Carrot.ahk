1::
Loop {
    Loop, 9 {
        ; Press A-Down For 93 second
        SendInput, {a down}
        Sleep, 93000
        SendInput, {a up}

        ; Sleep 1 second
        Sleep, 1000

        ; Press W-Down For 1 second
        SendInput, {w down}
        Sleep, 1000 ; Odota 1 sekunti
        SendInput, {w up}

        ; Press D-Down For 93 second
        SendInput, {d down}
        Sleep, 93000 ; Odota 93 sekuntia
        SendInput, {d up}

        ; Sleep 1 second
        Sleep, 1000

        ; Press W-Down For 1 second
        SendInput, {w down}
        Sleep, 1000 ; Odota 1 sekunti
        SendInput, {w up}

        ; Sleep 1 second
        Sleep, 1000
    }

    ; Press S-Down For 20 second
    SendInput, {s down}
    Sleep, 20000
    SendInput, {s up}
}


5::
SendInput, {Lbutton up}

4::
SendInput, {Lbutton down}

3::
exitapp