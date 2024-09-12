      dimension a(10)
      logical*4 l1(10),l2(10)
      data l1/5*.true.,5*.false./,x/1.0/
      data l2/.true.,.false.,.true.,.false.,.true.,5*.false./
      data a/10*0.0/

      do 10 i=1,10
        if ( l1(i) ) then
          if ( x .eq. 1.0 ) then
            if (l2(i)) then
              a(i) = i
            endif
          endif
        endif
  10  continue
      write(6,*) a
      stop
      end
