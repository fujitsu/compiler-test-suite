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
         class(*   ), intent(out) :: value
         select type (value)
          type is(ext)
            k=1
            value%z=0
         end select
         !if (k/=1) print *,1022
         allocate(base::var)
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
     type is(base )
       k=1
     end select
     if (k/=1) print *,1002
     !if (allocated (value%name)) print *,1001
     !if (allocated (value%name_base)) print *,1201
     print *,'sngg269p : pass'
     end program

