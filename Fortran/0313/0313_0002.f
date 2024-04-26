      real*8 r8a(16)/16*0/,r8b(16),r8c(16)/16*5/
      integer*8 i8a(16)
      data r8b/1,3,5,7,9,2,4,6,8,10,3*3,3*5/
      do i=1,16
         i8a(i) = r8b(i) .ge. r8c(i)
      enddo
      write(6,*) i8a
      end
