      program main
      real a(10,100,10),dif/0/,c(102),b(100)
      integer amax/1/,m/3/,n/1/
      data a/10000*1/
      call indata(a,c)
      do 10 i=1,100
       dif = a(m,i,n) - a(m,amax,n)
       c(i+1)=c(i)+c(i+2)
       if(dif.gt.0) then
        amax = i
        b(i)=c(i)+1
       endif
   10 continue
      write(6,999) amax,(a(3,i,1),i=1,100)
  999 format(1h ,8h- amax -,i10,/,11h -- a(*) --,/,20(5(f10.5,2x)/))
      end
      subroutine indata(x,y)
      real x(10,100,10),y(102)
      do 100 i=1,100
       x(3,i,1)=i+0.5
       y(i)=1
  100 continue
      y(101) = 1
      y(102) = 1
      end
