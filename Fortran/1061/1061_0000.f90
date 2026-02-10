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
integer::m=3
     end module mod

     subroutine s1
     use mod
     class (b),allocatable :: v(:)
     allocate(b::v(m))
            write (101,"(z16.16)") loc(v     )
np=0
nq=0
nr=0
do nw=1,m
     v(nw)%d1=nw
     allocate(b::v(nw)%n(m))
             write (200+nw,"(z16.16)") loc(v(nw)%n   )
do nx=1,m
np=np+1
     v(nw)%n(nx)%d1=np
     allocate(b::v(nw)%n(nx)%n(m))
             write (300+np,"(z16.16)") loc(v(nw)%n(nx)%n )
do ny=1,m
nq=nq+1
     v(nw)%n(nx)%n(ny)%d1=nq
     allocate(b::v(nw)%n(nx)%n(ny)%n(m))
             write (400+nq,"(z16.16)") loc(v(nw)%n(nx)%n(ny)%n )
do nz=1,m
nr=nr+1
     v(nw)%n(nx)%n(ny)%n(nz)%d1=nr
end do
end do
end do
end do

     !!!!!deallocate(v%n(2)%n)
     deallocate(v)
     end
use mod
do n=1,20
      call s1
end do
call chk_ex(101)
do n=201,203
call chk_ex(n)
end do
do n=301,309
call chk_ex(n)
end do
do n=401,427
call chk_ex(n)
end do
     print *,'sngg088r : pass'
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
