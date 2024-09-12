      dimension a(10),b(10),c(10)
      logical*4 la(10),lb(10)
      data b/10*1.0/,c/10*2.0/
      data la/5*.false.,5*.true./
      data lb/5*.false.,5*.true./

      do 10 i=1,10
        if ( la(i) )    a(i) = b(i)
        if (.not.lb(i)) a(i) = c(i)
  10  continue
      write(6,*) a
      stop
      end
