1::

Loop {
    Loop, 15 {
        SendInput, {s down}
        Sleep, 20000 ; 20s
        SendInput, {s up}

        SendInput, {d down}
        Sleep, 20000 ; 20s
        SendInput, {d up}

    }

    SendInput, {w down}
    Sleep, 9000 ; 9s
    SendInput, {w up}
}

3::
exitapp