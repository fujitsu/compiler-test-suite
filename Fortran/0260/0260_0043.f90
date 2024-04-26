program main
        implicit integer(kind=8)                (x-z)
        
        implicit type(integer(kind=8))          (w)
       
        implicit type(integer(8))               (a,i)             
        implicit type(integer(kind=8))          (b)    
        implicit type(integer(kind=(12-4)))     (c)  
        implicit type(integer(12-4))            (d)   
        implicit type(integer(2*4))             (e) 
        implicit type(integer(((16)-(2*4))))    (f)   
        
        if(kind(x) /= kind(y)) print*,101
        if(kind(x) /= kind(a)) print*,102
        if(kind(x) /= kind(i)) print*,103
        if(kind(x) /= kind(b)) print*,104
        if(kind(x) /= kind(c)) print*,105
        if(kind(x) /= kind(d)) print*,106
        if(kind(x) /= kind(e)) print*,108
        if(kind(x) /= kind(f)) print*,107
        if(kind(x) /= kind(w)) print*,109
        
print*,"pass"
end program main

