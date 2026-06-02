      integer res/0/
      integer i1,i2,i4,i8,r4,r8,r16,c8,c16,c32,l1,l2,l4,l8
      res = res + i1()
      res = res + i2()
      res = res + i4()
      res = res + i8()
      res = res + r4()
      res = res + r8()
      res = res + r16()
      res = res + c8()
      res = res + c16()
      res = res + c32()
      res = res + l1()
      res = res + l2()
      res = res + l4()
      res = res + l8()

      if (res .eq. 0) then
         write(6,*) ' OK '
      else
         write(6,*) ' NG ',res
      endif
      end

      integer function i1()
      integer*1 a(10)/10*0/
      integer*1 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*1 c(10)/1,2,3,4,5,6,7,8,9,10/
      integer*1 d(10)/10*2/
      integer*1 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do
      i1 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            i1 = 1
            return
         endif
      enddo
      return
      end
      integer function i2()
      integer*2 a(10)/10*0/
      integer*2 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*2 c(10)/1,2,3,4,5,6,7,8,9,10/
      integer*2 d(10)/10*2/
      integer*2 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      i2 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            i2 = 1
            return
         endif
      enddo
      return
      end
      integer function i4()
      integer*4 a(10)/10*0/
      integer*4 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*4 c(10)/1,2,3,4,5,6,7,8,9,10/
      integer*4 d(10)/10*2/
      integer*4 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      i4 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            i4 = 1
            return
         endif
      enddo
      return
      end
      integer function i8()
      integer*8 a(10)/10*0/
      integer*8 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*8 c(10)/1,2,3,4,5,6,7,8,9,10/
      integer*8 d(10)/10*2/
      integer*8 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      i8 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            i8 = 1
            return
         endif
      enddo
      return
      end

      integer function r4()
      real*4 a(10)/10*0/
      real*4 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      real*4 c(10)/1,2,3,4,5,6,7,8,9,10/
      real*4 d(10)/10*2/
      real*4 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      r4 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            r4 = 1
            return
         endif
      enddo
      return
      end
      integer function r8()
      real*8 a(10)/10*0/
      real*8 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      real*8 c(10)/1,2,3,4,5,6,7,8,9,10/
      real*8 d(10)/10*2/
      real*8 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      r8 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            r8 = 1
            return
         endif
      enddo
      return
      end
      integer function r16()
      real*16 a(10)/10*0/
      real*16 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      real*16 c(10)/1,2,3,4,5,6,7,8,9,10/
      real*16 d(10)/10*2/
      real*16 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      r16 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            r16 = 1
            return
         endif
      enddo
      return
      end
      integer function c8()
      complex*8 a(10)/10*0/
      complex*8 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      complex*8 c(10)/1,2,3,4,5,6,7,8,9,10/
      complex*8 d(10)/10*2/
      complex*8 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      c8 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            c8 = 1
            return
         endif
      enddo
      return
      end
      integer function c16()
      complex*16 a(10)/10*0/
      complex*16 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      complex*16 c(10)/1,2,3,4,5,6,7,8,9,10/
      complex*16 d(10)/10*2/
      complex*16 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      c16 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            c16 = 1
            return
         endif
      enddo
      return
      end
      integer function c32()
      complex*32 a(10)/10*0/
      complex*32 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      complex*32 c(10)/1,2,3,4,5,6,7,8,9,10/
      complex*32 d(10)/10*2/
      complex*32 res(10)/-8,-5,-2,1,4,7,10,13,16,19/
      do i=1,10
         a(i) = b(i) + c(i) * d(i)
      end do

      c32 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            c32 = 1
            return
         endif
      enddo
      return
      end
      integer function l1()
      logical*1 a(10)/10*.false./
      logical*1 b(10)/10*.true./
      logical*1 c(10)/5*.false.,5*.true./
      logical*1 d(10)/.false.,.true.,.false.,.true.,.false.,.true.,
     +   .false.,.true.,.false.,.true./
      logical*1 res(10)/.false.,.true.,.false.,.true.,.false.,
     + .true.,.true.,.true.,.true.,.true./
      do i=1,10
         a(i) = b(i) .and. c(i) .or. d(i)
      end do

      l1 = 0
      do i=1,10
         if (a(i) .neqv. res(i)) then
            l1 = 1
            write(6,*) a
            return
         endif
      enddo
      return
      end
      integer function l2()
      logical*2 a(10)/10*.false./
      logical*2 b(10)/10*.true./
      logical*2 c(10)/5*.false.,5*.true./
      logical*2 d(10)/.false.,.true.,.false.,.true.,.false.,.true.,
     +   .false.,.true.,.false.,.true./
      logical*1 res(10)/.false.,.true.,.false.,.true.,.false.,
     + .true.,.true.,.true.,.true.,.true./
      do i=1,10
         a(i) = b(i) .and. c(i) .or. d(i)
      end do

      l2 = 0
      do i=1,10
         if (a(i) .neqv. res(i)) then
            l2 = 1
            write(6,*) a
            return
         endif
      enddo
      return
      end
      integer function l4()
      logical*4 a(10)/10*.false./
      logical*4 b(10)/10*.true./
      logical*4 c(10)/5*.false.,5*.true./
      logical*4 d(10)/.false.,.true.,.false.,.true.,.false.,.true.,
     +   .false.,.true.,.false.,.true./
      logical*1 res(10)/.false.,.true.,.false.,.true.,.false.,
     + .true.,.true.,.true.,.true.,.true./
      do i=1,10
         a(i) = b(i) .and. c(i) .or. d(i)
      end do

      l4 = 0
      do i=1,10
         if (a(i) .neqv. res(i)) then
            l4 = 1
            write(6,*) a
            return
         endif
      enddo
      return
      end
      integer function l8()
      logical*8 a(10)/10*.false./
      logical*8 b(10)/10*.true./
      logical*8 c(10)/5*.false.,5*.true./
      logical*8 d(10)/.false.,.true.,.false.,.true.,.false.,.true.,
     +   .false.,.true.,.false.,.true./
      logical*1 res(10)/.false.,.true.,.false.,.true.,.false.,
     + .true.,.true.,.true.,.true.,.true./
      do i=1,10
         a(i) = b(i) .and. c(i) .or. d(i)
      end do

      l8 = 0
      do i=1,10
         if (a(i) .neqv. res(i)) then
            l8 = 1
            write(6,*) a
            return
         endif
      enddo
      return
      end
