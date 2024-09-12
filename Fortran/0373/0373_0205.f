      real a(10),c(10)
      integer b(10)
      call sub(b,c)
      do i=1,10
         a(b(i)) = c(i) 
         c(i) = a(b(i))
      enddo
      write(6,*) c
      end
      subroutine sub(b,c)
      real    c(10)
      integer b(10)
      do i=1,10
        b(i)=i
        c(i)=i
      end do
      end subroutine
