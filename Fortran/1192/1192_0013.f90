     module mod
       type :: base
       end type base

       type, extends(base) :: ext                       ! 6)
          character(:),allocatable::name                ! 7)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var ! 3)
         class(base), intent(in) :: value               ! 4)
         allocate(var, source=value)              ! 1), 2), 3), 4), 5), 6)
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value                    ! 6)
     allocate(value)
     allocate(value%name,source='ok')
     call s1(var, value)                                ! 6)
     deallocate(var) !!!!
     print *,'sngg163p : pass'
     end program

