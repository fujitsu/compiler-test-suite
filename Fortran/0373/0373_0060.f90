       real*16 a(10,10),c(10,10)
       data a/100*8/
    
       c = transpose(a)
       write(6,*) c
       end
