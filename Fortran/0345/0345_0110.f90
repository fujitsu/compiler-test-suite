      module mod1
      contains
        function ifunc(j,k)
         integer(4),intent(in) ::j
         integer(4),optional,intent(in)::k
           if (present(k)) then
             ifunc=j+k
           else
             ifunc=j*2
           endif
        end function
      end module

      module mod
       use mod1
       integer(4)::j,k
      contains
        subroutine sub(i)
          integer(4),optional::i
          if (present(i)) then
            i = ifunc(j,k)
          else
            i=0
          endif
        end subroutine
      end module

      program main
       use mod
       j=2
       k=3
        call sub(i)
        print *,'pass'
      end program
