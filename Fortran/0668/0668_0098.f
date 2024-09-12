       dimension a(10),b(20),c(20),d(10)
       logical*4 l(10)
       data l/2*.false.,3*.true.,4*.false.,1*.true./
       data a/2*1,3*5,4*2,1*4/
       data b/4*2,6*6,8*2,2*3/
       data c/4*3,6*7,8*2,2*2/
       data d/2*4,3*1,4*2,1*1/
      do 10 i=2,7
        a(i) = c(i-1)
        if(l(i)) then
         a(i) = b(i+1) + c(i)
         d(i+2) = c(i-1)
        endif
        if(l(i-1)) then
         a(i+2) = b(i+1) + c(i-1)
         c(i-1) = c(i-1)
        endif
10    continue
      do 20 i=2,7
        a(i) = c(i-1)
        d(i+2) = 1
        if(l(i)) then
         a(i) = b(i+1) + c(i)
         d(i+2) = c(i-1)
        endif
        if(l(i-1)) then
         a(i+2) = b(i+1) + c(i-1)
         c(i-1) = c(i-1)
        endif
20    continue
       write(6,*) a,b,c,d
       stop
       end
