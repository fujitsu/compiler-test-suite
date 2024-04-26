      program main
      parameter(n=5)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer*4 m
      a=0
      b=1
      c=3
      call sub1(a,b,c,n,m)
      write(6,99) a
99    format(5f10.5)
      stop
      end

      subroutine sub1(a,b,c,n,m)
      real * 8 a(n,n),b(n,n),c(n,n)
      integer*4 m
      do k=1,n
        m = k
        do j=2,m
        do i=2,m
          a(j,i) = b(j,i)+c(j,i)
        enddo
       enddo
      enddo
      return
      end

