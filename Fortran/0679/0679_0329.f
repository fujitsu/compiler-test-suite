      program main
      dimension a(10),b(10),c(10)
      logical*4 lb(10)
      data b/10*1.0/,c/10*2.0/
      data lb/5*.true.,5*.false./
      do 10 i=1,10
        if ( lb(i) ) then
          a(i) = b(i) + c(i)
        else
          a(i) = b(i) * c(i)
        endif
  10  continue
      write(6,*) a
      stop
      end
