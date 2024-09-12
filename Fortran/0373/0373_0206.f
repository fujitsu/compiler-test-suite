      real a(10,10),c(10,10)
      integer b(10,10)
      call sub(b,c)
      do i=1,10
      do j=1,10
         a(b(j,i),b(i,j)) = c(j,i) 
         c(j,i) = a(b(j,i),b(i,j))
      enddo;enddo
      write(6,*) c
      end
      subroutine sub(b,c)
      real    c(10,10)
      integer b(10,10)
      do i=1,10; do j=1,10
        b(j,i)=i
        c(j,i)=10*(i-1)+j
      enddo;enddo
      end subroutine
