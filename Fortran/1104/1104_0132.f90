     module mod
       type :: base
         integer(8):: a
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(*   ), allocatable, intent(inout) :: var
         class(*   ), intent(in) :: value
         var=value
       end subroutine s1
     end module mod

     use mod
     class(*   ), allocatable :: var
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     value%a =8
     allocate(value%name,source='ok')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       if (var%a /= 8) print *,8099
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     print *,'sngg809p : pass'
     end program

