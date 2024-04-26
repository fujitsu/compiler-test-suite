      module mod
      contains
        function ifun1(al)
          integer(4),allocatable,dimension(:),intent(in)::al
          ifun1=0
          if (.not.allocated(al)) ifun1=1
        end function
        function ifun0()
          integer(4),allocatable,dimension(:)::al
          allocate(al(5))
          ifun0=ifun1(al)
        end function
      end module

      program main
       use mod
        i = ifun0()
        print *,'pass'
      end program
