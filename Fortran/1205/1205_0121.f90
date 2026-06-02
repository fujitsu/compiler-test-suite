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
     class (*),allocatable :: d
     integer::unit
     allocate(e::d)
     select type(p=>d)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+11,"(z16.16)") loc(p%c  )
     p%d1=1
     allocate(b::p%n)
     select type(q=>p%n)
      type is(b)
     q  %d1=2
     allocate(b::q  %n)
     select type(w=>q%n)
      type is(b)
     w   %d1=3
     end select
     end select
     end select
end subroutine
     subroutine s1
     class (*),allocatable :: v,u
call alloc(v,100)
call alloc(u,200)

     u=v

k=0
     select type(u)
      type is(e)
     if (u%d1/=1) print *,10001
     select type(q=>u%n)
      type is(b)
     if (q  %d1/=2) print *,10002
     select type(w=>q%n)
      type is(b)
     if (w    %d1/=3) print *,10003
     if (allocated(w    %n)) print *,10004
k=1
     end select
     end select
     end select
     if (k/=1) print *,920
     deallocate(v)
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
     print *,'sngg168r : pass'
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
