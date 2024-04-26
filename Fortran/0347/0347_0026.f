      dimension  a(10,10),b(10,10),c(10,10)
      x = 1.0
      do 10 i=1,10
       do 10 j=1,10
         a(i,j) = x
         b(i,j) = x * 2.0
         c(i,j) = a(i,j) / 2.0
         x = x + 1.0
 10   continue
      s = x / 2.0
      do 20 i=1,10
        x = a(i,i)
        do 20 j=2,10
          a(i,j) = b(i,j) + c(i,j)
          b(i,j) = a(i,j) - c(i,j-1)
          s = x + (a(i,j) / 2.0)
 20   continue
      write(6,*) ((a(i,j),i=3,10),j=2,8)
      write(6,*) ((b(i,j),i=3,10),j=2,8)
      write(6,*) ((c(i,j),i=3,10),j=2,8)
      x = x * 3.0
      if (s.gt.x) then
        s = s - x
      endif
      do 30 i=1,10
        a(i,1) = s
        do 40 j=2,10
          a(i,j) = b(i,j) - c(i,j)
          b(i,j) = (a(i,j) + c(i,j)) / 2.0
          c(i,j) = x - a(i,j-1)
          s = c(i,j) + 2.0
          x = s + a(i,j)
 40     continue
        s = s + 1.0
 30   continue
      write(6,*) x
      write(6,*) s
      write(6,*) ((a(i,j),i=3,10),j=2,8)
      write(6,*) ((b(i,j),i=3,10),j=2,8)
      write(6,*) ((c(i,j),i=3,10),j=2,8)
      stop
      end
