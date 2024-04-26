      program main
      parameter(n=20)
      double precision a(n),b(n),c(n),d(n)
      do i=1,n
        a(i) = i
        b(i) = i
        c(i) = 1
        d(i) = 1
      enddo
      call s241(a,b,c,d,n,5)
      write(6,99) a
      write(6,99) b
 99   format(5f15.8)
      stop
      end
      subroutine s241(a,b,c,d,n,m)
      double precision a(n),b(n),c(n),d(n)
      do j=1,m
      do i=1,n-1
         A(I) = B(I) * C(I)   + D(I)  
         B(I) = A(I) + A(I+1) * D(I)  
      enddo
      enddo
      return
      end
