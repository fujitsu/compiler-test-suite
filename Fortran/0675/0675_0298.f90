      real*8 A(100)

      do i = 1,100
        A(i) = i
      end do

      call sub(A)
      end

      subroutine sub(A)
      real*8  A(100)
      real*8  B(100)/100*0/

      B(1:100:2) = EXP(A(1:100:2))

      write (6,*) "B =",B
      end

