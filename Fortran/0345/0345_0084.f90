      module mod
        integer(4),dimension(3),target::t=(/1,2,3/)
        integer(4),pointer::p(:)
      contains
        function ifunc()
          p=>t
          ifunc = 1
        end function
      end module

      program main
       use mod
        i = ifunc()
        if (i/=1) print *,'error1'
        if (any(p/=(/1,2,3/))) print *,'error2',p
        print *,'pass'
      end program
