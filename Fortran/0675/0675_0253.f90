      call sub(3,3,1)
      end

      subroutine sub(M,N,L)
      integer M,N,L
      real*8  A(3,3)/1,2,3,4,5,6,7,8,9/
      real*8  B(3,3)/11,22,33,44,55,66,77,88,99/
      complex C(3,3)/9*(1.0,1.0)/
      complex D(3,3)/9*(1.0,1.0)/

      do i = 1,M,L
        do j = 1,N,L
          C(j,i) = SIN(LOG(A(i,j)))**SIN(LOG(B(i,j)))
          D(j,i) = COS(LOG(A(i,j)))**COS(LOG(B(i,j)))
        end do
      end do

      write (6,*) "C =",C
      write (6,*) "D =",D
      end

