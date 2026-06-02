     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          integer::dd2(1000)
       end type
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: v(:),u(:)
     m=2
     allocate(b::v(2))
             write (11,"(z16.16)") loc(v     )
  select type(v)
  class is(b)
     v(m)%d1=1
     allocate(b::v(2)%n(m))
             write (12,"(z16.16)") loc(v(2)%n   )
  select type(p=>v(m)%n)
  class is(b)
     p     (m)%d1=2
     allocate(b::p     (m)%n(m))
             write (13,"(z16.16)") loc(p     (m)%n )
  select type(q=>p(m)%n)
  class is(b)
     q             %d1=3
end select
end select
end select

     u=v

k=0
  select type(u)
  class is(b)
     if (u(m)%d1/=1) print *,10001
  select type(p=>u(m)%n)
  class is(b)
     if (p(m)     %d1/=2) print *,10002
  select type(q=>p(m)%n)
  class is(b)
     if (q          (m)%d1/=3) print *,10003
     if (allocated(q          (m)%n)) print *,10004
k=1
end select
end select
end select
 if (k/=1) print *,28364
     deallocate(v)
     deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
     print *,'sngg217r : pass'
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
