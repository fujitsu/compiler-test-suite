      dimension   a(10),b(10),c(10)
      data   a/10*2.0/,b/10*3.0/,c/10*4.0/,n/1/
      do 10 i=1,9
       if (i.gt.5) then
         a(n) = b(i) + c(i)
       else
         a(n) = b(i) * c(i)
       endif
       n = n + 1
       b(i) = c(i) / a(n)
 10   continue
      write(6,*) n
      write(6,*) a
      write(6,*) b
      stop
      end
