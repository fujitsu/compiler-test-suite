      module mod
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

      program main
       use mod
       j=2
       k=3
        i = ifunc(j,k)
        print *,'pass'
      end program
