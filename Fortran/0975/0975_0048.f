      parameter (m=100)
      parameter (n=100)
      integer*4 i,j,k
      real(kind=8), dimension(m) :: b=(/(i,i=1,m)/)
      real(kind=8) :: x,y

      j=1
      do i=1,n
        x=b(j)
        j=j+1
      enddo

      k=1
      do i=1,n
        y=b(k)
        k=k+1
      enddo

      write(6,*) x
      write(6,*) y
      end

