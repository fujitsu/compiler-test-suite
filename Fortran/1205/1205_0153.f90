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
     subroutine s1
type g
     class (*),allocatable :: v,u
end type
type(g)::h(2,2)
m=2
!call alloc(v,100)
!call alloc(u,200)

!     if (allocated(v)) then
!     u=v
!     end if

!     if (u%d1/=1) print *,10001
!     if (u%n%d1/=2) print *,10002
!     if (u%n%n%d1/=3) print *,10003
!     if (allocated(u%n%n%n)) print *,10004
     if (allocated(h(m,m)%v)) then
     deallocate(h(m,m)%v)
     end if
     end
     end module mod
use mod
do n=1,20
      call s1
end do
!call chk(101)
!call chk(102)
!call chk(103)
!call chk(111)
!!call chk(112)
!!call chk(113)
!call chk(201)
!call chk(202)
!call chk(203)
!call chk(211)
!!call chk(212)
!!call chk(213)
     print *,'sngg200r : pass'
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
