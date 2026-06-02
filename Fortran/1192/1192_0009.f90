     module mod
       type :: base
       end type base

       type, extends(base) :: ext                       ! 6)
          character(:),allocatable::name                ! 7)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var ! 3)
         class(base),allocatable :: value               ! 4)
         call move_alloc(to=var, from=value)   
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     class(base), allocatable :: value                    ! 6)
     integer(8)::k1,k2
     allocate(ext::value)
     select type(value)
     type is(ext)
       allocate(value%name,source='ok')
     end select
     call s1(var, value)                                ! 6)
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
!     select type(value)
!     type is(ext)
!     if (value%name(:)/='ok') print *,1001
!       k2=              loc(value%name)
!     end select
!     if (k1==k2) print *,2002
     print *,'sngg159p : pass'
     end program

