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
     select type(d)
       class is(b)
     d  (2)%d1=1
     allocate(e::d  (2)%n(2))
     select type(p=>d)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+11,"(z16.16)") loc(p(2)%c  )
     end select
     call ss1(d  (2)%n,unit)
     end select
  end
  subroutine ss1(g,unit)
     class (*),allocatable :: g(:)
     integer::unit
select type(g)
  class is(b)
     g  (2)%d1=2
     allocate(e::g  (2)%n(2))
     select type(p=>g)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+12,"(z16.16)") loc(p(2)%c  )
     end select
     call ss2(g  (2)%n,unit)
end select
  end
  subroutine ss2(f,unit)
     class (*),allocatable :: f(:)
     integer::unit
select type(f)
  class is(b)
     f  (2)%d1=3
      allocate(e::f  (2)%n(2))
     select type(p=>f)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     end select
     call ss3(f  (2)%n,unit)
end select
  end
 subroutine ss3(h,unit)
     class (*),allocatable :: h(:)
     integer::unit
select type(h)
  class is(b)
     h  (2)%d1=4
     select type(p=>h)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+14,"(z16.16)") loc(p(2)%c  )
     end select
     end select
  end
 end
     subroutine s1
     use mod
     class (*),allocatable :: v(:),u(:)
     allocate(e::v(2))
select type(v)
 class is(b)
     v%d1=1
end select
     allocate(e::u(3))
call alloc(v,100)
call alloc(u,200)

     u=v

k=0
select type(u)
 class is(b)
     if (u(2)%d1/=1) print *,10001
     select type(p=>u(2)%n)
       class is(b)
     if (p     (2)%d1/=2) print *,10002
     select type(q=>p(2)%n)
       class is(b)
     if (q          (2)%d1/=3) print *,10003
     select type(w=>q(2)%n)
       class is(b)
     if (w          (2)%d1/=4) print *,10004
     if (allocated(w          (2)%n)) print *,10005
k=1
     end select
     end select
end select
end select
if (k/=1) print *,2973
     deallocate(v,u)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(111)
!call chk(112)
!call chk(113)
!call chk(114)
!call chk(211)
!call chk(212)
!call chk(213)
!call chk(214)
     print *,'sngg230r : pass'
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
