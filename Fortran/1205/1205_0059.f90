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
     end module mod

     subroutine s1
     use mod
     class (b),allocatable :: v(:),u(:)
     m=2
     allocate(b::v(2))
             write (11,"(z16.16)") loc(v     )
     v(m)%d1=1
     allocate(b::v(2)%n(m))
             write (12,"(z16.16)") loc(v(2)%n   )
     v(m)%n(m)%d1=2
     allocate(b::v(m)%n(m)%n(m))
             write (13,"(z16.16)") loc(v(m)%n(m)%n )
     v(m)%n(m)%n(m)%d1=3

     u=v

     if (u(m)%d1/=1) print *,10001
     if (u(m)%n(m)%d1/=2) print *,10002
     if (u(m)%n(m)%n(m)%d1/=3) print *,10003
     if (allocated(u(m)%n(m)%n(m)%n)) print *,10004
             write (21,"(z16.16)") loc(u     )
             write (22,"(z16.16)") loc(u(2)%n   )
             write (23,"(z16.16)") loc(u(m)%n(m)%n )
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(21)
!call chk(22)
!call chk(23)
     print *,'sngg070r : pass'
     end 
   subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end
