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
     class (b),allocatable :: d(:)
     integer::unit
     d  (2)%d1=1
     k=0
     select type(p=>d)
       type is(e)
       k=1
       allocate(p(2)%c(2),source=cp )
             write (unit+12,"(z16.16)") loc(p(2)%c  )
     end select
     if (k/=1) print *,9202
     allocate(b::d  (2)%n(2))
     call ss1(d  (2)%n,unit)
  end
  subroutine ss1(g,unit)
     class (b),allocatable :: g(:)
     integer::unit
     g  (2)%d1=2
     allocate(b::g  (2)%n(2))
     call ss2(g  (2)%n,unit)
  end
  subroutine ss2(f,unit)
     class (b),allocatable :: f(:)
     integer::unit
     f  (2)%d1=3
     allocate(b::f  (2)%n(2))
     call ss3(f  (2)%n,unit)
  end 
  subroutine ss3(h,unit)
     class (b),allocatable :: h(:)
     integer::unit
     h  (2)%d1=4
  end 
 end

     subroutine s1
     use mod
     class (b),allocatable :: v(:),u(:)
     allocate(e::v(2))
     v%d1=1
     allocate(e::u(3))
call alloc(v,100)
call alloc(u,200)

     u=v  

     if (u(2)%d1/=1) print *,10001
     if (u(2)%n(2)%d1/=2) print *,10002
     if (u(2)%n(2)%n(2)%d1/=3) print *,10003
     if (u(2)%n(2)%n(2)%n(2)%d1/=4) print *,10004
     if (allocated(u(2)%n(2)%n(2)%n(2)%n)) print *,10005
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(112)
!call chk(212)
     print *,'sngg112r : pass'
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
