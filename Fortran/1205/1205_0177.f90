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
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: v(:),u(:)
     allocate(e::v(2))
     select type(v)
      type is(e)
       allocate(v(2)%c(2),source=cp )
             write (21,"(z16.16)") loc(v(2)%c  )
     v(2)%d1=1
     allocate(e::v(2)%n(2))
     select type(p=>v(2)%n)
      type is(e)
       allocate(p(2)%c(2),source=cp )
             write (22,"(z16.16)") loc(p(2)%c  )
     p     (2)%d1=2
     allocate(e::p     (2)%n(2))
     select type(q=>p     (2)%n)
      type is(e)
       allocate(q(2)%c(2),source=cp )
             write (23,"(z16.16)") loc(q(2)%c  )
     q          (2)%d1=3
     end select
     end select
     end select

     u=v

     select type(u)
      type is(e)
     if (u(2)%d1/=1) print *,10001
     select type(p=>u(2)%n)
      type is(e)
     if (p     (2)%d1/=2) print *,10002
     select type(q=>p(2)%n)
      type is(e)
     if (q          (2)%d1/=3) print *,10003
     if (allocated(q          (2)%n)) print *,10004
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
!call chk(21)
!call chk(22)
!call chk(23)
     print *,'sngg224r : pass'
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
