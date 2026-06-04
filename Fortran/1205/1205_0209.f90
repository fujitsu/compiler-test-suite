     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     class (b),allocatable :: d(:)
     integer::unit
     allocate(b::d(2))
     d(2)%d1=1
     allocate(b::d(2)%n(2))
     call ss2(d(2)%n,unit)
end
subroutine ss2(d,unit)
     class (*),allocatable :: d(:)
     integer::unit
  select type(d)
    class is(b)
     d(2)%d1=2
     allocate(e::d(2)%n(2))
     select type(p=>d(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=[cp,cp] )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     end select
     call ss3(d(2)%n,unit)
     end select
end subroutine
subroutine ss3(d,unit)
     class (*),allocatable :: d(:)
     integer::unit
  select type(d)
    class is(b)
     d(2)%d1=3
     allocate(e::d(2)%n(2))
     select type(p=>d(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=[cp,cp] )
             write (unit+14,"(z16.16)") loc(p(2)%c  )
     p     (2)%d1=4
     end select
     end select
end subroutine
     end module mod

     subroutine s1
     use mod
type g
     class (b),allocatable :: v(:),u(:)
end type
type(g)::h(2,2)
m=2
call alloc(h(m,m)%v,100)
call alloc(h(m,m)%u,200)

     h(m,m)%u=h(m,m)%v

     if (h(m,m)%u(2)%d1/=1) print *,10001
     select type(p=>h(m,m)%u(2)%n)
      class is(b)
     if (p            (2)%d1/=2) print *,10002
     select type(q=>p       (2)%n)
      class is(b)
     if (q                 (2)%d1/=3) print *,10003
     select type(w=>q       (2)%n)
      class is(b)
     if (w                      (2)%d1/=4) print *,10004
     if (allocated(w                      (2)%n)) print *,10005
     end select
     end select
     end select
     deallocate(h(m,m)%v)
     !!!deallocate(h(m,m)%u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(113)
!call chk(114)
!call chk(213)
!call chk(214)
     print *,'sngg256r : pass'
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
