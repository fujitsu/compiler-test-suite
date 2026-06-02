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
             write (31,"(z16.16)") loc(xv )
             write (32,"(z16.16)") loc(yv )
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
     allocate(b3::p   %b2v)
    kk=0
      select type(q=>p%b2v)
      type is(b3)
        kk=1
         write (41,"(z16.16)") loc(q      )
          allocate(q%z01,source=a)
           write (42,"(z16.16)") loc(q %z01  )
          allocate(q%z02,source=a)
           write (43,"(z16.16)") loc(q %z02  )
          allocate(q%z11,source=a)
           write (44,"(z16.16)") loc(q %z11  )
          allocate(q%z12,source=a)
           write (45,"(z16.16)") loc(q %z12  )
          allocate(q%z21,source=a)
           write (46,"(z16.16)") loc(q %z21  )
          allocate(q%z22,source=a)
           write (47,"(z16.16)") loc(q %z22  )
       end select
    if (kk/=1) print *,6733
    end select
    end select

    k=0
select type(yv)
  type is(x)
      allocate(ext::yv%v)
    select type(p=>yv%v)
      type is(ext)
             write (21,"(z16.16)") loc(p   %d1  )
      p   %d1(1)=1
        k=1
          allocate(p   %n,source=b)
             write (22,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=b)
             write (23,"(z16.16)") loc(p   %na  )
     allocate(b3::p   %b2v)
    kk=0
      select type(q=>p%b2v)
      type is(b3)
        kk=1
          allocate(q%z01,source=b)
          allocate(q%z02,source=b)
          allocate(q%z11,source=b)
          allocate(q%z12,source=b)
          allocate(q%z21,source=b)
          allocate(q%z22,source=b)
       end select
    if (kk/=1) print *,67332
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
    kk=0
      select type(q=>p%b2v)
      type is(b3)
        kk=1
        q%z01=c
        q%z02=c
        q%z11=c
        q%z12=c
        q%z11=c
        q%z12=c
      end select
      if (kk/=1) print *,67338
    end select
    if (k/=1) print *,67382
    end select
    k=0
select type(xv)
  type is(x)
    select type(p=>xv%v)
      type is(ext)
        k=1
        if (  p   %n/=b) print *,1029
        if (  p   %na/=b) print *,10292
    kk=0
      select type(q=>p%b2v)
      type is(b3)
        kk=1
        if (q%z01/=b) print *,501
        if (q%z02/=b) print *,502
        if (q%z11/=b) print *,511
        if (q%z12/=b) print *,512
        if (q%z21/=b) print *,521
        if (q%z22/=b) print *,522
      end select
      if (kk/=1) print *,77338
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
!call chk(41)
!call chk(42)
!call chk(43)
!call chk(44)
!call chk(45)
!call chk(46)
!call chk(47)
     print *,'sngg002r : pass'
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
