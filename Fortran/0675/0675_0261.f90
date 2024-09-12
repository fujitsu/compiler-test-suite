      common /num/ A(10),B(10)

      do i = 1,10
        A(i) = SIN(real(i))
      end do

      call sub(10)

      write (6,*) "A =",A
      write (6,*) "B =",B
      end

      subroutine sub(M)
      common /num/ A(10),B(10)

      do i = 1,M
        B(i) = COS(SIN(A(i))+EXP(A(i)))
        A(i) = B(i)**i
      end do

      end

