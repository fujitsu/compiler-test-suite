      dimension  a(20),b(20),c(20),d(20)
      data  n/1/
      s = 1.0
      do 10 i=1,20
        x = s * 2.0
        a(i) = s
        b(i) = x
        y = x + 1.5
        c(i) = y
        s = s + 1.0
        d(i) = y * 1.5
 10   continue
      do 20 i=5,15
       if (i.gt.10) then
         n = 2
       endif

      do 20 j=5,10
        a(j) = b(j) * c(j+1)
        b(j) = a(n) + c(j) - d(n)
        c(n) = b(j-1) - (a(j-1) / d(j))
        d(j-n) = a(j-n) + b(j-1) + c(n)
 20   continue
      write(6,*) (a(i),i=2,12)
      write(6,*) (b(i),i=3,13)
      write(6,*) (c(i),i=4,14)
      write(6,*) (d(i),i=5,15)
      if (n.gt.20) then
        m = 20
      elseif (n.lt.15) then
        m = 15
      else
        m = n
      endif

      do 30 k=1,10
        a(k+1) = c(k+1) + d(k) - b(m)
        b(k) = a(k) * 2.0 - d(k+1)
        d(m) = b(k+1) / c(m) + a(k)
        c(k) = d(k) * a(k) / b(k)
 30   continue
      write(6,*) (a(j),j=3,13)
      write(6,*) (b(j),j=3,13)
      write(6,*) (c(j),j=3,13)
      write(6,*) (d(j),j=3,13)
      stop
      end
