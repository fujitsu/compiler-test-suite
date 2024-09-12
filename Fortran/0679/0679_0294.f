      dimension ib(10)
      dimension ia1(10),ia2(10)
      logical   la1(10),la2(10),la5(10),la6(10)
      logical   l4(10)
      data ib/1,2,3,4,5,6,7,8,9,10/
      data l4/.true.,.false.,.true.,.false.,.true.,
     +        .false.,.true.,.false.,.true.,.false./
      data iv1/3/,iv2/5/,iv3/7/,iv4/9/
      data ia1/10*0/,ia2/10*0/
      data la1/10*.false./,la2/10*.false./,la5/10*.false./,
     +     la6/10*.false./

      do 10 i=1,10
        if ( l4(i) ) then
          ia1(i) = ib(i) + iv1
        endif
  10  continue
      write(6,*) ia1

      do 20 i=1,10
        if ( l4(i) ) then
          ia1(i) = ib(i)*8
          ia2(i) = max(ib(i),iv2)
        endif
  20  continue
      write(6,*) ia1
      write(6,*) ia2

      do 42 i=1,10
        if ( l4(i) ) then
          la1(i) = ib(i) .lt. iv1
          la2(i) = ib(i) .le. iv2
          la5(i) = ib(i) .gt. iv3
          la6(i) = ib(i) .ge. iv4
        endif
  42  continue
      write(6,*) la1
      write(6,*) la2
      write(6,*) la5
      write(6,*) la6
      stop
      end
