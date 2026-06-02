     module mod
       integer,parameter::m=10000
       type :: base
         integer(8)::d1(2)
          character(:),allocatable::n
       end type
       type, extends(base) :: ext
         integer(8)::d2(3)
          character(:),allocatable::na
       end type
       type, extends(ext) :: e
         integer(8)::d3(4)
          character(:),allocatable::nam
       end type
       type x
         integer(8)::d
         class(*   ),allocatable::v
         integer(8)::dx(m)
       end type
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: yv
     allocate(x::yv)
             write (64,"(z16.16)") loc(yv )

    select type(yv)
      type is(x)
      allocate(ext::yv%v)
    select type(c=>yv%v)
      type is(ext)
             write (61,"(z16.16)") loc(c   %d1  )
      c   %d1(1)=1
    end select
    k=0
    select type(p=>yv%v)
      type is(ext)
        k=1
          allocate(p   %n,source=b)
             write (62,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=b)
             write (63,"(z16.16)") loc(p   %na  )
    end select
    end select
    if (k/=1) print *,6738

     end
use mod
do n=1,30
      call s1
end do
!call chk(21)
!call chk(22)
!call chk(23)
!call chk(32)
     !print *,'sngg997q : pass'
     print *,'sngg948s : pass'
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
