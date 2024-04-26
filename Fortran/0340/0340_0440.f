      real*4 a(20)
      do i=1,20
         a(i) = i
         n = i-10
         m = i-10
      enddo


      do i=1,10
         a(i) = a(i) - 2
      enddo
      write(*,*) a

      do i=1,10
         a(i) = a(i) + 2
      enddo
      write(*,*) a
      end


