     module mod
       integer,parameter::m=10000
       type :: b1
         integer(8)::z00(6)
          character(:),allocatable::z01
          character(:),allocatable::z02
       end type
       type, extends(b1) :: b2
         integer(8)::z10(7)
          character(:),allocatable::z11
          character(:),allocatable::z12
       end type
       type, extends(b2) :: b3
         integer(8)::d20(8)
          character(:),allocatable::z21
          character(:),allocatable::z22
       end type
       type :: base
         integer(8)::d1(2)
          character(:),allocatable::n
          class(* ),allocatable::b2v
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
             write (17,"(z16.16)") loc(xv )
             write (18,"(z16.16)") loc(yv )
select type(xv)
  type is(x)
      allocate(e ::xv%v)
    k=0
    select type(p=>xv%v)
      type is(e)
        k=1
             write (11,"(z16.16)") loc(p      )
          allocate(p%n,source=a)
             write (12,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=a)
             write (13,"(z16.16)") loc(p   %na  )
          allocate(p   %nam,source=a)
             write (14,"(z16.16)") loc(p   %nam )
    end select
    end select

    k=0
select type(xv)
  type is(x)
    select type(p=>xv%v)
      type is(e)
        k=1
        if (  p   %n/=a) print *,1029
        if (  p   %na/=a) print *,10292
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
     print *,'sngg946s : pass'
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
