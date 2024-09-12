      dimension a(50) , b(50) , c(50) , d(50)
      data a/50*2.0/ , b/50*3.0/
      do 10 i = 1, 50
      if (i.le.30) then
        c(i) = a(i) + b(i)
        d(i) = c(i) + b(i)
      else
        if (i.gt.30) then
         c(i) = a(i) + b(i)
         d(i) = a(i) * b(i) + b(i)
         if (i.le.50) then
          c(i) = a(i)
          d(i) = b(i)
         endif
        endif
      endif
 10   continue
      write(6,*) c , d
      stop
      end
