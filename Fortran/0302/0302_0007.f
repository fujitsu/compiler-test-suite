      program main
      parameter(n=5)
      real * 8 a(n,n),b(n,n),c(n,n)
      a=0
      b=1
      c=3
      call sub1(a,b,c,n)
      write(6,99) a
 99   format(5f10.5)
      stop
      end

      subroutine sub1(a,b,c,n)
      real * 8 a(n,n),b(n,n),c(n,n)
      do k=1,n
        nn = k+1
        m = k * nn
        do j=1,nn*2/m
        do i=1,m/2
          a(i,j) = b(k,j)+c(k,j)
        enddo
       enddo
      enddo
      return
      end



