      real*4 a(20),b(20)
      do i=1,20
         a(i) = i
         b(i) = i
         n = i-10
      enddo

      do i=1,10
         a(i) = a(i+n) - 2
         b(i) = b(i+n) - 3
      enddo
      write(*,*) a
      write(*,*) b

      do i=1,10
         a(i) = a(i+n) - 2
         b(i) = b(i+n) - 3
      enddo
      write(*,*) a
      write(*,*) b

      do i=1,10
         a(i) = a(i+n) - 2
         b(i) = b(i+n) - 3
      enddo
      write(*,*) a
      write(*,*) b

      do i=1,10
         a(i) = a(i+n) - 2
         b(i) = b(i+n) - 3
      enddo
      write(*,*) a
      write(*,*) b
      end
