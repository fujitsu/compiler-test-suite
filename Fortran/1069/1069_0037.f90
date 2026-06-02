     module mod
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
       end type
       integer,parameter::m=10000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1
     use mod
     type (x) :: xv,yv
      allocate(e ::xv%v)
    k=0
    select type(p=>xv%v)
      type is(e)
        k=1
             write (2811,"(z16.16)") loc(xv%v   )
          allocate(p%n,source=a)
             write (2812,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=a)
             write (2813,"(z16.16)") loc(p   %na  )
          allocate(p   %nam,source=a)
             write (2814,"(z16.16)") loc(p   %nam )
       end select
    if (k/=1) print *,6733

      allocate(ext::yv%v)
    select type(p=>yv%v)
      type is(ext)
             write (2821,"(z16.16)") loc(p   %d1  )
      p   %d1(1)=1
       end select
    k=0
    select type(p=>yv%v)
      type is(ext)
        k=1
          allocate(p   %n,source=b)
             write (2822,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=b)
             write (2823,"(z16.16)") loc(p   %na  )
    end select
    if (k/=1) print *,6738

      xv=yv

    k=0
    select type(p=>yv%v)
      type is(ext)
        k=1
          p   %n=c
          p   %na=c
    end select
    if (k/=1) print *,67382
    k=0
    select type(p=>xv%v)
      type is(ext)
        k=1
        if (  p   %n/=b) print *,1029
        if (  p   %na/=b) print *,10292
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
     print *,'sngg995q : pass'
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
