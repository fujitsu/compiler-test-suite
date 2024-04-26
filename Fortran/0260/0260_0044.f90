program main
        implicit logical(kind=8)                (x-z)

        implicit type(logical(kind=8))          (w)

        implicit type(logical(8))               (a,i)
        implicit type(logical(kind=8))          (b)
        implicit type(logical(kind=(12-4)))     (c)
        implicit type(logical(12-4))            (d)
        implicit type(logical(2*4))             (e)
        implicit type(logical(((16)-(2*4))))    (f)

        if(kind(x) /= kind(y)) print*,101
        if(kind(x) /= kind(a)) print*,102
        if(kind(x) /= kind(i)) print*,103
        if(kind(x) /= kind(b)) print*,104
        if(kind(x) /= kind(c)) print*,105
        if(kind(x) /= kind(d)) print*,106
        if(kind(x) /= kind(e)) print*,107
        if(kind(x) /= kind(f)) print*,108
        if(kind(x) /= kind(w)) print*,109

print*,"pass"
end program main

