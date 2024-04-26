      subroutine sub(r)
       real(4),dimension(2)::r
        r(1)=r(2)+1
      end subroutine

      program main
       real(4),dimension(1)::r1,r2
        r2=1
        call sub(r1,r2)
        print *,'pass'
      end program
