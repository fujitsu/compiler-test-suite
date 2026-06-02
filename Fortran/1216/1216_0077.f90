     module mod
       type :: base
         integer::z
       end type base

       type, extends(base) :: ext
          character(2),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(out) :: value
            k=0
         select type (value)
          type is(ext)
            k=1
         end select
         if (k/=1) print *,1022
         allocate(var)
         value%z=0
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext) :: value
     allocate(value%name,source='ok')
     call s1(var, value) 
     k=0
     select type(var)
     type is(base )
       k=1
     end select
     if (k/=1) print *,1002
     if (allocated (value%name)) print *,1001
     print *,'sngg773s : pass'
     end program

