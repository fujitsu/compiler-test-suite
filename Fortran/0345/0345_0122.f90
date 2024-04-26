      function ifun(al)
        integer(4),allocatable,dimension(:),intent(in)::al
        ifun=-1
        if (.not.allocated(al)) ifun=1
      end function

      program main
        integer(4),allocatable,dimension(:)::al
        interface
          function ifun(al)
            integer(4),allocatable,dimension(:),intent(in)::al
          end function
        end interface
        allocate(al(5))
        i = ifun(al)
        if (i/=-1) print *,'error'
        print *,'pass'
      end program
