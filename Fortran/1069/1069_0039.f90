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
     class (*),allocatable :: xv,yv
     allocate(x::xv,yv)
             write (3031,"(z16.16)") loc(xv )
             write (3032,"(z16.16)") loc(yv )
    k=0
    select type(xv)
      type is(x)
      allocate(e ::xv%v)
    select type(p=>xv%v)
      type is(e)
        k=1
             write (3011,"(z16.16)") loc(xv%v   )
          allocate(p%n,source=a)
             write (3012,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=a)
             write (3013,"(z16.16)") loc(p   %na  )
          allocate(p   %nam,source=a)
             write (3014,"(z16.16)") loc(p   %nam )
       end select
       end select
    if (k/=1) print *,6733

    select type(yv)
      type is(x)
      allocate(ext::yv%v)
    select type(c=>yv%v)
      type is(ext)
             write (3021,"(z16.16)") loc(c   %d1  )
      c   %d1(1)=1
    end select
    k=0
    select type(p=>yv%v)
      type is(ext)
        k=1
          allocate(p   %n,source=b)
             write (3022,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=b)
             write (3023,"(z16.16)") loc(p   %na  )
    end select
    end select
    if (k/=1) print *,6738

      xv=yv

    k=0
    select type(yv)
      type is(x)
    select type(p=>yv%v)
      type is(ext)
        k=1
          p   %n=c
          p   %na=c
    end select
    end select
    if (k/=1) print *,67382
    k=0
    select type(xv)
      type is(x)
    select type(p=>xv%v)
      type is(ext)
        k=1
        if (  p   %n/=b) print *,1029
        if (  p   %na/=b) print *,10292
    end select
    end select
    if (k/=1) print *,67383
     end
use mod
do n=1,30
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(14)
!call chk(21)
!call chk(22)
!call chk(23)
!call chk(31)
!call chk(32)
     print *,'sngg997q : pass'
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
