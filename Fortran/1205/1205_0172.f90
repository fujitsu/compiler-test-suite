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
     class (*),allocatable :: v(:)!!!,u(:)
     allocate(b::v(2))
select type(v)
  class is(b)
             write (11,"(z16.16)") loc(v     )
     v(2)%d1=1
     allocate(b::v(2)%n(2))
             write (12,"(z16.16)") loc(v(2)%n   )
select type(p=>v(2)%n)
  class is(b)
     p     (2)%d1=2
     allocate(b::   p  (2)%n(2))
             write (13,"(z16.16)") loc(p     (2)%n )
select type(q=>p(2)%n)
  class is(b)
     q          (2)%d1=3
end select
end select
end select

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
     print *,'sngg219r : pass'
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
