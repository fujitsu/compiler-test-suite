      program main
      write(6,1000)
      call andfnns131
      write(6,2000)
      call orfnns131
      write(6,3000)
      call exorfnns131
      stop
 1000 format(1h ,'**** start subroutine and ****')
 2000 format(1h ,'**** start subroutine or  ****')
 3000 format(1h ,'**** start subroutine exor****')
      end
      subroutine andfnns131
      integer*4  i
      real*4     r4data(10),r4datb(10),r4datc(10),r4datd(10)
      equivalence (r4data(1),r4datb(1))
      equivalence (r4datc(1),r4datd(1))
      real*4     r4da01(10),r4da04(10)
      data       r4data/0.0, 2.5, 0.0, 5.5, 0.0,
     *                  6.6, 0.0, 8.9, 0.0, 7.3/
      data       r4datc/0.5, 0.0, 0.8, 0.0, 6.5,
     *                  0.0, 7.9, 0.0, 3.2, 0.0/
      real*4     r4da02(10),r4da03(10),
     *           r4da05(10),r4da06(10)
      common     /and/r4da02,r4da03,r4da05,r4da06
      do  10  i = 1, 10, 2
          if(r4data(i) .eq. 0.0 .and. r4datb(i) .eq. 0.0) then
             r4da01(i) = r4da02(i) + r4da03(i)
          endif
   10 continue
      do  20  i = 2, 10, 2
          if(r4datc(i) .eq. 0.0 .and. r4datd(i) .eq. 0.0) then
             r4da04(i) = r4da05(i) + r4da06(i)
          endif
   20 continue
      do  50  i = 1, 10, 2
          if(r4da01(i) .ne.  100) write(6,100) i
   50 continue
      do  60  i = 2, 10, 2
          if(r4da04(i) .ne.  200) write(6,110) i
   60 continue
      write(6,200)
      return
  100 format(1h ,'*****ng***** r4da01',i3)
  110 format(1h ,'*****ng***** r4da04',i3)
  200 format(1h ,'>>>>>ok<<<<<')
      end subroutine
      subroutine orfnns131
      integer*4  i
      real*4     r4data(10),r4datb(10),r4datc(10),r4datd(10)
      equivalence (r4data(1),r4datb(1))
      equivalence (r4datc(1),r4datd(1))
      real*4     r4da01(10),r4da04(10)
      data       r4data/0.0, 2.5, 0.0, 5.5, 0.0,
     *                  6.6, 0.0, 8.9, 0.0, 7.3/
      data       r4datc/0.5, 0.0, 0.8, 0.0, 6.5,
     *                  0.0, 7.9, 0.0, 3.2, 0.0/
      real*4     r4da02(10),r4da03(10),
     *           r4da05(10),r4da06(10)
      common     /or/r4da02,r4da03,r4da05,r4da06
      do  10  i = 1, 10, 2
          if(r4data(i) .eq. 0.0 .or. r4datb(i) .eq. 0.0) then
             r4da01(i) = r4da02(i) + r4da03(i)
          endif
   10 continue
      do  20  i = 2, 10, 2
          if(r4datc(i) .eq. 0.0 .or. r4datd(i) .eq. 0.0) then
             r4da04(i) = r4da05(i) + r4da06(i)
          endif
   20 continue
      do  50  i = 1, 10, 2
          if(r4da01(i) .ne.  100) write(6,100) i
   50 continue
      do  60  i = 2, 10, 2
          if(r4da04(i) .ne.  200) write(6,110) i
   60 continue
      write(6,200)
      return
  100 format(1h ,'*****ng***** r4da01',i3)
  110 format(1h ,'*****ng***** r4da04',i3)
  200 format(1h ,'>>>>>ok<<<<<')
      end subroutine
      subroutine exorfnns131
      integer*4  i
      real*4     r4data(10),r4datb(10),r4datc(10),r4datd(10)
      equivalence (r4data(1),r4datb(1))
      equivalence (r4datc(1),r4datd(1))
      real*4     r4da01(10),r4da04(10)
      data       r4data/0.0, 0.0, 0.5, 0.0, 0.0,
     *                  0.0, 1.0, 0.0, 0.0, 0.3/
      data       r4datc/0.5, 5.0, 0.0, 0.0, 6.5,
     *                  7.0, 0.0, 0.0, 3.2, 6.0/
      real*4     r4da02(10),r4da03(10),
     *           r4da05(10),r4da06(10)
      common     /exor/r4da02,r4da03,r4da05,r4da06
      do  10  i = 1, 10, 2
          if(r4data(i) .eq. 0.0 .eqv. r4datb(i) .eq. 0.0) then
             r4da01(i) = r4da02(i) + r4da03(i)
          endif
   10 continue
      do  20  i = 2, 10, 2
          if(r4datc(i) .eq. 0.0 .eqv. r4datd(i) .eq. 0.0) then
             r4da04(i) = r4da05(i) + r4da06(i)
          endif
   20 continue
      do  50  i = 1, 10, 2
          if(r4da01(i) .ne.  100) write(6,100) i
   50 continue
      do  60  i = 2, 10, 2
          if(r4da04(i) .ne.  200) write(6,110) i
   60 continue
      write(6,200)
      return
  100 format(1h ,'*****ng***** r4da01',i3)
  110 format(1h ,'*****ng***** r4da04',i3)
  200 format(1h ,'>>>>>ok<<<<<')
      end subroutine
      block data blvand131
      common     /and/r4da02,r4da03,r4da05,r4da06
      real*4     r4da02(10),r4da03(10),
     *           r4da05(10),r4da06(10)
      data       r4da02/10, 80, 30, 44, 50, 70, 70, 90, 90,100/
      data       r4da03/90, 80, 70, 60, 50, 40, 30, 20, 10,100/
      data       r4da05/ 0, 25, 40, 50, 66, 75,166,100, 80,185/
      data       r4da06/50,175,150,150, 44,125, 10,100, 20, 15/
      end
      block data blor131
      common     /or/r4da02,r4da03,r4da05,r4da06
      real*4     r4da02(10),r4da03(10),
     *           r4da05(10),r4da06(10)
      data       r4da02/10, 80, 30, 44, 50, 70, 70, 90, 90,100/
      data       r4da03/90, 80, 70, 60, 50, 40, 30, 20, 10,100/
      data       r4da05/ 0, 25, 40, 50, 66, 75,166,100, 80,185/
      data       r4da06/50,175,150,150, 44,125, 10,100, 20, 15/
      end
      block data blexor131
      common     /exor/r4da02,r4da03,r4da05,r4da06
      real*4     r4da02(10),r4da03(10),
     *           r4da05(10),r4da06(10)
      data       r4da02/10, 80, 30, 44, 50, 70, 70, 90, 90,100/
      data       r4da03/90, 80, 70, 60, 50, 40, 30, 20, 10,100/
      data       r4da05/ 0, 25, 40, 50, 66, 75,166,100, 80,185/
      data       r4da06/50,175,150,150, 44,125, 10,100, 20, 15/
      end
