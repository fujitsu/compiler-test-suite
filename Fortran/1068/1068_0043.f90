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
     class(base), allocatable :: var(:)
  end type
  type(x)::g
     type (ext ) :: v
     allocate(v%name,source='1')
     allocate(g%var(2))
     g%var=v
     select type(p=>g%var)
       type is(ext)
         if (p(2)%name/='1') print *,202
     end select
     end
     do n=1,10
      call s1
     end do
     print *,'sngg801q : pass'
     end 
