     module mod
       type :: b
          integer::d1
          type (e),pointer    ::n
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
     d%d1=1
     allocate(e::d%n)
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
     if (k/=1) print *,920
     d%n%n%d1=3
     d%n%n%n => null()
end subroutine
     subroutine s1
     type (e),allocatable :: v,u
call alloc(v,100)
call alloc(u,200)

     u=v

     if (u%d1/=1) print *,10001
     if (u%n%d1/=2) print *,10002
     if (u%n%n%d1/=3) print *,10003
     if (associated(u%n%n%n)) print *,10004
     deallocate(v)
     !!!deallocate(u)
     end
     end module mod
use mod
do n=1,20
      call s1
end do
     print *,'sngg176r : pass'
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
