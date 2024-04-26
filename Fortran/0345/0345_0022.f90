      program main
        n=2
        call sub(n)
        print *,'pass'
      end program

      module mod
      contains
       subroutine sub0(n)
        integer(4),allocatable::al(:)
        integer(4)::n
         allocate(al(n))
       end subroutine
       subroutine sub1(n)
        integer(4),allocatable::al(:)
        integer(4),intent(in)::n
       end subroutine
       subroutine sub2(n)
        integer(4),allocatable::al(:)
        integer(4)::n
         if (allocated(al)) then
           if (any(al/=n)) print *,'error'
           if (size(al)/=n) print *,'error'
         endif
       end subroutine
       subroutine sub3()
        integer(4),allocatable::al(:)
         if (allocated(al)) deallocate(al)
       end subroutine
      end module

      subroutine sub(n)
       use mod
        call sub0(n)
        call sub1(n)
        call sub2(n)
        call sub3()
      end subroutine
