     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     type (e) :: d(:)
     integer::unit
     d(2)%d1=1
       allocate(d(2)%c(2),source=[cp,cp] )
             write (unit+11,"(z16.16)") loc(d(2)%c  )
     call ss2(d(2)%n,unit)
end
subroutine ss2(d,unit)
     class (*),allocatable :: d(:)
     integer::unit
     allocate(e::d(2))
select type(d)
 class is(b)
     d(2)%d1=2
     select type(p=>d)
      type is(e)
       allocate(p(2)%c(2),source=[cp,cp] )
             write (unit+12,"(z16.16)") loc(p(2)%c  )
     end select
     call ss3(d(2)%n,unit)
 end select
end subroutine
subroutine ss3(d,unit)
     class (*),allocatable :: d(:)
     integer::unit
     allocate(e::d(2))
select type(d)
 class is(b)
     d(2)%d1=3
     select type(p=>d)
      type is(e)
       allocate(p(2)%c(2),source=[cp,cp] )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     end select
     call ss4(d(2)%n,unit)
end select
end subroutine
subroutine ss4(d,unit)
     class (*),allocatable :: d(:)
     integer::unit
     allocate(e::d(2))
select type(d)
 class is(b)
     d(2)%d1=4
end select
end subroutine
     end module mod

     subroutine s1
     use mod
type g
     type  (e) :: v(2),u(2)
end type
class(g),allocatable::h(:,:)
allocate(h(2,2))
m=2
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v

     if (h(m,m)%u(2)%d1/=1) print *,10001
select type(p=>h(m,m)%u(2)%n)
 class is(b)
     if (p            (2)%d1/=2) print *,10002
select type(q=>p(2)          %n)
 class is(b)
     if (q                 (2)%d1/=3) print *,10003
select type(w=>q(2)       %n)
 class is(b)
     if (w                      (2)%d1/=4) print *,10004
     if (allocated(w                      (2)%n)) print *,10005
end select
end select
end select
     !deallocate(h(m,m)%v, h(m,m)%u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(111)
!call chk(112)
!call chk(113)
!call chk(211)
!call chk(212)
!call chk(213)
     print *,'sngg258r : pass'
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
