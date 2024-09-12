      dimension a(10),b(10)
      logical*4 l1(10),l2(10)
      data l1/5*.true.,5*.false./
      data l2/3*.true.,.false.,.true.,5*.true./
      data a/10*0.0/,b/10*1.0/

      do 10 i=1,10
        if ( l1(i) ) then
          if ( l2(i) ) then
            a(i) = b(i)
          endif
        endif
  10  continue
      write(6,*) a
      stop
      end
