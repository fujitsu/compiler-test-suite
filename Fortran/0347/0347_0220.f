      program main
      real*4  a(20),b(20),c(20)
      data  a,b,c/20*1.,20*3.,20*5./,rx/1./,ry/1./
      do 10 i=1,15
       a(i) = b(i)+c(i)
       if (i.gt.5) then
         rx = b(i)*2.
         if ( rx.gt.ry ) then
           ry = c(i) + a(i)-rx
         else
           ry = b(i)*a(i)
           rx = max1(rx,ry,a(i))
         endif
         c(i) = a(i) + ry
         b(i) = a(i) + rx
       endif
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) ' rx= ',rx
      write(6,*) ' ry= ',ry
      stop
      end
