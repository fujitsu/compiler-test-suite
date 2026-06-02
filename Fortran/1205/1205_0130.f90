     module mod
       type :: b
          integer::d1
          type (e),allocatable::n
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
     k=0
     select type(d)
      type is(e)
       allocate(d%c,source=cp )
             write (unit+11,"(z16.16)") loc(d%c  )
     d%d1=1
     allocate(e::d%n)
     !select type(p=>d%n)
     ! type is(e)
       allocate(d%n%c,source=cp )
             write (unit+12,"(z16.16)") loc(d%n%c  )
     !end select
     d%n%d1=2
     allocate(e::d%n%n)
     !select type(p=>d%n%n)
     ! type is(e)
       allocate(d%n%n%c,source=cp )
             write (unit+13,"(z16.16)") loc(d%n%n%c  )
       k=1
    ! end select
     d%n%n%d1=3
     end select
     if (k/=1) print *,920
end subroutine
     subroutine s1
     class (*),allocatable :: v,u
call alloc(v,100)
call alloc(u,200)

     u=v

k=0
     select type(u   )
      type is(e)
     if (u%d1/=1) print *,10001
     if (u%n%d1/=2) print *,10002
     if (u%n%n%d1/=3) print *,10003
     if (allocated(u%n%n%n)) print *,10004
k=1
     end select
 if (k/=1) print *,2893
     deallocate(v)
     !!!deallocate(u)
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
     print *,'sngg177r : pass'
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
