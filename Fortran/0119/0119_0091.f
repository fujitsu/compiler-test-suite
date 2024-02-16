      integer*8 i8a(10)
      real*8 r8a(10)
      real*4 r4a(10)

      do i=1,10
         i8a(i) = 1
         r4a(i) = 1
         r8a(i) = 1
      enddo
      write(6,*) i8a(1),r4a(1),r8a(1)
      end
