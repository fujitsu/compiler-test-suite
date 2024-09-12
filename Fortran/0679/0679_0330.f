      dimension a(10),b(10),c(10)
      logical*4 la(10),lb(10)
      data a/10*0.0/,b/10*1.0/,c/10*2.0/
      data la/5*.true.,5*.false./
      data lb/2*.true.,3*.false.,3*.true.,2*.false./
      do 10 i=1,10
        if ( la(i) ) then
          if ( lb(i) ) then
            a(i) = b(i) + c(i)
          endif
        else
          if ( lb(i) ) then
            a(i) = b(i) * c(i)
          endif
        endif
  10  continue
      write(6,*) a
      stop
      end
