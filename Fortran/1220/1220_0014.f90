   module mod
       type :: b
          integer::d1
          class(b),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     type  (b),allocatable :: d
     integer::unit
     allocate(b::d)
             write (unit+1,"(z16.16)") loc(d     )
     d%d1=1
     allocate(b::d%n)
             write (unit+2,"(z16.16)") loc(d%n   )
     d%n%d1=2
     allocate(e::d%n%n)
     select type(p=>d%n%n)
      type is(e)
       allocate(p%c,source=cp )
             write (unit+13,"(z16.16)") loc(p%c  )
     end select
             write (unit+3,"(z16.16)") loc(d%n%n )
     d%n%n%d1=3
end subroutine
     end module mod

     subroutine s1
     use mod
     type  (b),allocatable :: v,u
call alloc(v,100)
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(101)
!call chk(102)
!call chk(103)
!call chk(113)
     !print *,'sngg016r : pass'
     print *,'sngg950s : pass'
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
