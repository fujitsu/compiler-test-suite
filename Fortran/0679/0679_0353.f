      dimension a(10)
      data x/2.0/,y/3.0/
      data a/10*0.0/

      do 10 i=1,10
        if ( x .eq. 2.0 ) then
          if ( y .eq. 3.0 ) then
            a(i) = i
          endif
        endif
  10  continue
      write(6,*) a
      stop
      end
