program main
        implicit character(kind=1)(a)

        implicit type(character(kind=1,len=10)) (b,c)          
        implicit TYPE(CHARACTER(kind=1))                (d)                 
        implicit TYPE(CHARACTER(len=16-4, kind=16-15))  (e-g)   

        if(kind(a) /= kind(b)) print*,101
        if(len(b) /=10) print*,106 
        if(kind(a) /= kind(c)) print*,102
        if(len(c) /=10) print*,107
        if(kind(a) /= kind(d)) print*,103
        if(len(d) /=1) print*,108
        if(kind(a) /= kind(e)) print*,104
        if(len(e) /=12) print*,109
        if(kind(a) /= kind(g)) print*,105
        if(len(g) /=12) print*,100

print*,"pass"
end program main

