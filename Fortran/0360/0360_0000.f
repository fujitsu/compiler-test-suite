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
      integer*1 y,z
      y=4
      z=4
      do i=1,4
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 79 .and. z.eq.40)  then
         i1 = 0
      else
         i1 = 1
         write(6,*) 'i1 ',y,z
      endif
      return
      end

      integer function i2()
      integer*2 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         i2 = 0
      else
         i2 = 1
         write(6,*) 'i1 ',y,z
      endif
      return
      end

      integer function i4()
      integer*4 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         i4 = 0
      else
         i4 = 1
         write(6,*) 'i4 ',y,z
      endif
      return
      end

      integer function i8()
      integer*8 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         i8 = 0
      else
         i8 = 1
         write(6,*) 'i8 ',y,z
      endif
      return
      end

      integer function r4()
      real*4 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         r4 = 0
      else
         r4 = 1
         write(6,*) 'r4 ',y,z
      endif
      return
      end

      integer function r8()
      real*8 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         r8 = 0
      else
         r8 = 1
         write(6,*) 'r8 ',y,z
      endif
      return
      end

      integer function r16()
      real*16 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         r16 = 0
      else
         r16 = 1
         write(6,*) 'r16 ',y,z
      endif
      return
      end

      integer function c8()
      complex*8 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         c8 = 0
      else
         c8 = 1
         write(6,*) 'c8 ',y,z
      endif
      return
      end

      integer function c16()
      complex*16 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         c16 = 0
      else
         c16 = 1
         write(6,*) 'c16 ',y,z
      endif
      return
      end

      integer function c32()
      complex*32 y,z
      y=4
      z=4
      do i=1,10
         z = y + 1 
         y = y + z
      end do

      if (y .eq. 5119 .and. z.eq.2560)  then
         c32 = 0
      else
         c32 = 1
         write(6,*) 'c32 ',y,z
      endif
      return
      end

      integer function l1()
      logical*1 y,z
      y=.true.
      z=.true.
      do i=1,4
         z = y .or. .true.
         y = y .and. z
      end do

      if (y .and. z )  then
         l1 = 0
      else
         l1 = 1
         write(6,*) 'l1 ',y,z
      endif
      return
      end

      integer function l2()
      logical*1 y,z
      y=.true.
      z=.true.
      do i=1,10
         z = y .or. .true.
         y = y .and. z
      end do

      if (y .and. z)  then
         l2 = 0
      else
         l2 = 1
         write(6,*) 'l2 ',y,z
      endif
      return
      end

      integer function l4()
      logical*4 y,z
      y=.true.
      z=.true.
      do i=1,10
         z = y .or. .true.
         y = y .and. z
      end do

      if (y .and. z)  then
         l4 = 0
      else
         l4 = 1
         write(6,*) 'l4 ',y,z
      endif
      return
      end

      integer function l8()
      logical*8 y,z
      y=.true.
      z=.true.
      do i=1,10
         z = y .or. .true. 
         y = y .and. z
      end do

      if (y .and. z)  then
         l8 = 0
      else
         l8 = 1
         write(6,*) 'l8 ',y,z
      endif
      return
      end
