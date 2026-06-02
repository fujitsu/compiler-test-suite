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
       subroutine alc(name)
         character(:),allocatable::name
         allocate(name,source='ok')
       end subroutine
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value                    ! 6)
     integer(8)::k1,k2
     allocate(value)
     call alc(value%name)
     call s1(var, value)                                ! 6)
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     print *,'sngg157p : pass'
     end program

