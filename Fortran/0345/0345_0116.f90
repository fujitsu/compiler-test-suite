      module mod
        integer(4),dimension(3),target::t
      contains
        function func(p)
          integer(4),pointer::p(:)
          p=>t
          func = 3
        end function
      end module

      program main
       use mod
        integer(4),pointer::p(:)
        t=(/1,2,3/)
        i = func(p)
        if (i/=3) print *,'error1'
        if (any(p/=(/1,2,3/))) print *,'error2'
        print *,'pass'
      end program
