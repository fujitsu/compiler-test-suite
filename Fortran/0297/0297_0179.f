      program main
      parameter(n=20)
      double precision a(n),b(n)
      do i=1,n
        a(i) = i
        b(i) = i+1
      enddo
      call s121(a,b,n,n)
      write(6,99) a
 99   format(5f10.5)
      stop
      end
      subroutine s121(a,b,n,m)
      double precision a(n),b(n)
      do k=1,m
      do i=1,n-1
        J = I+1                                     
        A(I) = A(J) + B(I)                          
      enddo
      enddo
      return
      end
