     module mod
       type :: base
          character(1000)::name
       end type base

       type, extends(base) :: ext
          integer(8)::d(1000)
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var
     type (ext ) :: v
     v%name='1'
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
     print *,'sngg764q : pass'
     end 
