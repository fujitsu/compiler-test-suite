     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var
     type (ext ) :: v
     allocate(v%name,source='1')
     allocate(var)
     var=v
     select type(p=>var)
       type is(ext)
         if (p%name/='1') print *,202
     end select
     end
     do n=1,10
      call s1
     end do
     print *,'sngg763q : pass'
     end 
