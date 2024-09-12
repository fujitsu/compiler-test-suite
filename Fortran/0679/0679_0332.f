      integer*4 a(10),b(10),c(10)
      data b/10*5/,c/10*2/
      do 10 i=1,10
        if ( b(i) .lt. i ) then
          a(i) = b(i) + c(i)
        else
          a(i) = b(i) * c(i)
        endif
  10  continue
      write(6,*) a
      stop
      end
