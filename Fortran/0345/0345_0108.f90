      module mod
       integer(4)::i,j
      contains
        subroutine sub(k)
         integer(4),optional,intent(in)::k
           if (present(k)) then
             i=j+k
           else
             i=j*2
           endif
        end subroutine
      end module

      program main
       use mod
       j=2
       k=3
        call sub(k)
        print *,'pass'
      end program
