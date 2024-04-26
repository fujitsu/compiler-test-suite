      program main
      parameter(n=20)
      double precision a(n),b(n)
      do i=1,n
        a(i) = i
        b(i) = i+1
      enddo
      call s112(a,b,n,n)
      write(6,99) a
 99   format(5f10.5)
      stop
      end
      subroutine s112(a,b,n,m)
      double precision a(n),b(n)
      do j=1,m
      do i=n-1,1,-1
        A(I+1) = A(I) + B(I)                                          
      enddo
      enddo
      return
      end
