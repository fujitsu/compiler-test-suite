     module mod
       type :: b
          integer::d1
          class(b),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     type  (e) :: d
     integer::unit
!    allocate(e::d)
!     select type(p=>d)
!      type is(e)
       allocate(d%c,source=cp )
             write (unit+11,"(z16.16)") loc(d%c  )
!     end select
             write (unit+1,"(z16.16)") loc(d     )
     d%d1=1
     allocate(e::d%n)
             write (unit+2,"(z16.16)") loc(d%n   )
     select type(p=>d%n)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+12,"(z16.16)") loc(p%c  )
       k=1
     end select
     if (k/=1) print *,910
     d%n%d1=2
     allocate(e::d%n%n)
     k=0
     select type(p=>d%n%n)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+13,"(z16.16)") loc(p%c  )
       k=1
     end select
             write (unit+3,"(z16.16)") loc(d%n%n )
     if (k/=1) print *,920
     d%n%n%d1=3
end subroutine
     subroutine s1
     type (e) :: v,u
call alloc(v,100)
call alloc(u,200)

     u=v  

     if (u%d1/=1) print *,10001
     if (u%n%d1/=2) print *,10002
     if (u%n%n%d1/=3) print *,10003
     if (allocated(u%n%n%n)) print *,10004
     !!!deallocate(v)
     !!!deallocate(u)
     end
     end module mod
use mod
do n=1,120
      call s1
end do
!call chk(101)
!call chk(102)
!call chk(103)
!call chk(111)
!call chk(112)
!!call chk(113)
!call chk(201)
!call chk(202)
!call chk(203)
!!call chk(211)
!call chk(212)
!call chk(213)
     print *,'sngg029r : pass'
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
