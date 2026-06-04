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
     class(base), allocatable :: var
  end type
  type(x)::g(2)
     type (ext ) :: v
m=2
     allocate(v%name,source='1')
     allocate(g(m)%var)
     g(m)%var=v
     select type(p=>g(m)%var)
       type is(ext)
         if (p%name/='1') print *,202
     end select
     end
     do n=1,10
      call s1
     end do
     print *,'sngg767q : pass'
     end 
