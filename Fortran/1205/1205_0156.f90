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
     type  (e) :: d
     integer::unit
     k=0
       allocate(d%c,source=cp )
             write (unit+11,"(z16.16)") loc(d%c  )
     d%d1=1
     allocate(e::d%n)
     select type(p=>d%n)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+12,"(z16.16)") loc(p%c  )
     p  %d1=2
     allocate(e::p  %n)
     select type(q=>p  %n)
      type is(e)
       allocate(q%c,source=cp )
             write (unit+13,"(z16.16)") loc(q%c  )
       k=1
     q    %d1=3
     end select
     end select
     if (k/=1) print *,920
end subroutine
     subroutine s1
type g
     type (e) :: v,u
end type
class(g),allocatable::h(:,:)
m=2
allocate(h(m,m))
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v

      k=0
     if (h(m,m)%u%d1/=1) print *,10001
     select type(p=>h(m,m)%u%n)
      type is(e)
     if (p         %d1/=2) print *,10002
     select type(q=>p  %n)
      type is(e)
     if (q           %d1/=3) print *,10003
     if (allocated(q           %n)) print *,10004
     k=1
     end select
     end select
     if (k/=1) print *,9202
     !!!deallocate(h(m,m)%v)
     !!!deallocate(u)
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
     print *,'sngg203r : pass'
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
