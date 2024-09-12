       real*16 a(10),c(10,10)
       data a/10*1/

       c = spread(a,1,10)
       write(6,*) c
       end
