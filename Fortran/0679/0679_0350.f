      dimension a(10),b(10)
      logical*4 l1(10)
      data l1/5*.true.,5*.false./,x/2.0/
      data a/10*0.0/,b/10*1.0/

      do 10 i=1,10
        if ( x .ge. 2.0 ) then
          if ( l1(i) ) then
            a(i) = b(i)
          endif
        endif
  10  continue
      write(6,*) a
      stop
      end
