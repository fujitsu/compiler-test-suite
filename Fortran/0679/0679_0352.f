      dimension a(10)
      logical*4 l1(10)
      data l1/5*.true.,5*.false./,x/3.0/
      data a/10*0.0/

      do 10 i=1,10
        if ( l1(i) ) then
          if ( x .gt. 2.0 ) then
            a(i) = i
          endif
        endif
  10  continue
      write(6,*) a
      stop
      end
