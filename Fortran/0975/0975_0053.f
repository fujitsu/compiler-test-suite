      parameter (m=100)
      parameter (n=100)
      real(kind=8), dimension(m) :: b=(/(i,i=1,m)/)
      integer(kind=8) :: i,j

      j=1
      do i=1,n
        b(j)=1
        j=j+1
      enddo

      write(6,*) b

      end

