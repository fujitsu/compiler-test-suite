      real*8 A(10,10)

      do j = 1,10
        do i = 1,10
          A(i,j) = i+j
        end do
      end do

      call sub(A)
      end

      subroutine sub(A)
      real*8  A(10,10)
      real*8  B(10,10)/100*0/

      B(1,10:1:-1) = EXP(A(1,10:1:-1))

      write (6,*) "B =",B
      end

