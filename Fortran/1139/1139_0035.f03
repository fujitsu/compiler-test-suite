 module mod
   type :: base                          ! 1)
   end type base
 
   type, extends(base) :: ext                      ! 2), 3)
      character(:),allocatable::name               ! 4)
   end type ext
 
 contains
 
   subroutine s1(var, value)
     class(base), allocatable, intent(inout) :: var
     class(base), intent(in) :: value              ! 7), 8)
     var= value
     select type (value)
       type is(ext)
         var= value
       class default
         var= value
     end select
   end subroutine s1
 end module mod
 
 use mod
 class(base), allocatable :: var
 type(ext), allocatable :: value                   ! 9)
 allocate(value)
 allocate(value%name,source='ok')
 call s1(var, value)                               ! 9)
 select type(var)
 type is(ext)
   var%name(:)='ng'
 end select
 if (value%name/='ok') print *,999
print *,'sngg342k : pass'
 end program

