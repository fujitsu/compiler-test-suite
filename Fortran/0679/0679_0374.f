      dimension a(10),b(10),c(11)
      logical*4 la(10)
      data a/10*0.0/
      data b/10*1.0/,c/11*2.0/
      data la/5*.true.,5*.false./
      n = 1
      do 10 i=1,10
        if ( la(i) ) go to 20
          a(i) = b(i) + c(n)
  20    n = n + 1
  10  continue
      write(6,*) a
      stop
      end
