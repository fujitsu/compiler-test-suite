      real*4     ra(10),rb(10)           ,rv
      real*8     da(10)
      integer*4  ia(10),ib(10),ic(10)    ,iv
      logical*4  la(10),lb(10),lc(10)    ,lv
      data rb/10*1.0/
      data ib/10*1/,ic/10*2/
      data lb/10*.true./,lc/10*.false./
      rv = 1.0
      iv = 1
      lv = .true.

      do 5  i=1,10
        la(i) = .not.lb(i)
        lc(i) = .not.lv
  5   continue
      write(6,*) la
      write(6,*) lc

      do 10 i=1,10
        ia(i) = - ib(i)
        ic(i) = - iv
  10  continue
      write(6,*) ia
      write(6,*) ic

      do 20 i=1,10
        ra(i) =   rb(i) / 2.0
  20  continue

      write(6,*) ra

      do 30 i=1,10
        ia(i) =  rb(i)
  30  continue

      write(6,*) ia

      do 40 i=1,10
        ra(i) =  ib(i)
  40  continue
      write(6,*) ra

      do 50 i=1,10
        da(i) =  ib(i)
  50  continue
      write(6,*) da

      do 55 i=1,10
        da(i) =  rb(i)
  55  continue
      write(6,*) da

      do 60 i=1,10
        ia(i) =  iabs(ib(i))
  60  continue
      write(6,*) ia

      do 70 i=1,10
        ra(i) =   abs(rb(i))
  70  continue
      write(6,*) ra
      stop
      end
