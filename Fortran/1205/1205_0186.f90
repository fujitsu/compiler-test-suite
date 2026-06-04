     module mod
       type :: b
          integer::d1
          type (e),pointer    ::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     type   (e) :: d(:)
     integer::unit
     d  (2)%d1=1
    k=0
      k=1
       allocate(d(2)%c(2),source=cp )
             write (unit+11,"(z16.16)") loc(d(2)%c  )
    if (k/=1) print *,9202
    allocate(d  (2)%n(2))
     call ss1(d  (2)%n,unit)
  end
  subroutine ss1(g,unit)
     type  (e) :: g(:)
     integer::unit
     g  (2)%d1=2
     k=0
       k=1
       allocate(g(2)%c(2),source=cp )
             write (unit+12,"(z16.16)") loc(g(2)%c  )
     if (k/=1) print *,9212
    allocate(g  (2)%n(2))
     call ss2(g  (2)%n,unit)
  end
  subroutine ss2(f,unit)
     type  (e),pointer     :: f(:)
     integer::unit
     f  (2)%d1=3
     k=0
       k=1
       allocate(f(2)%c(2),source=cp )
             write (unit+13,"(z16.16)") loc(f(2)%c  )
     if (k/=1) print *,9222
    allocate(f  (2)%n(2))
     call ss3(f  (2)%n,unit)
  end
  subroutine ss3(h,unit)
     type  (e):: h(:)
     integer::unit
     h  (2)%d1=4
     h  (2)%n=>null()
  end
     subroutine s1(k)
     type(e)               :: v(k),u(k)
call alloc(v,100)
call alloc(u,200)

     u=v

     if (u(2)%d1/=1) print *,10001
     if (u(2)%n(2)%d1/=2) print *,10002
     if (u(2)%n(2)%n(2)%d1/=3) print *,10003
     if (u(2)%n(2)%n(2)%n(2)%d1/=4) print *,10004
     if (associated(u(2)%n(2)%n(2)%n(2)%n)) print *,10005
     !!!!!deallocate(u)
     !!!!if (allocated(u)) print *,10006
     end
     end module mod
use mod
do n=1,20
      call s1(2)
end do
!call chk(111)
!call chk(112)
!call chk(113)
!call chk(211)
!call chk(212)
!call chk(213)
     print *,'sngg233r : pass'
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
