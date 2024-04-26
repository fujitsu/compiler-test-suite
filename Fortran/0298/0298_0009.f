      integer i
      real(kind=8), dimension(100) ::a
      real(kind=8), dimension(100) ::b=(/(i,i=1,100)/)

      do i=1,100
        a(i) = b(i)
      enddo

      write(6,*) a(10)
      end
