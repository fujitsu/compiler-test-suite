      parameter (m=100)
      parameter (n=100)
      integer*4 i,j
      integer(kind=8), dimension(m) :: a

      a=1
      j=1
      do i=1,n
        a(i)=j
        j=j+1
      enddo

      write(6,*) a
      end
