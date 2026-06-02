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
     type  (b),allocatable :: v,u
contains
subroutine alloc(d,unit)
     type  (b),allocatable :: d
     integer::unit
     allocate(b::d)
     d%d1=1
     allocate(b::d%n)
   select type(q=>d%n)
    type is(b)
     q  %d1=2
     allocate(e::q  %n)
     select type(p=>q  %n)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+13,"(z16.16)") loc(p%c  )
     p    %d1=3
     end select
     end select
end subroutine
     subroutine ss1(v,u)
     type  (b),allocatable :: v,u
call alloc(v,100)
call alloc(u,200)

     u=v

     if (u%d1/=1) print *,10001
k=0
   select type(q=>u%n)
    type is(b)
     if (q  %d1/=2) print *,10002
     select type(p=>q  %n)
      type is(e)
     if (p    %d1/=3) print *,10003
     if (allocated(p    %n)) print *,10004
K=1
     end select
     end select
  if (u%d1/=1) print *,10001
     deallocate(v,u)
     !!!deallocate(u)
     end
     subroutine s1
     call ss1(v,u)
     end
     end module mod
use mod
do n=1,20
      call s1
end do
!call chk(113)
!call chk(213)
     print *,'sngg167r : pass'
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
