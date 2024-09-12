      dimension ia(100) , b(20) , c(20) , d(20) , e(20) , f(20)
      do 10 i=1,100
        ia(i) = i
 10   continue
      do 20 i = 1, 20
        if (ia(i).le.20) then
          b(i) = 2.0 * 1.0
        if (ia(i).le.40) then
          c(i) = b(i) + 1.0
        if (ia(i).le.60) then
          d(i) = c(i) + 1.0
        if (ia(i).le.80) then
          e(i) = d(i) + 1.0
        if (ia(i).le.80) then
          f(i) = e(i) + 1.0
        endif
        endif
        endif
        endif
        endif
 20   continue
      write(6,*) b , c , d , e , f
      stop
      end
