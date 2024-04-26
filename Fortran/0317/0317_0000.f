        program main
        real*8 a(100)
        real*4 b(100)
        data a/100*2.0/
        data b(1)/2.0/
        equivalence (a(1),b(2))
        do i=1,50
           b(i) = a(i+1)
           a(i) = b(i+1)
        enddo
        call sub(a,b)
        end

        SUBROUTINE sub(a,b)
        real*8 a(100)
        real*8 b(100)
          write(*,*) a(100),b(30)
        end subroutine sub

