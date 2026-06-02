     module mod
       type :: base
          character(:),allocatable::name
       end type base

       type, extends(base) :: ext
          integer(8)::d1
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var(:)
     type (ext ) :: v
     allocate(v%name,source='1')
     allocate(base::var(2))
     var=v
     select type(p=>var)
       type is(ext)
         if (p(2)%name/='1') print *,202
     end select
     end
     do n=1,10
      call s1
     end do
     print *,'sngg864q : pass'
     end
