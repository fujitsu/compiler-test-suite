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
     type  (b),allocatable :: d(:)
     integer::unit
     d  (2)%d1=1
     allocate(b::d  (2)%n(2))
     call ss1(d  (2)%n,unit)
  end
  subroutine ss1(g,unit)
     class (*),allocatable :: g(:)
     integer::unit
select type(g)
  class is(b)
     g  (2)%d1=2
     allocate(e::g  (2)%n(2))
     call ss2(g  (2)%n,unit)
end select
  end
  subroutine ss2(f,unit)
     class (*),allocatable :: f(:)
     integer::unit
select type(f)
  class is(b)
     f  (2)%d1=3
     select type(p=>f)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     end select
end select
  end
 end

     subroutine s1
     use mod
     type  (b),allocatable :: v(:),u(:)
     allocate(b::v(2))
     v%d1=1
     allocate(b::u(3))
call alloc(v,100)
call alloc(u,200)

     u=v

k=0
     if (u(2)%d1/=1) print *,10001
     select type(p=>u(2)%n)
       class is(b)
     if (p     (2)%d1/=2) print *,10002
     select type(q=>p(2)%n)
       class is(b)
     if (q          (2)%d1/=3) print *,10003
     if (allocated(q          (2)%n)) print *,10004
k=1
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
!call chk(113)
!call chk(213)
     print *,'sngg228r : pass'
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
