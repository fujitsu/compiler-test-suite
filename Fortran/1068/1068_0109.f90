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
  type x
     integer(8)::d0
     class(*   ), allocatable :: var(:)
  end type
  type(x)::g(2)
     type (ext ) :: v
m=2
     allocate(v%name,source='1')
     allocate(base::g(m)%var(2))
     g(m)%var=v
     select type(p=>g(m)%var)
       type is(ext)
         if (size(p)/=2  ) print *,2021
         if (p(2)%name/='1') print *,202
     end select
     end
     do n=1,10
      call s1
     end do
     print *,'sngg867q : pass'
     end
