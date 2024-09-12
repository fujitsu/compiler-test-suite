      real*8 A(100)

      do i = 1,100
        A(i) = i
      end do

      call sub(A)
      end

      subroutine sub(A)
      real*8  A(100)
      real*8  B(100)/100*0/

      do i=1,100,3
        B(i) = EXP(A(i))
      end do

      write (6,*) "B =",B
      end

