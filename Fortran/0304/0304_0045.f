      integer i4(100)
      real*4 r4(100)
      real*8 r8(100)

      do i=1,100
         i4(i) = 1
         r4(i) = 2
         r8(i) = 3
      enddo
      write(6,*) i4(1),r4(1),r8(1)
      end
