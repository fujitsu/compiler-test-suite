      dimension ia(10),ib(10),ic(10),l(10)
      logical*4 l4(10)
      data l4/.true.,.false.,.true.,.false.,.true.,
     *        .false.,.true.,.false.,.true.,.false./
      data ia/10*0.0/,ib/10*1.0/,ic/10*2.0/
      data l/1,2,3,4,5,6,7,8,9,10/

      do 10 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(2) + ic(3)
        endif
  10  continue
      write(6,*) ia

      do 20 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(3) + i
        endif
  20  continue
      write(6,*) ia

      do 30 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(5) + ic(l(i))
        endif
  30  continue
      write(6,*) ia

      do 41 i=1,10
        if ( l4(i) ) then
          ia(i) = i + ic(6)
        endif
  41  continue
      write(6,*) ia

      do 42 i=1,10
        if ( l4(i) ) then
          ia(i) = max(i,ic(6))
        endif
  42  continue
      write(6,*) ia

      do 43 i=1,10
        if ( l4(i) ) then
          ia(i) = i - ic(6)
        endif
  43  continue
      write(6,*) ia

      do 50 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(i) * ic(i)
        endif
  50  continue
      write(6,*) ia

      do 60 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(i) + ic(l(i))
        endif
  60  continue
      write(6,*) ia

      do 71 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(l(i)) + ic(5)
        endif
  71  continue
      write(6,*) ia

      do 72 i=1,10
        if ( l4(i) ) then
         ia(i) = min(ib(l(i)),5)
        endif
  72  continue
      write(6,*) ia

      do 73 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(l(i)) - 7
        endif
  73  continue
      write(6,*) ia

      do 80 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(l(i)) + ic(i)
        endif
  80  continue
      write(6,*) ia

      do 90 i=1,10
        if ( l4(i) ) then
          ia(i) = ib(l(i)) + ic(l(i))
        endif
  90  continue
      write(6,*) ia
      stop
      end
