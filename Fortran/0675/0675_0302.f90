      real*8 A(100)
      real*8 B(100)

      do i=1,100
        A(i) = i
        B(i) = i+i
      end do
      call sub(A,B)
      end

      subroutine sub(A,B)
      real*8 A(100)
      real*8 B(100)
      real*8 C(100)/100*0/

      C(31:80) = EXP(A(1:50)) + EXP(B(51:100)) + 5

      write (6,*) "C =",C
      end
