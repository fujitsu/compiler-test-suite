      dimension a(10),b(10),c(10)
      logical*4 la(10),lc(10)
      data a/10*0.0/,b/10*1.0/,c/10*2.0/
      data la/5*.true.,5*.false./
      data lc/2*.true.,3*.false.,3*.true.,2*.false./
      do 10 i=1,10
        if ( la(i) ) go to 20
          a(i) = b(i) + c(i)
          if ( lc(i) ) go to 30
 20       b(i) = b(i) / c(i)
          go to 10
 30       a(i) = b(i) * c(i)
  10  continue
      write(6,*) a
      stop
      end
