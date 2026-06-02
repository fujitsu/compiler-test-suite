     module mod
       type y
         integer,allocatable::y1(:)
       end type

       type :: base
       end type base

       type, extends(base) :: ext      
          type(y)     ,allocatable:: ez(:) 
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
     allocate(value%ez(2))
     allocate(value%ez(1)%y1(2))
     allocate(value%ez(2)%y1(2))
     call s1(var, value)                                ! 6)
     deallocate(var) !!!!
     print *,'sngg164p : pass'
     end program

