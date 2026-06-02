     module mod
       type :: b
          integer::d1
          class(*),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     class (*),allocatable :: d
     integer::unit
     allocate(e::d)
     select type(p=>d)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+11,"(z16.16)") loc(p%c  )
     p%d1=1
     allocate(b::p%n)
 select type(q=>p%n)
    class is(b)
     q  %d1=2
     allocate(b::q  %n)
 select type(w=>q%n)
    class is(b)
     w    %d1=3
     end select
     end select
     end select
end subroutine
     subroutine s1
type g
     class (*),allocatable :: v,u
end type
type(g)::h(2,2)
integer::m=2
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v

     select type(p=>h(m,m)%u)
      type is(e)
     if (p       %d1/=1) print *,10001
 select type(q=>p%n)
    class is(b)
     if (q         %d1/=2) print *,10002
 select type(w=>q%n)
    class is(b)
     if (w           %d1/=3) print *,10003
     if (allocated(w           %n)) print *,10004
     end select
     end select
     end select
     deallocate(h(m,m)%v)
     !!!deallocate(h(m,m)%u)
     end
     end module mod
use mod
do n=1,120
      call s1
end do
!call chk(111)
!call chk(112)
!call chk(113)
!call chk(211)
!call chk(212)
!call chk(213)
     print *,'sngg199r : pass'
     end
      subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end
