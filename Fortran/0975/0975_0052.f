      parameter (m=100)
      parameter (n=100)
      real(kind=8), dimension(m) :: b=(/(i,i=1,m)/)
      integer(kind=8) :: i

      do i=1,n
        b(i)=1
      enddo

      write(6,*) b

      end

