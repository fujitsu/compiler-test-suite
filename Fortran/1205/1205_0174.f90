     module mod
       type :: b
          integer::d1
          class(b),pointer    ::n(:)
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          integer::dd2(1000)
       end type
     end module mod

     subroutine s1
     use mod
     class (b),allocatable :: v
     allocate(b::v)
             write (11,"(z16.16)") loc(v     )
     v%d1=1
     allocate(b::v%n(1))
             write (12,"(z16.16)") loc(v%n   )
     v%n(1)%d1=2
     allocate(b::v%n(1)%n(2))
             write (13,"(z16.16)") loc(v%n(1)%n )
     v%n(1)%n(2)%d1=3

     !!!!!deallocate(v%n(2)%n)
     deallocate(v)
     end
use mod
do n=1,20
      call s1
end do
     print *,'sngg221r : pass'
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
