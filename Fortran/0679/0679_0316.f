      program main
      real    ev1(10)/10*-10/,ev2(10)
      real*8  dv1(10)/10*-5/,dv2(10)
      integer iv1(10)/10*6/,iv2(10),iv3(10)/10*-1/
      idx = 0
      do 10 i=1,10
       ev2(i)=i
       dv2(i)=i**(i-1)
  10   iv2(i)=i/2
      e=3
      do 20 i=1,9
       ev1(i)=dv1(10)
       dv1(i)=ev1(10)+ev2(10)/ev1(10)
       iv3(i)=iv2(iv1(10))
       iv3(10)=iv3(10)+iv3(i)
       e=e+dv1(10)
  20  continue
      write(6,*) ev1,e
      write(6,*) iv1,iv2,iv3
      write(6,*) dv1
      e1=-1000000
      e2=-2000000
      do 30 i=1,9
       if(e1.gt.ev1(10)) then
        e1=ev1(10)
        idx=i
       endif
       ev1(2)=i
       e2=max(e2,ev1(1),ev1(3),ev1(5),ev1(2))
  30  continue
      write(6,*) ev1,e1,e2,idx
      end
