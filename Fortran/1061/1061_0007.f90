     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
          character(:),allocatable::c1
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c2
       end type
integer::m=3
character(*),parameter::a=repeat('a',1000)
contains
subroutine alc(v,u)
     class (b),allocatable :: v(:)
     integer::u
np=0
nq=0
nr=0
do nw=1,m
     v(nw)%d1=nw
     allocate(b::v(nw)%n(m))
    allocate(   v(nw)%c1,source=a)
end do
end
     end

     subroutine s1
     use mod
     class (b),allocatable :: v(:),u(:)

     allocate(b::v(m))
call alc(v,1000)

allocate(e::u(m))
call alc(u,2000)

u=v

     !!!!!deallocate(v%n(2)%n)
     deallocate(v)
     end
use mod
do n=1,20
      call s1
end do
     print *,'sngg095r : pass'
     end
