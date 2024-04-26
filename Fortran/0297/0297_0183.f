      program main
      parameter(n=20)
      double precision a(n),b(n),c(n),d(n),e(n)
      do i=1,n
        a(i) = i
        b(i) = i+1
        c(i) = 2
        d(i) = 1
        e(i) = 2
      enddo
      call s243(a,b,c,d,e,n,3)
      write(6,99) a
      write(6,99) b
 99   format(5f15.8)
      stop
      end
      subroutine s243(a,b,c,d,e,n,m)
      double precision a(n),b(n),c(n),d(n),e(n)
      do j=1,m
      do i=1,n-1
         A(I) = B(I) + C(I)   * D(I)    
         B(I) = A(I) + D(I)   * E(I)    
         A(I) = B(I) + A(I+1) * D(I)    
      enddo
      enddo
      return
      end
