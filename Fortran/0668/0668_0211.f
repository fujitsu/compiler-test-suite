      program main
      real real1(10),real2(10),scom1
      logical logic(10)/3*.false.,2*.true.,4*.false.,1*.true./
      common // scom1,requ(10)
      equivalence (requ(1),sequ)
      call int1(real1)
      real2(2)=0.
      do 100 i=1,10
       var1=real1(i)
       real2(1)=var1
       if(logic(i)) then
        real2(2)=real1(i)
       endif
  100 continue
      write(6,*) '***** loop 1 ***** '
      write(6,1000) var1
      write(6,1000) real2(1)
      write(6,1000) real2(2)
      call int1(requ)
      do 200 i=1,10
       requ(10)=real1(i)
       scom1=real1(11-i)
  200 continue
      write(6,*) '***** loop 2 ***** '
      write(6,1001) requ
      write(6,1000) sequ
      write(6,1000) scom1
 1000 format(f7.3)
 1001 format(10f7.3)
      stop
      end
      subroutine int1(a)
      real a(10)
      do 10 i=1,10
       a(i)=i
   10 continue
      return
      end
