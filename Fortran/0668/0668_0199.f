      program main
      integer*4  ia(12),ib(12),ic(12)
      logical*4  la(12),lb(12),lc(12),ld(12),le(12)
      data la/.false.,.true., .false.,.true.,
     #        .false.,.true., .false.,.true.,
     #        .false.,.true., .false.,.true./
      data lb/.false.,.false.,.true., .true.,
     #        .false.,.false.,.true., .true.,
     #        .false.,.false.,.true., .true./
      data lc/.false.,.true., .false.,.true., .false.,.true., .false.,
     #        .true. ,.true., .true., .true., .true./
      data ld/.false.,.false.,.true., .true., .false.,.false.,.true.,
     #        .true. ,.true., .true., .true., .true./
      data le/.false.,.false.,.false.,.false.,.true., .true., .true.,
     #        .true. ,.true., .true., .true., .true./
      call init1(ia,ib,ic)
      do  100 i=1,12
        if (la(i)) goto 100
          ib(i) = i
          if (lb(i))then
            ia(i) = 1
          else
            ia(i) = 0
          endif
          ic(i) = i
  100 continue
      write(6,*) ' test-1 '
      write(6,1) ia,ib,ic
    1 format(10(1x,i5))
      call init1(ia,ib,ic)
      do  200 i=1,12
        if(lc(i)) goto 200
          ia(i)=i
          if(ld(i)) then
            ib(i)=200 + i
            if(le(i)) goto 200
          else
            ic(i)=300 + i
          endif
          ia(i)= ic(i)+ib(i)+ia(i)
  200 continue
      write(6,*) ' test-2 '
      write(6,1) ia,ib,ic
      end
      subroutine init1(ia,ib,ic)
      integer*4  ia(12),ib(12),ic(12)
      do 100 i=1,12
        ib(i) = 0
          ic(i) = 0
            ia(i) = 0
  100 continue
      return
      end
