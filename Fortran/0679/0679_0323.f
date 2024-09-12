      logical*4 lb(8),lc(8),lm(8) ,lsb,lsc
      data      lb/4*.true.,4*.false./
      data      lc/2*.true.,2*.false.,2*.true.,2*.false./
      data      lm/.true.,.false.,.true.,.false.,
     &             .true.,.false.,.true.,.false./
      logical*4 la10(8),la11(8),la20(8),la21(8),la30(8),la31(8)
      logical*4 la40(8),la41(8),la50(8),la51(8),la60(8),la61(8)
      data      la10,la11,la20,la21,la30,la31,
     1          la40,la41,la50,la51,la60,la61/96*.false./
      logical*4 ls/.true./
      integer*4 ib1(8)/1,1,1,1,0,0,0,0/
      integer*4 ib2(8)/1,1,1,1,2,2,2,2/
      integer*4 ic1(8)/1,1,0,0,1,1,0,0/

      do 10 i=1,8
        la10(i) = lb(i) .eqv. ls
10    continue
      write(6,*) la10

      do 11 i=1,8
        if ( lm(i) ) then
          la11(i) = lb(i) .eqv. ls
        endif
11    continue
      write(6,*) la11

      do 20 i=1,8
        la20(i) = lb(i) .eqv. lc(i)
20    continue
      write(6,*) la20

      do 21 i=1,8
        if (lm(i)) then
          la21(i) = lb(i) .eqv. lc(i)
        endif
21    continue
      write(6,*) la21

      do 30 i=1,8
        lsb     = ib1(i) .eq. ib2(i)
        la30(i) = lsb  .eqv. lc(i)
30    continue
      write(6,*) la30

      do 31 i=1,8
        lsb   = ib1(i) .eq. ib2(i)
        if (lm(i)) then
          la31(i) = lsb .eqv. lc(i)
        endif
31    continue
      write(6,*) la31

      do 40 i=1,8
        lsb  = ib1(i) .eq. ib2(i)
        la40(i) = lsb .eqv. ls
40    continue
      write(6,*) la40

      do 41 i=1,8
        lsb  = ib1(i) .eq. ib2(i)
        if (lm(i)) then
          la41(i) = lsb .eqv. ls
        endif
41    continue
      write(6,*) la41

      do 50 i=1,8
        lsb  = ib1(i) .eq. ib2(i)
        la50(i) = lc(i) .eqv. lsb
50    continue
      write(6,*) la50

      do 51 i=1,8
        lsb = ib1(i) .eq. ib2(i)
        if (lm(i)) then
          la51(i) = lc(i) .eqv. lsb
        endif
51    continue
      write(6,*) la51

      do 60 i=1,8
        lsb = ib1(i) .eq. ib2(i)
        lsc = ic1(i) .eq. ic1(i)
        la60(i) = lsb .eqv. lsc
60    continue
      write(6,*) la60

      do 61 i=1,8
        lsb = ib1(i) .eq. ib2(i)
        lsc = ic1(i) .eq. ic1(i)
        if (lm(i)) then
          la61(i) = lsb .eqv. lsc
        endif
61    continue
      write(6,*) la61
      stop
      end
