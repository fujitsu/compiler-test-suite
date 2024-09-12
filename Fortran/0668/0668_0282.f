      program main
      integer*4  i4data(10), i4datb(10),i
      integer*4  i8data(10), i8datb(10)
      real*4     r4data(10), r4datb(10)
      real*8     r8data(10), r8datb(10)
      logical*4  l4data(10), l4datb(10)
      data       i4datb/ 50,  1, 50, 50,  5, 50, -7, 50, 50, -2/
      data       i8datb/ 50,  1, 50, 50, 25, 50, 25, 50, 50,  0/
      data       r4datb/ 6.20, 0.056, 6.20, 6.20, -789.0,
     *                   6.20,  -5.6, 6.20, 6.20, 0.5/
      data       r8datb/ 6.20, 0.056, 6.20, 6.20, -789.0,
     *                   6.20,  -5.6, 6.20, 6.20, 0.5/
      data       l4datb/.true.,.false.,.true.,.true.,.false.,
     *                  .true.,.false.,.true.,.true.,.false./
      data       i4data,i8data/10*1.,10*1./
      data       r4data,r8data/10*1.,10*1./
      data       l4data/10*.false./

      do  10  i = 1, 10
          if(l4datb(i)) then
             i4data(i) = i4datb(i)
             i8data(i) = i8datb(i)
          endif
   10 continue
      do  20  i = 1, 10
          if(l4datb(i)) then
             r4data(i) = r4datb(i)
             r8data(i) = r8datb(i)
          endif
   20 continue
      do  30  i = 1, 10
          if(l4datb(i)) then
             l4data(i) = l4datb(i)
          endif
   30 continue
      do  50  i = 1, 10
          if(l4datb(i) .and. i4data(i) .ne. 50) then
             write(6,100) i
          else if(l4datb(i) .and. i8data(i) .ne. 50) then
                  write(6,110) i
          endif
   50 continue
      do  60  i = 1, 10
          if(l4datb(i) .and. r4data(i) .ne. 6.20) then
             write(6,120) i
          else if(l4datb(i) .and. r8data(i) .ne. 6.20) then
                  write(6,130) i
          endif
   60 continue
      do  70  i = 1, 10
          if(l4datb(i) .neqv. l4data(i)) then
             write(6,140) i
          endif
   70 continue
      write(6,200)
      stop
  100 format(1h ,'*****ng***** i4data',i3)
  110 format(1h ,'*****ng***** i8data',i3)
  120 format(1h ,'*****ng***** r4data',i3)
  130 format(1h ,'*****ng***** r8data',i3)
  140 format(1h ,'*****ng***** l4data',i3)
  200 format(1h ,'>>>>>ok<<<<<')
      end
