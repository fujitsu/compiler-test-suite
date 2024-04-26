      program main
      real*4  e1(10),e2(10),e3(10)
      real*8  d1(10),d2(10),d3(10)
      integer n/1/
      do 10 i=1,10
       e1(i)=0.0
       e2(i)=0.0
       e3(i)=0.0
       d1(i)=(-1)**i*i
       d2(i)=i
       d3(i)=-i*i
  10  continue
      j=1
      k=0
      do 20 i=1,10
       if(d1(i).gt.0) then
         e2(j)=d2(i)+d1(i)
         j=j+1
       else
         k=k+1
         e3(k)=d3(i)
       endif
  20  continue
      write(6,1) d1
      write(6,1) d2
      write(6,1) d3
      write(6,1) e1
      write(6,1) e2
      write(6,1) e3
      do 110 i=1,10
       e1(i)=0.0
       e2(i)=0.0
       e3(i)=0.0
       d1(i)=(-1)**i*i
       d2(i)=i
       d3(i)=-i*i
 110  continue
      j=10
      k=11
      do 120 i=1,10
       if(d1(i).gt.0) then
         e2(j)=d2(i)+d1(i)
         j=j-1
       else
         k=k-n
         e3(k)=d3(i)
       endif
 120  continue
      write(6,1) d1
      write(6,1) d2
      write(6,1) d3
      write(6,1) e1
      write(6,1) e2
      write(6,1) e3
      do 210 i=1,10
       e1(i)=0.0
       e2(i)=0.0
       e3(i)=0.0
       d1(i)=(-1)**i*i
       d2(i)=i
       d3(i)=-i*i
 210  continue
      j=10
      k=11
      do 220 i=1,10
       if(d1(i).gt.0) then
         e2(j)=d2(i)+d1(i)
         j=j-1
       else
         k=k-n
         e3(k)=d3(i)
       endif
 220  continue
      write(6,1) d1
      write(6,1) d2
      write(6,1) d3
      write(6,1) e1
      write(6,1) e2
      write(6,1) e3
      write(6,'(2i5)') j,k
      stop
    1 format(5f13.5,/,5f13.5)
      end
