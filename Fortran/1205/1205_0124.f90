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
     class (*) :: d
     integer::unit
       k=0
     select type(p=>d)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+11,"(z16.16)") loc(p%c  )
     p%d1=1
     allocate(e::p%n)
     select type(q=>p%n)
      type is(e)
       allocate(q%c,source=cp )
             write (unit+12,"(z16.16)") loc(q%c  )
     q  %d1=2
     allocate(e::q  %n)
     select type(g=>q  %n)
      type is(e)
       allocate(g%c,source=cp )
             write (unit+13,"(z16.16)") loc(g%c  )
       k=1
     g    %d1=3
     end select
     end select
     end select
     if (k/=1) print *,920
end subroutine
     subroutine s1(v,u)
     class (*) :: v,u
call alloc(v,100)
call alloc(u,200)

  k=0
    select type(u)
     type is(e)
    select type(v)
     type is(e)
     u%d1=v%d1
     u%n =v%n
     u%c =v%c
     k=1
    end select
    end select
  if (k/=1) print *,2020

  k=0
     select type(p=>u)
      type is(e)
     if (p%d1/=1) print *,10001
     select type(q=>p%n)
      type is(e)
     if (q  %d1/=2) print *,10002
     select type(w=>q%n)
      type is(e)
     if (w    %d1/=3) print *,10003
     if (allocated(w    %n)) print *,10004
     k=1
     end select
     end select
     end select
     if (k/=1) print *,925
  k=0
    select type(u)
     type is(e)
     deallocate(u%n)
     deallocate(u%c)
     k=1
    end select
  if (k/=1) print *,2021
  k=0
    select type(v)
     type is(e)
     deallocate(v%n)
     deallocate(v%c)
     k=1
    end select
  if (k/=1) print *,2022
     end
     subroutine ss1
     class (*),allocatable :: u,v
     allocate(e::v,u)
     call s1(v,u)
     end
     end module mod
use mod
do n=1,120
      call ss1
end do
!call chk(111)
!call chk(112)
!call chk(113)
!call chk(211)
!call chk(212)
!call chk(213)
     print *,'sngg171r : pass'
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
