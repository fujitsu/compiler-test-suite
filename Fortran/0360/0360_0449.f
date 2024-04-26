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
      integer*1 ss/0/,res/-10/
      integer*1 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*1 c(10)/7,8,9,10,1,2,3,4,5,6/
      integer*1 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do
      i1 = 0
      if (ss .ne. res) then
         i1 = 1
         return
      endif
      return
      end
      integer function i2()
      integer*2 ss/0/,res/-10/
      integer*2 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*2 c(10)/7,8,9,10,1,2,3,4,5,6/
      integer*2 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do

      i2 = 0
      if (ss .ne. res) then
         i2 = 1
         return
      endif
      return
      end
      integer function i4()
      integer*4 ss/0/,res/-10/
      integer*4 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*4 c(10)/7,8,9,10,1,2,3,4,5,6/
      integer*4 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do

      i4 = 0
      if (ss .ne. res) then
         i4 = 1
         return
      endif
      return
      end
      integer function i8()
      integer*8 ss/0/,res/-10/
      integer*8 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      integer*8 c(10)/7,8,9,10,1,2,3,4,5,6/
      integer*8 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do

      i8 = 0
      if (ss .ne. res) then
         i8 = 1
         return
      endif
      return
      end

      integer function r4()
      real*4 ss/0/,res/-10/
      real*4 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      real*4 c(10)/7,8,9,10,1,2,3,4,5,6/
      real*4 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do

      r4 = 0
      if (ss .ne. res) then
         r4 = 1
         return
      endif
      return
      end
      integer function r8()
      real*8 ss/0/,res/-10/
      real*8 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      real*8 c(10)/7,8,9,10,1,2,3,4,5,6/
      real*8 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do

      r8 = 0
      if (ss .ne. res) then
         r8 = 1
         return
      endif
      return
      end
      integer function r16()
      real*16 ss/0/,res/-10/
      real*16 b(10)/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/
      real*16 c(10)/7,8,9,10,1,2,3,4,5,6/
      real*16 d(10)/10*2/
      do i=1,10
         ss = min(ss,b(i),c(i),d(i))  
      end do

      r16 = 0
      if (ss .ne. res) then
         r16 = 1
         return
      endif
      return
      end
