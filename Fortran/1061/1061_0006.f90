     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
          character(:),allocatable::c1
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c2
       end type
integer::m=3
character(*),parameter::a=repeat('a',1000)
contains
subroutine alc(v,u)
     class (b),allocatable :: v(:)
     integer::u
np=0
nq=0
nr=0
do nw=1,m
     v(nw)%d1=nw
     allocate(b::v(nw)%n(m))
     allocate(   v(nw)%c1,source=a)
             write (u+6200+nw,"(z16.16)") loc(v(nw)%c1   )
do nx=1,m
np=np+1
     v(nw)%n(nx)%d1=np
     allocate(b::v(nw)%n(nx)%n(m))
     allocate(   v(nw)%n(nx)%c1,source=a)
             write (u+6300+np,"(z16.16)") loc(v(nw)%n(nx)%c1 )
do ny=1,m
nq=nq+1
     v(nw)%n(nx)%n(ny)%d1=nq
     allocate(b::v(nw)%n(nx)%n(ny)%n(m))
     allocate(   v(nw)%n(nx)%n(ny)%c1,source=a)
             write (u+6400+nq,"(z16.16)") loc(v(nw)%n(nx)%n(ny)%c1)
do nz=1,m
nr=nr+1
     v(nw)%n(nx)%n(ny)%n(nz)%d1=nr
     allocate(   v(nw)%n(nx)%n(ny)%n(nz)%c1,source=a)
             write (u+6500+nr,"(z16.16)") loc(v(nw)%n(nx)%n(ny)%n(nz)%c1)
end do
end do
end do
end do
end
     end

     subroutine s1
     use mod
     class (b),allocatable :: v(:),u(:)

     allocate(b::v(m))
            write (6601,"(z16.16)") loc(v     )
call alc(v,1000)

allocate(e::u(m))
            write (6701,"(z16.16)") loc(v     )
call alc(u,2000)

u=v

     !!!!!deallocate(v%n(2)%n)
     deallocate(v)
     end
use mod
do n=1,20
      call s1
end do
!do kk=1000,2000,1000
!call chk_ex(kk+101)
!do n=201,203
!call chk_ex(kk+n)
!end do
!do n=301,309
!call chk_ex(kk+n)
!end do
!do n=401,427
!call chk_ex(kk+n)
!end do
!do n=501,500+(27*3)
!call chk_ex(kk+n)
!end do
!     end do
     print *,'sngg094r : pass'
     end
   subroutine  chk_ex(k)
     character(16)::x(1000)
     integer(8)::g1,g2
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
        read(x(nn),'(z16)') g1
        read(x(nnn),'(z16)') g2
        if (g1>g2) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end
