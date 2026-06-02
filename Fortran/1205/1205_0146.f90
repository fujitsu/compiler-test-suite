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
     type  (b),allocatable :: d
     integer::unit
     allocate(b::d)
     d%d1=1
     allocate(b::d%n)
select type(p=>d%n)
 type is(b)
     p  %d1=2
     allocate(e::p  %n)
     select type(q=>p  %n)
      type is(e)
       allocate(q%c,source=cp )
             write (unit+13,"(z16.16)") loc(q%c  )
     q %   d1=3
     end select
     end select
end subroutine
     end module mod

     subroutine s1
     use mod
type g
     type  (b),allocatable :: v,u
end type
type(g)::h(2,2)
m=2
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v

     if (h(m,m)%u%d1/=1) print *,10001
k=0
select type(p=>h(m,m)%u%n)
 type is(b)
     if (p         %d1/=2) print *,10002
     select type(q=>p  %n)
      type is(e)
     if (q           %d1/=3) print *,10003
     if (allocated(q           %n)) print *,10004
k=1
     end select
     end select
if (k/=1) print *,2893
     deallocate(h(m,m)%v)
     !!!deallocate(h(m,m)%u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(113)
!call chk(213)
     print *,'sngg193r : pass'
     end
     subroutine  chk(k)
     character(16)::n1,n2
     rewind (k)
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=100) n2
       if (n1==n2) return
     end do
  100 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=200) n2
       if (n1==n2) return
     end do
  200 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=300) n2
       if (n1==n2) return
     end do
  300 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=400) n2
       if (n1==n2) return
     end do
  400 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=500) n2
       if (n1==n2) return
     end do
  500 print *,"Please check UNIT",k
     end
