      subroutine kernel(N,B,C,A)

      integer*8  N,I
      real*8   B(N)
      real*8   C(N)
      real*8    A(N)

      do I=0,N-2,2
         A(I+1)   = B(I+1)   + C(I+1)
         A(I+2) = B(I+2) + C(I+2)
      enddo
     
      if (sum(A) .eq. 20400.0) then
        write(6,*) "OK"
      else 
        write(6,*) "NG"
      endif
      end subroutine kernel
    
      integer*8 N,I
      real*8 B(100)
      real*8 C(100)
      real*8 A(100)
      N = 100
      do I=1,100
         A(I) = 0
         B(I) = I + 2
         C(I) = I * 3
      enddo
      call kernel(N,B,C,A)
      end
