     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          integer::dd2(1000)
       end type
 contains

     subroutine s1(k)
type w
     integer(8)::d1
     class (b),allocatable :: v(:),u(:)
end type
type(w)::z(k)
mm=2
     allocate(b::z(mm)%v(mm))
             write (11,"(z16.16)") loc(z(mm)%v     )
     z(mm)%v(mm)%d1=1
     allocate(b::z(mm)%v(mm)%n(mm))
             write (12,"(z16.16)") loc(z(mm)%v(mm)%n   )
     z(mm)%v(mm)%n(mm)%d1=2
     allocate(b::z(mm)%v(mm)%n(mm)%n(mm))
             write (13,"(z16.16)") loc(z(mm)%v(mm)%n(mm)%n )
     z(mm)%v(mm)%n(mm)%n(mm)%d1=3

     z(mm)%u=z(mm)%v

     if (z(mm)%u(mm)%d1/=1) print *,10001
     if (z(mm)%u(mm)%n(mm)%d1/=2) print *,10002
     if (z(mm)%u(mm)%n(mm)%n(mm)%d1/=3) print *,10003
     if (allocated(z(mm)%u(mm)%n(mm)%n(mm)%n)) print *,10004
     deallocate(z(mm)%v)
     !!!deallocate(z(2)%u)
     end
end
use mod
do n=1,20
      call s1(2)
end do
!call chk(11)
!call chk(12)
!call chk(13)
     print *,'sngg141r : pass'
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
