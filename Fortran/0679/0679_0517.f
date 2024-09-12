      program main
      real a(10),b(10),c(10),d(10),dif/0/
      integer  n/10/,k/5/
      data a,b,c,d/40*1/
      do 10 i=2,n-1
       a(i+1) = a(i-1)
       dif=a(i)-k
       if (dif.gt.0) then
        b(k+1) = sqrt(b(k-1)) + k
        c(i+1) = b(i) + c(k-1)
        k = k + 1
        d(k) = a(i)/c(i-1)
        c(k+1) = a(i+1) +c(k)
       endif
       d(i+1) = a(i)/d(i-1)
   10 continue
      write(6,*) a,b,c,d
      end
