      integer res/0/
      integer i1,i2,i4,i8,r4,r8,r16
      res = res + i1()
      res = res + i2()
      res = res + i4()
      res = res + i8()
      res = res + r4()
      res = res + r8()
      res = res + r16()

      if (res .eq. 0) then
         write(6,*) ' OK '
      else
         write(6,*) ' NG ',res
      endif
      end
      
      integer function i1()
      integer*1 a(10)/10*0/
      integer*1 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      integer*1 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      integer*1 d(10)/10*1/
      integer*1 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
      end do
      i1 = 0
      do i=1,10
         if (a(i) .ne. res(i)) then
            i1 = 1
            write(6,*) a
            return
         endif
      enddo
      return
      end
      integer function i2()
      integer*2 a(10)/10*0/
      integer*2 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      integer*2 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      integer*2 d(10)/10*1/
      integer*2 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
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
      integer*4 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      integer*4 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      integer*4 d(10)/10*1/
      integer*4 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
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
      integer*8 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      integer*8 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      integer*8 d(10)/10*1/
      integer*8 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
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
      real*4 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      real*4 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      real*4 d(10)/10*1/
      real*4 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
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
      real*8 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      real*8 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      real*8 d(10)/10*1/
      real*8 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
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
      real*16 b(10)/-10,9,8,-7,-6,5,4,-3,-2,1/
      real*16 c(10)/1,-2,3,-4,5,-6,7,-8,9,-10/
      real*16 d(10)/10*1/
      real*16 res(10)/-10,-2,1,-7,-6,-6,1,-8,-2,-10/
      do i=1,10
         a(i) = min(b(i),c(i),d(i))  
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
