     module mod
       type :: base
         integer(8)::z
          character(2),allocatable::name_base
       end type base

       type, extends(base) :: ext
          character(2),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(*   ), allocatable, intent(inout) :: var
         class(*   ), intent(inout) :: value
         allocate(var,source=value)
       end subroutine s1
     end module mod

     use mod
     class(*   ), allocatable :: var
     class(*   ),allocatable :: value
     allocate(ext::value)
     select type(value)
     type is(ext )
     allocate(value%name_base,source='11')
     allocate(value%name,source='ok')
     end select
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext )
       k=1
       var%name_base='aa'
       var%name='bb'
     end select
     if (k/=1) print *,1002
     k=0
     select type(value)
     type is(ext )
       k=1
       if (value%name_base/='11')print *,9001
       if (value%name/='ok')print *,9002
     end select
     if (k/=1) print *,1003
     deallocate(var)
     print *,'sngg272p : pass'
     end program

