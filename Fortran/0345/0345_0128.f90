      function ifun1(al)
        integer(4),allocatable,dimension(:),intent(in)::al
        ifun1=0
        if (.not.allocated(al)) ifun1=1
      end function

      module mod
        integer(4),allocatable,dimension(:)::al
          interface
            function ifun1(al)
              integer(4),allocatable,dimension(:),intent(in)::al
            end function
          end interface
      contains
        function ifun0()
          al=1
          ifun0=ifun1(al)
        end function
      end module

      program main
       use mod
        allocate(al(5))
        i = ifun0()
        print *,'pass'
      end program
