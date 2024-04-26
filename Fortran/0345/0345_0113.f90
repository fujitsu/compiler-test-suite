      function func(p)
        integer(4),pointer::p(:)
        integer(4),dimension(:),save,allocatable,target::t
        allocate(t(3))
        t=(/1,2,3/)
        p=>t
        func = 10
      end function

      program main
        integer(4),pointer::p(:)
        interface
          function func(p)
            integer(4),pointer::p(:)
          end function
        end interface
        i = func(p)
        if (i/=10) print *,'error1'
        if (any(p/=(/1,2,3/))) print *,'error2'
        print *,'pass'
      end program
