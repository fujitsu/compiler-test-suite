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
     end module mod

     subroutine s1
     use mod
     class (b),allocatable :: v(:),u(:)
     allocate(e::v(2))
             write (11,"(z16.16)") loc(v     )
     select type(v)
      type is(e)
       allocate(v(2)%c(2),source=cp )
             write (21,"(z16.16)") loc(v(2)%c  )
     end select
     v(2)%d1=1
     allocate(e::v(2)%n(2))
     select type(p=>v(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=cp )
             write (22,"(z16.16)") loc(p(2)%c  )
     end select
             write (12,"(z16.16)") loc(v(2)%n   )
     v(2)%n(2)%d1=2
     allocate(e::v(2)%n(2)%n(2))
     select type(p=>v(2)%n(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=cp )
             write (23,"(z16.16)") loc(p(2)%c  )
     end select
             write (13,"(z16.16)") loc(v(2)%n(2)%n )
     v(2)%n(2)%n(2)%d1=3

     u=v

     if (u(2)%d1/=1) print *,10001
     if (u(2)%n(2)%d1/=2) print *,10002
     if (u(2)%n(2)%n(2)%d1/=3) print *,10003
     if (allocated(u(2)%n(2)%n(2)%n)) print *,10004
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,120
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(21)
!call chk(22)
!call chk(23)
     print *,'sngg100r : pass'
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
