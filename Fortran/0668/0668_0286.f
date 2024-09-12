      program main
      integer*4  i
      real*4     r4data(10), r4datb(10), r4datc(10), r4datd(10)
      logical*4  l4data(10)
      data       r4datc/ 2.5,   0.5,  3.6,  0.5,  0.5,
     *                   0.5,   0.5,  0.5, 0.35,  0.5/
      data       r4datd/ 70.7,  5.5, 70.7,  4.3,  0.5,
     *                   11.2,  0.7,  0.8, 70.7, 3.35/
      data       l4data/.false.,.true.,.false.,.true.,.true.,
     *                  .true.,.true.,.true.,.false.,.true./
      do  10  i = 1, 10
          if(l4data(i)) then
             r4data(i) = r4datc(i)
          else
             r4data(i) = 0.0
          endif
   10 continue
      do  20  i = 1, 10
          if(.not.l4data(i)) then
             r4datb(i) = r4datd(i)
          else
             r4datb(i) = 0.0
          endif
   20 continue
      do  50  i = 1, 10
          if(l4data(i) .and. r4data(i) .ne. 0.5)        write(6,100) i
          if(.not.l4data(i) .and. r4datb(i) .ne. 70.7)  write(6,110) i
   50 continue
      do  60  i = 1, 10
          if(.not.l4data(i) .and. r4data(i) .ne. 0.0)   write(6,100) i
          if(l4data(i) .and. r4datb(i) .ne.  0.0)       write(6,110) i
   60 continue
      write(6,200)
      stop
  100 format(1h ,'*****ng***** r4data',i3)
  110 format(1h ,'*****ng***** r4datb',i3)
  200 format(1h ,'>>>>>ok<<<<<')
      end
