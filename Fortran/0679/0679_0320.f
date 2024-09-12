      logical*4 lb(16),lc(16),lm(16)
      data      lb/.true.,.true.,.true.,.true.,
     +             .true.,.true.,.true.,.true.,
     +             .false.,.false.,.false.,.false.,
     +             .false.,.false.,.false.,.false./
      data      lc/.true.,.true.,.true.,.true.,
     +             .false.,.false.,.false.,.false.,
     +             .true.,.true.,.true.,.true.,
     +             .false.,.false.,.false.,.false./
      data      lm/.true.,.true.,.false.,.false.,
     +             .true.,.true.,.false.,.false.,
     +             .true.,.true.,.false.,.false.,
     +             .true.,.true.,.false.,.false./
      logical*4 la10(16),la11(16),la20(16),la21(16),la30(16),la31(16)
      logical*4 la40(16),la41(16),la50(16),la51(16),la60(16),la61(16)
      logical*4 la70(16),la71(16),la80(16),la81(16)
      data      la10,la11,la20,la21,la30,la31,
     1          la40,la41,la50,la51,la60,la61,
     2          la70,la71,la80,la81/256*.false./
      logical*4 ls/.true./
      integer*4 ia1(16)/1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0/
      integer*4 ia2(16)/1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1/
      integer*4 ib1(16)/1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0/
      integer*4 ib2(16)/1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2/
      integer*4 ic1(16)/1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0/
      integer*4 ic2(16)/1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2/
      integer*4 id(16)/16*0/

      do 10 i=1,16
        la10(i) = .not. lb(i)
10    continue
      write(6,*) la10

      do 11 i=1,16
        if ( lm(i) ) then
          la11(i) = .not. lb(i)
        endif
11    continue
      write(6,*) la11

      do 20 i=1,16
        is = ia1(i)
        if (lm(i)) then
          if (lb(i)) then
            is = 0
          else
            is = 1
          endif
        endif
        if (is.eq.0) then
          la20(i) = .false.
        else
          la20(i) = .true.
        endif
20    continue
      write(6,*) la20

      do 21 i=1,16
        is  = ia1(i)
        if (lm(i)) then
          if (lb(i)) then
            is = 0
          else
            is = 1
          endif
          la20(i) = .not. lb(i)
        endif
21    continue
      write(6,*) la21

      do 30 i=1,16
        ls = .not. lb(i)
        if (ls) then
          id(i) = i
        endif
          la30(i) = ls
30    continue
      write(6,*) la30

      do 31 i=1,16
        if (lm(i)) then
          ls = .not. lb(i)
          if (ls) then
            id(i) = i
          endif
        else
          ls = .not. lb(i)
          if (ls) then
            id(i) = -i
          endif
        endif
        la31(i) = ls
31    continue
      write(6,*) la31,id

      do 40 i=1,16
        ls = ia1(i) .eq. ia2(i)
        if (lm(i)) then
          ls = .not. lb(i)
        endif
        la40(i) = ls
40    continue
      write(6,*) la40

      do 41 i=1,16
        ls = ia1(i) .eq. ia2(i)
        if (lm(i)) then
          ls = .not. lb(i)
          la41(i) = ls
        endif
41    continue
      write(6,*) la41

      do 50 i=1,16
        lb(i) = ib1(i) .eq. ib2(i)
        if (lb(i)) then
          is = 0
        else
          is = 1
        endif
        la50(i) = .not. lb(i)
50    continue
      write(6,*) la50

      do 51 i=1,16
        lb(i) = ib1(i) .eq. ib2(i)
        lc(i) = ic1(i) .eq. ic2(i)
        if (lm(i)) then
          if (lb(i)) then
            is = 0
          else
            is = 1
          endif
        else
          if (lc(i)) then
            is = 0
          else
            is = 1
          endif
        endif
        if (is.eq.0) then
          la51(i) = .false.
        else
          la51(i) = .true.
        endif
51    continue
      write(6,*) la51

      do 60 i=1,16
        is = ia1(i)
        lb(i) = ib1(i) .eq. ib2(i)
        lc(i) = ic1(i) .eq. ic2(i)
        if (lm(i)) then
          if (lb(i)) then
            is = 0
          else
            is = 1
          endif
        else
          if (lc(i)) then
            is = 0
          else
            is = 1
          endif
        endif
        if (is.eq.0) then
          la60(i) = .false.
        else
          la60(i) = .true.
        endif
60    continue
      write(6,*) la60

      do 61 i=1,16
        is = ia1(i)
        lb(i) = ib1(i) .eq. ib2(i)
        if (lm(i)) then
          if (lb(i)) then
            is = 0
          else
            is = 1
          endif
          la61(i) = .not. lb(i)
        endif
61    continue
      write(6,*) la61

      do 70 i=1,16
        lb(i) = ib1(i) .eq. ib2(i)
        ls = .not. lb(i)
        if (ls) then
          id(i) = i
        endif
        la70(i) = ls
70    continue
      write(6,*) la70,id

      do 71 i=1,16
        if ( lm(i) ) then
          lb(i) = ib1(i) .eq. ib2(i)
          ls = .not. lb(i)
          if (ls) then
            id(i) = i
          endif
        else
          lc(i) = ic1(i) .eq. ic2(i)
          ls = .not. lc(i)
          if (ls) then
            id(i) = i
          endif
        endif
        la71(i) = ls
71    continue
      write(6,*) la71

      do 80 i=1,16
        ls = ia1(i) .eq. ia2(i)
        lb(i) = ib1(i) .eq. ib2(i)
        lc(i) = ic1(i) .eq. ic2(i)
        if (lm(i)) then
          ls = .not. lb(i)
        else
          ls = .not. lc(i)
        endif
        la80(i) = ls
80    continue
      write(6,*) la80

      do 81 i=1,16
        ls = ia1(i) .eq. ia2(i)
        lb(i) = ib1(i) .eq. ib2(i)
        if (lm(i)) then
          ls = .not. lb(i)
          la81(i) = ls
        endif
81    continue
      write(6,*) la81
      stop
      end
