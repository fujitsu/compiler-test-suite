      real a(10),c(10),d(10)
      integer b(10)
      call sub(b,c,d,m,n)
      do i=1,10
         a(b(m*i+n)) = c(i) +d(i)+10 
         c(i) = a(b(m*i+n)) +d(i)+10
      enddo
      write(6,*) c
      end
      subroutine sub(b,c,d,m,n)
      real    c(10),d(10)
      integer b(10)
      do i=1,10
        b(i)=i
        c(i)=i
        d(i)=i
      end do
      m=1;n=0
      end subroutine
