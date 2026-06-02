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
     class  (*),allocatable :: d(:)
     integer::unit
     allocate(e::d(2))
    k=0
    select type(d)
      type is(e)
     d  (2)%d1=1
      k=1
       allocate(d(2)%c(2),source=cp )
             write (unit+11,"(z16.16)") loc(d(2)%c  )
     allocate(e::d  (2)%n(2))
     call ss1(d  (2)%n,unit)
    end select
    if (k/=1) print *,9202
  end
  subroutine ss1(g,unit)
     class (*),allocatable :: g(:)
     integer::unit
     k=0
     select type(p=>g)
       type is(e)
     p  (2)%d1=2
       k=1
       allocate(p(2)%c(2),source=cp )
             write (unit+12,"(z16.16)") loc(p(2)%c  )
     allocate(e::p  (2)%n(2))
     call ss2(p  (2)%n,unit)
     end select
     if (k/=1) print *,9212
  end
  subroutine ss2(f,unit)
     class (*),allocatable :: f(:)
     integer::unit
     k=0
     select type(p=>f)
       type is(e)
     p  (2)%d1=3
       k=1
       allocate(p(2)%c(2),source=cp )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     allocate(e::p  (2)%n(2))
     call ss3(p  (2)%n,unit)
     end select
     if (k/=1) print *,9222
  end
  subroutine ss3(h,unit)
     class (*),allocatable :: h(:)
     integer::unit
     select type(h   )
       type is(e)
     h  (2)%d1=4
     end select
  end
     subroutine s1
     class(*),allocatable :: v(:),u(:)
call alloc(v,100)
call alloc(u,200)

     u=v

k=0
select type(u)
  class is(b)
     if (u(2)%d1/=1) print *,10001
     select type(p=>u(2)%n   )
       class is(b)
     if (p     (2)%d1/=2) print *,10002
     select type(q=>p(2)%n   )
       class is(b)
     if (q          (2)%d1/=3) print *,10003
     select type(w=>q(2)%n   )
       class is(b)
     if (w               (2)%d1/=4) print *,10004
     if (allocated(w               (2)%n)) print *,10005
k=1
     end select
     end select
     end select
     end select
if (k/=1) print *,2938
     deallocate(u)
     if (allocated(u)) print *,10006
     end
     end module mod
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
     print *,'sngg237r : pass'
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
