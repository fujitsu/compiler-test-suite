      program main
      parameter(n=30)
      double precision a(n),b(n)
      real * 8 res
      do i=1,n
        a(i) = i
        b(i) = i-1
      enddo
      call s116(a,b,n,n)
      res = 0
      do i=1,n
        res = res+a(i)
      enddo
      res = res 
      write(6,99) res
 99   format(f20.5)
      stop
      end
      subroutine s116(a,b,n,m)
      double precision a(n),b(n)
      do j=1,m
      do i=1,n-5,5
         A(I)   = A(I+1) + A(I)            
         A(I+1) = A(I+2) + A(I+1)          
         A(I+2) = A(I+3) + A(I+2)          
         A(I+3) = A(I+4) + A(I+3)          
         A(I+4) = A(I+5) + A(I+4)          
      enddo
      enddo
      return
      end
