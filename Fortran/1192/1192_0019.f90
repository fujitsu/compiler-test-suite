     module mod
       type :: base
          character(:),allocatable::name                ! 7)
       end type base

       type, extends(base) :: ext                       ! 6)
          character(:),allocatable::name2               ! 7)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:)
         class(base), intent(in) :: value
         allocate(var(2), source=value)    
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var(:)
     type(ext), allocatable :: value                    ! 6)
     integer(8)::k1,k2,n1,n2
     integer(8)::k3,k4,n3,n4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(value%name2,source='ok')
     call s1(var, value)                                ! 6)
     k=0
     select type(var)
     type is(ext)
       var(2)%name(:)='11'
       k1=loc(var(2)%name)
       n1=loc(var(1)%name)
       k3=loc(var(2)%name2)
       n3=loc(var(1)%name2)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2= loc(value%name)
       n2= loc(value%name)
       k4= loc(value%name2)
       n4= loc(value%name2)
     if (k1==k2) print *,2002
     if (n1==n2) print *,2102
     if (k3==k4) print *,2012
     if (n3==n4) print *,2122
     print *,'sngg174p : pass'
     end program

