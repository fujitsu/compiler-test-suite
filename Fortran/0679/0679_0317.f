      logical*4 lm(16),ls1,ls2
      data      lm/.true.,.true.,.false.,.false.,
     +             .true.,.true.,.false.,.false.,
     +             .true.,.true.,.false.,.false.,
     +             .true.,.true.,.false.,.false./
      integer*4 ib1(16)/1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0/
      integer*4 ib2(16)/1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2/
      integer*4 ic1(16)/1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0/
      integer*4 ic2(16)/1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2/
      integer*4 id1(16)/3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18/
      integer*4 id(16)/16*0/ , is1/1/
      integer*4 ia10(16),ia11(16),ia20(16),ia21(16),ia30(16),ia31(16)
      integer*4 ia40(16),ia41(16),ia50(16),ia51(16),ia60(16),ia61(16)
      integer*4 ia70(16),ia71(16),ia80(16),ia81(16)
      data      ia10,ia11,ia20,ia21,ia30,ia31,
     1          ia40,ia41,ia50,ia51,ia60,ia61,
     2          ia70,ia71,ia80,ia81/256*0/

      do 10 i=1,16
        if ( lm(i) ) then
          is = is1
        else
          is = 3
        endif
        ia10(i) = is
10    continue
      write(6,*) ia10

      do 11 i=1,16
        if ( lm(i) ) then
          is = is1
          ia11(i) = is
        else
          is = 3
          ia11(i) = is
        endif
11    continue
      write(6,*) ia11

      do 20 i=1,16
        if ( lm(i) ) then
          is = i
        else
          is = -i
        endif
        ia20(i) = is
20    continue
      write(6,*) ia20

      do 21 i=1,16
        if ( lm(i) ) then
          is = i
          ia21(i) = is
        else
          is = -i
          ia21(i) = is
        endif
21    continue
      write(6,*) ia21

      do 30 i=1,16
        if ( lm(i) ) then
          is = ib1(i)
        else
          is = ib2(i)
        endif
        ia30(i) = is
30    continue
      write(6,*) ia30

      do 31 i=1,16
        if ( lm(i) ) then
          is = ib1(i)
          ia31(i) = is
        else
          is = ib2(i)
          ia31(i) = is
        endif
31    continue
      write(6,*) ia31

      do 40 i=1,16
        ls1 = ib1(i) .eq. ib2(i)
        ls2 = ic1(i) .eq. ic2(i)
        if ( lm(i) ) then
          if ( ls1 ) then
            is = 1
          else
            is = 0
          endif
        else
          if ( ls2 ) then
            is = 1
          else
            is = 0
          endif
        endif
        ia40(i) = is
40    continue
      write(6,*) ia40

      do 41 i=1,16
        ls1 = ib1(i) .eq. ib2(i)
        ls2 = ic1(i) .eq. ic2(i)
        if ( lm(i) ) then
          if ( ls1 ) then
            is = 1
          else
            is = 0
          endif
          ia41(i) = is
        else
          if ( ls2 ) then
            is = 1
          else
            is = 0
          endif
          ia41(i) = is
        endif
41    continue
      write(6,*) ia41

      do 50 i=1,16
        is = id1(i)
        if ( lm(i) ) then
          is = is1
        else
          is = 3
        endif
        ia50(i) = is
50    continue
      write(6,*) ia50

      do 51 i=1,16
        is = id1(i)
        if ( lm(i) ) then
          is = is1
          ia51(i) = is
        else
          is = 3
          ia51(i) = is
        endif
51    continue
      write(6,*) ia51

      do 60 i=1,16
        is = id1(i)
        if ( lm(i) ) then
          is = i
        else
          is = -i
        endif
        ia60(i) = is
60    continue
      write(6,*) ia60

      do 61 i=1,16
        is = id1(i)
        if ( lm(i) ) then
          is = i
          ia61(i) = is
        else
          is = -i
          ia61(i) = is
        endif
61    continue
      write(6,*) ia61

      do 70 i=1,16
        is = id1(i)
        if ( lm(i) ) then
          is = ib1(i)
        else
          is = ib2(i)
        endif
        ia70(i) = is
70    continue
      write(6,*) ia70

      do 71 i=1,16
        is = id1(i)
        if ( lm(i) ) then
          is = ib1(i)
          ia71(i) = is
        else
          is = ib2(i)
          ia71(i) = is
        endif
71    continue
      write(6,*) ia71

      do 80 i=1,16
        is  = id1(i)
        ls1 = ib1(i) .eq. ib2(i)
        ls2 = ic1(i) .eq. ic2(i)
        if ( lm(i) ) then
          if ( ls1 ) then
            is = 1
          else
            is = 0
          endif
        else
          if ( ls2 ) then
            is = 1
          else
            is = 0
          endif
        endif
        ia80(i) = is
80    continue
      write(6,*) ia80

      do 81 i=1,16
        is  = id(i)
        ls1 = ib1(i) .eq. ib2(i)
        ls2 = ic1(i) .eq. ic2(i)
        if ( lm(i) ) then
          if ( ls1 ) then
            is = 1
          else
            is = 0
          endif
          ia81(i) = is
        else
          if ( ls2 ) then
            is = 1
          else
            is = 0
          endif
          ia81(i) = is
        endif
81    continue
      write(6,*) ia81
      stop
      end
