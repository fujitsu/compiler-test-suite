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
     class(base), allocatable :: var(:)
     type (ext ) :: v
     v%name='1'
     allocate(var(2))
     var=v
     if (size(var)/=2) print *,9001
     select type(p=>var)
       type is(ext)
         if (p(1)%name/='1') print *,202
         if (p(2)%name/='1') print *,202
     end select
     end
     do n=1,10
      call s1
     end do
     print *,'sngg795q : pass'
     end 
