      call sub(1,10,2)
      end

      subroutine sub(L,M,N)
      integer L,M,N
      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      real*8  B(10)/11,22,33,44,55,66,77,8,9,10/
      real*8  C(10)/10*0/
 
      do i = L,M,N
        C(i) = SIN(A(i))+SIN(B(i))
      end do

       write (6,*) "C =",C
       end

