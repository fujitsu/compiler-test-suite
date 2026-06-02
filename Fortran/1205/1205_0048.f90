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
     type  (e),allocatable :: d
     integer::unit
     allocate(e::d)
!     select type(p=>d)
!      type is(e)
       allocate(d%c,source=cp )
             write (unit+11,"(z16.16)") loc(d%c  )
!     end select
             write (unit+1,"(z16.16)") loc(d     )
     d%d1=1
     allocate(e::d%n)
             write (unit+2,"(z16.16)") loc(d%n   )
    ! select type(p=>d%n)
    !  type is(e)
       allocate(d%n%c,source=cp )
             write (unit+12,"(z16.16)") loc(d%n%c  )
       k=1
     !end select
     if (k/=1) print *,910
     d%n%d1=2
     allocate(e::d%n%n)
     k=0
     !select type(p=>d%n%n)
     ! type is(e)
       allocate(d%n%n%c,source=cp )
             write (unit+13,"(z16.16)") loc(d%n%n%c  )
       k=1
     !end select
             write (unit+3,"(z16.16)") loc(d%n%n )
     if (k/=1) print *,920
     d%n%n%d1=3
end subroutine
     subroutine s1
type g
     type (e),allocatable :: v,u
end type
class(g),allocatable::h(:,:)
m=2
allocate(h(m,m))
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v  

     if (h(m,m)%u%d1/=1) print *,10001
     if (h(m,m)%u%n%d1/=2) print *,10002
     if (h(m,m)%u%n%n%d1/=3) print *,10003
     if (allocated(h(m,m)%u%n%n%n)) print *,10004
     deallocate(h(m,m)%v,h(m,m)%u)
     !!!deallocate(u)
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
!call chk(112)
!call chk(113)
!call chk(201)
!call chk(202)
!call chk(203)
!call chk(211)
!call chk(212)
!call chk(213)
     print *,'sngg059r : pass'
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
