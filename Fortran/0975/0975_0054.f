      parameter (m=100)
      parameter (n=50)
      real(kind=8), dimension(m) :: b=(/(i,i=1,m)/)
      integer(kind=8) :: i,j

      b=1
      j=1
      do i=1,n
        b(j)=i
        j=j+2
      enddo

      write(6,*) b

      end

