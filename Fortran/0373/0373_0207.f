      real a(10),c(10)
      integer b(10)
      call sub(b,c,m,n)
      do i=1,10
         a(b(m*i+n)) = c(i) 
         c(i) = a(b(m*i+n))
      enddo
      write(6,*) c
      end
      subroutine sub(b,c,m,n)
      real    c(10)
      integer b(10)
      do i=1,10
        b(i)=i
        c(i)=i
      end do
      m=1;n=0
      end subroutine
