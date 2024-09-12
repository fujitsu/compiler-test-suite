       dimension a(10,10,10),b(10,10,11),c(12,12,12),d(10,10,10)
       dimension x(10),y(8),z(8)
       logical*4 l(10)
       data l/2*.false.,3*.true.,4*.false.,1*.true./
       data a/200*1,300*5,400*2,100*4/
       data b/200*2,300*6,400*2,100*3,100*0/
       data c/200*3,300*7,400*2,100*2,728*0/
       data d/200*4,300*1,400*2,100*1/
       data x/2*4,3*1,4*2,1*1/
       data y/2*4,3*1,2*2,1*1/
       data z/2*4,3*1,2*2,1*1/
      do 10 k=1,10
      do 10 j=1,10
      do 10 i=2,8
       a(i,j,k) = c(i,j,k)
       z(i) = c(i,j,k)
       if(l(i)) then
        a(i,j,k) = 1 + c(i,j,k)
        z(i) = x(i)
       endif
       if(l(i)) then
        c(i,j,k) = 2 + c(i,j,k)
        b(i,j,k) = c(i,j,k)
        y(i) = z(i) +1
       endif
       y(i) = z(i)
10    continue
      do 20 k=1,10
      do 20 j=1,10
      do 20 i=2,8
       a(i,j,k) = c(i,j,k)
       x(i) = c(i,j,k)
       if(l(i)) then
        a(i,j,k) = 1 + c(i,j,k)
        z(i) = x(i)
       endif
       if(l(i)) then
        c(i,j,k) = 2 + c(i,j,k)
        b(i,j,k) = c(i,j,k)
        y(i) = z(i) +1
       endif
       y(i) = z(i)
20    continue
      do 30 k=1,10
      do 30 j=1,10
      do 30 i=2,8
       a(i,j,k) = c(i,j,k)
       z(i) = c(i,j,k)
       if(l(i)) then
        a(i,j,k) = 1 + c(i,j,k)
        z(i) = x(i)
       endif
       if(l(i)) then
        c(i,j,k) = 2 + c(i,j,k)
        b(i,j,k) = c(i,j,k)
        y(i) = z(i) +1
       endif
       y(i) = z(i)
30    continue
       write(6,1) a
       write(6,1) b
       write(6,1) c
       write(6,1) d
 1     format(7f11.5)
       stop
       end
