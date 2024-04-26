      program main
      dimension a(10),b(10)
      data a,b/1,2,3,4,5,4,3,2,1,0,1,1,1,1,0,1,1,1,1,1/
      do 10 i=1,10
       s=b(i)+2
       if(a(i).gt.s) then
        x=a(i)
        y=cos(b(i))
       endif
  10  continue
      write(6,*) x,y
      stop
      end
