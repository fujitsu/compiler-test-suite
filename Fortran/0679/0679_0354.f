      dimension a(10),b(10)
      logical*4 l1(10),l2(10)
      data l1/5*.true.,5*.false./,l2/2*.true.,3*.false.,5*.false./
      data a/10*0.0/,b/10*0.0/,x/1.0/,y/0.5/,z/2.0/

      do 10 i=1,10
        if ( l1(i) ) then
          if ( x .gt. y ) then
            if ( z .gt. 1.0 ) then
              a(i) = i
            endif
            if ( l2(i)) then
              b(i) = i
            endif
          endif
        endif
  10  continue
      write(6,*) a
      write(6,*) b
      stop
      end
