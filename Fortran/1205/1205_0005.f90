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
     type  (b),allocatable :: d
     integer::unit
     allocate(b::d)
             write (unit+1,"(z16.16)") loc(d     )
     d%d1=1
     allocate(b::d%n)
             write (unit+2,"(z16.16)") loc(d%n   )
     d%n%d1=2
     allocate(e::d%n%n)
     select type(p=>d%n%n)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+13,"(z16.16)") loc(p%c  )
     end select
             write (unit+3,"(z16.16)") loc(d%n%n )
     d%n%n%d1=3
end subroutine
     end module mod

     subroutine s1
     use mod
     type  (b),allocatable :: v,u
call alloc(v,100)
call alloc(u,200)

     u=v  

     if (u%d1/=1) print *,10001
     if (u%n%d1/=2) print *,10002
     if (u%n%n%d1/=3) print *,10003
     if (allocated(u%n%n%n)) print *,10004
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(101)
!call chk(102)
!call chk(103)
!!call chk(113)
!call chk(201)
!call chk(202)
!call chk(203)
!call chk(213)
     print *,'sngg016r : pass'
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
