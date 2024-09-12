      dimension a(10) , b(10) , c(10),d(10),e(10)
      logical * 4 la(10)
      data b/10*1.0/ , c/10*2.0/,d/10*3.0/
      data la/1*.true.,9*.false./
      do 10 i = 1, 10
      if (la(i)) then
      a(i) = b(i) + c(i) * d(i)
      e(i) = sin(a(i))
      else
      a(i) = b(i) + c(i) + d(i)
      e(i) = a(i) * 2.0 + 1
      endif
  10  continue
      write(6,*) a , e
      stop
      end
