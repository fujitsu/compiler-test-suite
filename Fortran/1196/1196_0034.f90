     module mod
       type :: base
       end type base

       type :: x_ty
         integer(8):: z
         character(:),allocatable::name_2
       end type

       type, extends(base) :: ext
          character(:),allocatable::name
          type(x_ty),allocatable:: w(:)
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
select type (var)
 type is(ext)
!print '("var%w(2)  :",z16.16)',loc(var%w(2))
!print '("var%w(2)%name_2  :",z16.16)',loc(var%w(2)%name_2)
end select
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(value%w(2))
     allocate(value%w(2)%name_2,source='11')
     call s1(var, value) 
!print '("value%w(2):",z16.16)',loc(value%w(2))
!print '("value%w(2)%name_2:",z16.16)',loc(value%w(2)%name_2)
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       k1=loc(var%name)
       var%w(2)%name_2(:)='aa'
       k3=loc(var%w(2)%name_2)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
     if (value%w(2)%name_2(:)/='11') print *,1021
       k2=              loc(value%name)
       k4=loc(value%w(2)%name_2)
     if (k1==k2) print *,2002
     if (k3==k4) print *,2003
     deallocate(var)
     print *,'sngg974p : pass'
     end program

