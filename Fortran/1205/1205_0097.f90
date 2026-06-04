     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     type  (b),allocatable :: d(:)
     integer::unit
     allocate(b::d(2))
     d(2)%d1=1
     allocate(b::d(2)%n(2))
     call ss2(d(2)%n,unit)
end
subroutine ss2(d,unit)
     class (b),allocatable :: d(:)
     integer::unit
     d(2)%d1=2
     allocate(e::d(2)%n(2))
     select type(p=>d(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=[cp,cp] )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     end select
     call ss3(d(2)%n,unit)
end subroutine
subroutine ss3(d,unit)
     class (b),allocatable :: d(:)
     integer::unit
     d(2)%d1=3
     allocate(e::d(2)%n(2))
     select type(p=>d(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=[cp,cp] )
             write (unit+14,"(z16.16)") loc(p(2)%c  )
     end select
     d(2)%n(2)%d1=4
end subroutine
     end module mod

     subroutine s1
     use mod
type g
     type  (b),allocatable :: v(:),u(:)
end type
type(g)::h(2,2)
m=2
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v  

     if (h(m,m)%u(2)%d1/=1) print *,10001
     if (h(m,m)%u(2)%n(2)%d1/=2) print *,10002
     if (h(m,m)%u(2)%n(2)%n(2)%d1/=3) print *,10003
     if (h(m,m)%u(2)%n(2)%n(2)%n(2)%d1/=4) print *,10004
     if (allocated(h(m,m)%u(2)%n(2)%n(2)%n(2)%n)) print *,10005
     deallocate(h(m,m)%v)
     !!!deallocate(h(m,m)%u)
     end
use mod
do n=1,120
      call s1
end do
!call chk(113)
!call chk(114)
!call chk(213)
!call chk(214)
     print *,'sngg144r : pass'
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
