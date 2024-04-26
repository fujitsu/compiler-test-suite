!
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
      real a(16)
!

      do 80 i=1,16
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
        a(i) = is
80    continue
      write(6,99) a
 99   format(5f10.5)
      end
