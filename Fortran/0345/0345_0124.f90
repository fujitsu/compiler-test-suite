      module mod
      contains
        function ifun(al)
          integer(4),allocatable,dimension(:),intent(in)::al
          ifun=-1
          if (.not.allocated(al)) ifun=1
        end function
      end module

      program main
       use mod
        integer(4),allocatable,dimension(:)::al
        allocate(al(5))
        i = ifun(al)
        if (i/=-1) print *,'error'
        print *,'pass'
      end program
