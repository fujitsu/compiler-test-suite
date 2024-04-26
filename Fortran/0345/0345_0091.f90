      subroutine sub(r)
       real(4),dimension(1)::r
        r(1)=r(1)+1
      end subroutine

      program main
       integer(4),dimension(1)::r
        r=1
        call sub(r)
        print *,'pass'
      end program
