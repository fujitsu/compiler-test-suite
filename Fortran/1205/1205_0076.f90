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
     class (b):: d(:)
     integer::unit
     d  (2)%d1=1
     k=0
     select type(p=>d)
       type is(e)
       k=1
       allocate(p(2)%c(2),source=cp )
             write (unit+11,"(z16.16)") loc(p(2)%c  )
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
     subroutine s1(v,u)
     class (b) :: v(:),u(:)
call alloc(v,100)
call alloc(u,200)

  k=0
    select type(u)
     type is(e)
     u(2)%d1=v(2)%d1 
     u(2)%n =v(2)%n  
    select type(v)
     type is(e)
     u(2)%c =v(2)%c  
     k=1
    end select
    end select
  if (k/=1) print *,2020
     

     if (u(2)%d1/=1) print *,10001
     if (u(2)%n(2)%d1/=2) print *,10002
     if (u(2)%n(2)%n(2)%d1/=3) print *,10003
     if (u(2)%n(2)%n(2)%n(2)%d1/=4) print *,10004
     if (allocated(u(2)%n(2)%n(2)%n(2)%n)) print *,10005
     end
     subroutine tt1
     class (b),save,allocatable :: v(:),u(:)
     allocate(e::v(2),u(2))
     call s1(v,u)
     deallocate(u)
     deallocate(v)
     end
     end module mod
use mod
do n=1,20
      call tt1
end do
!call chk(111)
!call chk(211)
     print *,'sngg115r : pass'
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
