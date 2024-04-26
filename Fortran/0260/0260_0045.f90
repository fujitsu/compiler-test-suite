program main

        implicit real(kind=8)                (x-z)

        implicit type(real(kind=8))          (w)

        implicit type(real(4))               (a,i)
        implicit type(real(kind=8))          (b)
        implicit type(real(kind=(12-4)))     (c)
        implicit type(real(12-4))            (d)
        implicit type(real(2*4))             (e)
        implicit type(real(((16)-(2*4))))    (f)

        if(kind(x) /= kind(y)) print*,101
        if(kind(x) /= kind(b)) print*,102, kind(x), kind(b)
        if(kind(a) /= kind(i)) print*,103
        if(kind(x) /= kind(b)) print*,104
        if(kind(x) /= kind(c)) print*,105
        if(kind(x) /= kind(d)) print*,106
        if(kind(x) /= kind(e)) print*,107
        if(kind(x) /= kind(f)) print*,108
        if(kind(x) /= kind(w)) print*,109

print*,"pass"
end program main

