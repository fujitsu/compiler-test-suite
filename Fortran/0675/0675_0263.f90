      call sub(1,10,1)
      end

      subroutine sub(L,M,N)
      integer L,M,N
      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      real  B(10)/11,22,33,44,55,66,77,8,9,10/
      complex C(10)/10*(1.0,1.0)/

      do i = L,M,N
        B(i) = SIN(A(i))+COS(A(i))
        C(i) = LOG(A(i))
      end do

      write (6,*) "B =",B
      write (6,*) "C =",C
      end

