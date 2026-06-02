     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     type  (b),allocatable :: d(:)
     integer::unit
     d  (2)%d1=1
     allocate(b::d  (2)%n(2))
     call ss1(d  (2)%n,unit)
  end
  subroutine ss1(g,unit)
     class (b),allocatable :: g(:)
     integer::unit
     g  (2)%d1=2
     allocate(e::g  (2)%n(2))
     call ss2(g  (2)%n,unit)
  end
  subroutine ss2(f,unit)
     class (b),allocatable :: f(:)
     integer::unit
     f  (2)%d1=3
     allocate(e::f  (2)%n(2))
     select type(p=>f)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+13,"(z16.16)") loc(p(2)%c  )
     end select
     call ss3(f  (2)%n,unit)
  end 
  subroutine ss3(h,unit)
     class (b),allocatable :: h(:)
     integer::unit
     h  (2)%d1=4
     allocate(e::h  (2)%n(2))
     select type(p=>h)
       type is(e)
       allocate(p(2)%c(2),source=cp )
             write (unit+14,"(z16.16)") loc(p(2)%c  )
     end select
  end 
 end

     subroutine s1
     use mod
     type  (b),allocatable :: v(:),u(:)
     allocate(b::v(2))
     v%d1=1
     allocate(b::u(3))
call alloc(v,100)
call alloc(u,200)

     u=v  

     if (u(2)%d1/=1) print *,10001
     if (u(2)%n(2)%d1/=2) print *,10002
     if (u(2)%n(2)%n(2)%d1/=3) print *,10003
     if (u(2)%n(2)%n(2)%n(2)%d1/=4) print *,10004
     if (.not.allocated(u(2)%n(2)%n(2)%n(2)%n)) print *,10005
     if (allocated(u(2)%n(2)%n(2)%n(2)%n(2)%n)) print *,100056
     deallocate(v,u)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(113)
!call chk(114)
!call chk(213)
!call chk(214)
     print *,'sngg111r : pass'
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
