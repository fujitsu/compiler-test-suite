      dimension a(10) ,b(10) ,c(10) ,d(10) ,e(10)
      logical * 4 la(10),lb(10)
      data b/10*1.0/,c/10*2.0/
      data la/5*.true.,5*.false./
      data lb/5*.true.,5*.false./
      e=0
      do 10 i = 1, 10
      if (la(i)) then
      a(i) = b(i) + c(i)
      d(i) = c(i) - b(i)
      e(i) = a(i) + d(i)
      if (lb(i))then
      a(i) = b(i) + c(i)
      e(i) = b(i) + c(i)
      end if
      else
      a(i) = b(i) + c(i)
      d(i) = a(i) * b(i) * c(i) + 5
      d(i) = c(i) / b(i)
      endif
  10  continue
      write(6,*) a , d ,e
      stop
      end
