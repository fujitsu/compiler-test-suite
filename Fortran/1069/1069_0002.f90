     module mod
       integer,parameter::m=1000
     type w
          character(:),allocatable::w01
     end type
     type,extends(w)::ww
          character(:),allocatable::w02
     end type
       type :: b1
         integer(8)::z00(6)
          class(*),allocatable::z01
          class(*),allocatable::z02
       end type
       type, extends(b1) :: b2
         integer(8)::z10(7)
          class(*),allocatable::z11
          class(*),allocatable::z12
       end type
       type, extends(b2) :: b3
         integer(8)::d20(8)
          class(*),allocatable::z21
          class(*),allocatable::z22
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
             write (131,"(z16.16)") loc(xv )
             write (132,"(z16.16)") loc(yv )
    k=0
select type(xv)
 type is(x)
      allocate(e ::xv%v)
    select type(p=>xv%v)
      type is(e)
        k=1
             write (111,"(z16.16)") loc(xv%v   )
          allocate(p%n,source=a)
             write (112,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=a)
             write (113,"(z16.16)") loc(p   %na  )
          allocate(p   %nam,source=a)
             write (114,"(z16.16)") loc(p   %nam )
     allocate(b3::p   %b2v)
    kk=0
      select type(q=>p%b2v)
      type is(b3)
        kk=1
         write (141,"(z16.16)") loc(q      )
          allocate(ww::q%z01)
        kkk=0
          select type(r=>q%z01)
            type is(ww)
        kkk=1
              allocate(r%w01,source=a)
              write (142,"(z16.16)") loc(r %w01  )
              allocate(r%w02,source=a)
              write (143,"(z16.16)") loc(r %w02  )
           end select
        if (kkk/=1) print *,862
          allocate(ww::q%z02)
        kkk=0
          select type(r=>q%z02)
            type is(ww)
        kkk=1
              allocate(r%w01,source=a)
              write (144,"(z16.16)") loc(r %w01  )
              allocate(r%w02,source=a)
              write (145,"(z16.16)") loc(r %w02  )
           end select
        if (kkk/=1) print *,86223
          allocate(ww::q%z11)
        kkk=0
          select type(r=>q%z11)
            type is(ww)
        kkk=1
              allocate(r%w01,source=a)
              write (146,"(z16.16)") loc(r %w01  )
              allocate(r%w02,source=a)
              write (147,"(z16.16)") loc(r %w02  )
           end select
        if (kkk/=1) print *,8624
          allocate(ww::q%z12)
        kkk=0
          select type(r=>q%z12)
            type is(ww)
        kkk=1
              allocate(r%w01,source=a)
              write (148,"(z16.16)") loc(r %w01  )
              allocate(r%w02,source=a)
              write (149,"(z16.16)") loc(r %w02  )
           end select
        if (kkk/=1) print *,86225
          allocate(ww::q%z21)
        kkk=0
          select type(r=>q%z21)
            type is(ww)
        kkk=1
              allocate(r%w01,source=a)
              write (150,"(z16.16)") loc(r %w01  )
              allocate(r%w02,source=a)
              write (151,"(z16.16)") loc(r %w02  )
           end select
        if (kkk/=1) print *,8664
          allocate(ww::q%z22)
        kkk=0
          select type(r=>q%z22)
            type is(ww)
        kkk=1
              allocate(r%w01,source=a)
              write (152,"(z16.16)") loc(r %w01  )
              allocate(r%w02,source=a)
              write (153,"(z16.16)") loc(r %w02  )
           end select
        if (kkk/=1) print *,86275
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
             write (121,"(z16.16)") loc(p   %d1  )
      p   %d1(1)=1
        k=1
          allocate(p   %n,source=b)
             write (122,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=b)
             write (123,"(z16.16)") loc(p   %na  )
     allocate(b3::p   %b2v)
    kk=0
      select type(q=>p%b2v)
      type is(b3)
        kk=1
        kkk=0
          allocate(ww::q%z01)
          select type(r=>q%z01)
            type is(ww)
        kkk=1
          allocate(r%w01,source=b)
          allocate(r%w02,source=b)
          end select
        if (kkk/=1) print *,765
        kkk=0
          allocate(ww::q%z02)
          select type(r=>q%z02)
            type is(ww)
        kkk=1
          allocate(r%w01,source=b)
          allocate(r%w02,source=b)
          end select
        if (kkk/=1) print *,7652
        kkk=0
          allocate(ww::q%z11)
          select type(r=>q%z11)
            type is(ww)
        kkk=1
          allocate(r%w01,source=b)
          allocate(r%w02,source=b)
          end select
        if (kkk/=1) print *,7651
        kkk=0
          allocate(ww::q%z12)
          select type(r=>q%z12)
            type is(ww)
        kkk=1
          allocate(r%w01,source=b)
          allocate(r%w02,source=b)
          end select
        if (kkk/=1) print *,7751
        kkk=0
          allocate(ww::q%z21)
          select type(r=>q%z21)
            type is(ww)
        kkk=1
          allocate(r%w01,source=b)
          allocate(r%w02,source=b)
          end select
        if (kkk/=1) print *,7691
        kkk=0
          allocate(ww::q%z22)
          select type(r=>q%z22)
            type is(ww)
        kkk=1
          allocate(r%w01,source=b)
          allocate(r%w02,source=b)
          end select
        if (kkk/=1) print *,7661
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
        kkk=0
          select type(r=>q%z01)
            type is(ww)
        kkk=1
          r%w01=c
          r%w02=c
          end select
        if (kkk/=1) print *,10765
        kkk=0
          select type(r=>q%z02)
            type is(ww)
        kkk=1
          r%w01=c
          r%w02=c
          end select
        if (kkk/=1) print *,107652
        kkk=0
          select type(r=>q%z11)
            type is(ww)
        kkk=1
          r%w01=c
          r%w02=c
          end select
        if (kkk/=1) print *,107651
        kkk=0
          select type(r=>q%z12)
            type is(ww)
        kkk=1
          r%w01=c
          r%w02=c
          end select
        if (kkk/=1) print *,107751
        kkk=0
          select type(r=>q%z21)
            type is(ww)
        kkk=1
          r%w01=c
          r%w02=c
          end select
        if (kkk/=1) print *,107691
        kkk=0
          select type(r=>q%z22)
            type is(ww)
        kkk=1
          r%w01=c
          r%w02=c
          end select
        if (kkk/=1) print *,107661
       end select
    if (kk/=1) print *,67332
    end select
    end select
    if (k/=1) print *,6738

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
        kkk=0
          select type(r=>q%z01)
            type is(ww)
        kkk=1
          if (r%w01/=b) print *,93011
          if (r%w02/=b) print *,93012
          end select
        if (kkk/=1) print *,207691
        kkk=0
          select type(r=>q%z02)
            type is(ww)
        kkk=1
          if (r%w01/=b) print *,94011
          if (r%w02/=b) print *,94012
          end select
        if (kkk/=1) print *,1076615
        kkk=0
          select type(r=>q%z11)
            type is(ww)
        kkk=1
          if (r%w01/=b) print *,90111
          if (r%w02/=b) print *,90112
          end select
        if (kkk/=1) print *,2076912
        kkk=0
          select type(r=>q%z12)
            type is(ww)
        kkk=1
          if (r%w01/=b) print *,91511
          if (r%w02/=b) print *,91512
          end select
        if (kkk/=1) print *,107661
        kkk=0
          select type(r=>q%z21)
            type is(ww)
        kkk=1
          if (r%w01/=b) print *,90611
          if (r%w02/=b) print *,90612
          end select
        if (kkk/=1) print *,207691
        kkk=0
          select type(r=>q%z22)
            type is(ww)
        kkk=1
          if (r%w01/=b) print *,91711
          if (r%w02/=b) print *,91712
          end select
        if (kkk/=1) print *,107661
      end select
      if (kk/=1) print *,773382
    end select
    end select
    if (k/=1) print *,67383
     end
use mod
do n=1,20
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
!call chk(48)
!call chk(49)
!call chk(50)
!call chk(51)
!call chk(52)
!call chk(53)
     print *,'sngg003r : pass'
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
