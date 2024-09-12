      dimension a(50) , b(51) , c(50) , d(50)
      logical * 4 la(50),lb(50)
      data la/10*.true.,10*.false.,10*.true.,10*.false.,10*.true./
      b(1) = 0
      do 10 i = 1, 50
      if (la(i)) then
      a(i) = 1.0
      b(i+1) = 2.0
      lb(i) = .not.la(i)
      if (lb(i)) then
        a(i) = 3.0
        b(i+1) = a(i) - 1.0
      endif
      c(i) = a(i)
      d(i) = b(i)
      else
        a(i) = i + 1.0
        b(i+1) = a(i) + 1.0
        c(i) = b(i)
        d(i) = a(i)
      endif
 10   continue
      write(6,*) a , b , c , d
      stop
      end
