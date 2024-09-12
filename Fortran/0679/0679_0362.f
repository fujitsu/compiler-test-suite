      dimension a(10,10),b(10,10)
      logical*4 l1(10)
      data a/100*0.0/,b/100*1.0/
      data l1/5*.true.,5*.false./

      do 10 i=1,10
        if ( l1(i) ) then
          do 20 j=1,10
            a(j,i) = b(j,i)
  20      continue
        endif
  10  continue
      write(6,*) a
      stop
      end
