     module mod
       type :: base
         integer::z
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
         select type (value)
          type is(ext)
            k=1
            value%z=0
         end select
         if (k/=1) print *,1022
       end subroutine s1
     end module mod

     use mod
     class(*   ), allocatable :: var
     type(ext) :: value
     allocate(value%name_base,source='11')
     allocate(value%name,source='ok')
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext )
       k=1
       var%name_base='aa'
       var%name='bb'
     end select
     if (k/=1) print *,1002
       if (value%name_base/='11')print *,9001
       if (value%name/='ok')print *,9002
     print *,'sngg270p : pass'
     end program

