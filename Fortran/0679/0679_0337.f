      dimension a(10),b(10),c(10),d(10),e(10)
      data b/10*1.0/,c/10*2.0/,x/4.5/,y/8.0/
      data d/10*3.0/,e/10*4.0/
      do 10 i=1,10
        if ( x .gt. 5.0 ) then
          a(i) = b(i)
          if ( y .lt. 7.0 ) then
            c(i) = d(i)
          else
            c(i) = e(i)
          endif
        else
          a(i) = c(i)
        endif
  10  continue
      write(6,*) a
      write(6,*) c
      stop
      end
