      program main
      real real1(10)/10*1./,real2(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      common /block/commb(10),scomb
      equivalence (equs1,real1),(equs2,scomb)
      call sub(real1)
      do 110 j=1,10
       do 100 i=1,10
        equs1=commb(i)
        equs2=real2(i)
  100  continue
      if(j.lt.1) then
       write(6,1001) equs1
       write(6,1001) equs2
      endif
  110 continue
      write(6,1000) commb
      do 210 j=1,10
       do 200 i=1,10
        equs1=commb(1)
        equs2=real2(i)
  200  continue
       if(j.gt.10) then
        write(6,1001) equs1
        write(6,1001) equs2
       endif
  210  continue
      write(6,1000) real2
      call sub(real1)
 1000 format(10f7.3)
 1001 format(f7.3)
      stop
      end
      subroutine sub(a)
      real a(10)
      common /block/subcom(10),subs
      equivalence (sub1,b)
      do 10 i=1,10
       subcom(i)=a(i)
       b=a(i)*10
  10  continue
       subs=b/subcom(10)
      return
      end
