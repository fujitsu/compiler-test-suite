     module mod
       integer,parameter::m=1000
     type w
          character(:),allocatable::w01(:)
     end type
     type,extends(w)::ww
          character(:),allocatable::w02(:)
     end type
       type :: b1
         integer(8)::z00(6)
          class(w),allocatable::z01(:)
          class(w),allocatable::z02(:)
       end type
       type, extends(b1) :: b2
         integer(8)::z10(7)
          class(w),allocatable::z11(:)
          class(w),allocatable::z12(:)
       end type
       type, extends(b2) :: b3
         integer(8)::d20(8)
          class(w),allocatable::z21(:)
          class(w),allocatable::z22(:)
       end type
       type :: base
         integer(8)::d1(2)
          character(:),allocatable::n(:)
          class(b2),allocatable::b2v(:)
       end type
       type, extends(base) :: ext
         integer(8)::d2(3)
          character(:),allocatable::na(:)
       end type
       type, extends(ext) :: e
         integer(8)::d3(4)
          character(:),allocatable::nam(:)
       end type
       type x1
         integer(8)::d
         class(base),allocatable::v(:)
         integer(8)::dx(m)
       end type
       type, extends(x1) :: x2
         integer(8)::d10
         character(:),allocatable::xn(:)
       end type
       type, extends(x2) :: x3
         integer(8)::d11(2)
         character(:),allocatable::xna(:)
       end type
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1(nn)
     use mod
     class (x1),allocatable :: xv(:),yv(:)
do nm=2,nn
     allocate(x3::xv(nm))
             write (2571,"(z16.16)") loc(xv )
     select type(y=>xv)
      type is(x3)
        allocate(y(nm)%xn(nm),source='a')
             write (2572,"(z16.16)") loc(y(nm)%xn )
        allocate(y(nm)%xna(nm),source='a')
             write (2573,"(z16.16)") loc(y(nm)%xna)
     end select
     allocate(x2::yv(nm))
             write (2561,"(z16.16)") loc(yv )
     select type(y=>yv)
      type is(x2)
        allocate(y(nm)%xn(nm),source='a')
             write (2562,"(z16.16)") loc(y(nm)%xn )
     end select
      allocate(e ::xv(nm)%v(nm))
    k=0
    select type(p=>xv(nm)%v)
      type is(e)
        k=1
             write (2511,"(z16.16)") loc(xv(nm)%v   )
          allocate(p(nm)%n(nm),source=a)
             write (2512,"(z16.16)") loc(xv(nm)%v(nm)%n   )
          allocate(p(nm)   %na(nm),source=a)
             write (2513,"(z16.16)") loc(p(nm)   %na  )
          allocate(p(nm)   %nam(nm),source=a)
             write (2514,"(z16.16)") loc(p(nm)   %nam )
     allocate(b3::p(nm)   %b2v(nm))
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
         write (2541,"(z16.16)") loc(q      )
          allocate(ww::q(nm)%z01(nm))
        kkk=0
          select type(r=>q(nm)%z01)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2542,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2543,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,862
          allocate(ww::q(nm)%z02(nm))
        kkk=0
          select type(r=>q(nm)%z02)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2544,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2545,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,86223
          allocate(ww::q(nm)%z11(nm))
        kkk=0
          select type(r=>q(nm)%z11)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2546,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2547,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,8624
          allocate(ww::q(nm)%z12(nm))
        kkk=0
          select type(r=>q(nm)%z12)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2548,"(z16.16)") loc(r(nm)%w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2549,"(z16.16)") loc(r(nm)%w02  )
           end select
        if (kkk/=1) print *,86225
          allocate(ww::q(nm)%z21(nm))
        kkk=0
          select type(r=>q(nm)%z21)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2550,"(z16.16)") loc(r(nm)%w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2551,"(z16.16)") loc(r(nm)%w02  )
           end select
        if (kkk/=1) print *,8664
          allocate(ww::q(nm)%z22(nm))
        kkk=0
          select type(r=>q(nm)%z22)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2552,"(z16.16)") loc(r(nm)%w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2553,"(z16.16)") loc(r(nm)%w02  )
           end select
        if (kkk/=1) print *,86275
       end select
    if (kk/=1) print *,6733
    end select

      allocate(ext::yv(nm)%v(nm))
             write (2521,"(z16.16)") loc(yv(nm)%v(nm)%d1  )
      yv(nm)%v(nm)%d1(1)=1
    k=0
    select type(p=>yv(nm)%v)
      type is(ext)
        k=1
          allocate(p(nm)   %n(nm),source=b)
             write (2522,"(z16.16)") loc(p(nm)   %n   )
          allocate(p(nm)   %na(nm),source=b)
             write (2523,"(z16.16)") loc(p(nm)   %na  )
     allocate(b3::p(nm)   %b2v(nm))
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
        kkk=0
          allocate(ww::q(nm)%z01(nm))
          select type(r=>q(nm)%z01)
            type is(ww)
        kkk=1
          allocate(r(nm)%w01(nm),source=b)
          allocate(r(nm)%w02(nm),source=b)
          end select
        if (kkk/=1) print *,765
        kkk=0
          allocate(ww::q(nm)%z02(nm))
          select type(r=>q(nm)%z02)
            type is(ww)
        kkk=1
          allocate(r(nm)%w01(nm),source=b)
          allocate(r(nm)%w02(nm),source=b)
          end select
        if (kkk/=1) print *,7652
        kkk=0
          allocate(ww::q(nm)%z11(nm))
          select type(r=>q(nm)%z11)
            type is(ww)
        kkk=1
          allocate(r(nm)%w01(nm),source=b)
          allocate(r(nm)%w02(nm),source=b)
          end select
        if (kkk/=1) print *,7651
        kkk=0
          allocate(ww::q(nm)%z12(nm))
          select type(r=>q(nm)%z12)
            type is(ww)
        kkk=1
          allocate(r(nm)%w01(nm),source=b)
          allocate(r(nm)%w02(nm),source=b)
          end select
        if (kkk/=1) print *,7751
        kkk=0
          allocate(ww::q(nm)%z21(nm))
          select type(r=>q(nm)%z21)
            type is(ww)
        kkk=1
          allocate(r(nm)%w01(nm),source=b)
          allocate(r(nm)%w02(nm),source=b)
          end select
        if (kkk/=1) print *,7691
        kkk=0
          allocate(ww::q(nm)%z22(nm))
          select type(r=>q(nm)%z22)
            type is(ww)
        kkk=1
          allocate(r(nm)%w01(nm),source=b)
          allocate(r(nm)%w02(nm),source=b)
          end select
        if (kkk/=1) print *,7661
       end select
    if (kk/=1) print *,67332
    end select
    if (k/=1) print *,6738

      xv=yv

     k=0
     select type(p=>yv)
      type is(x2)
        k=1
          p(nm)   %xn(nm)=c
    end select
    if (k/=1) print *,86738
     k=0
     select type(p=>xv)
      type is(x2)
        k=1
          if (p(nm)   %xn(nm)/='a') print *,72829
    end select
    if (k/=1) print *,867381
    k=0
    select type(p=>yv(nm)%v)
      type is(ext)
        k=1
          p(nm)   %n(nm)=c
          p(nm)   %na(nm)=c
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
        kkk=0
          select type(r=>q(nm)%z01)
            type is(ww)
        kkk=1
          r(nm)%w01(nm)=c
          r(nm)%w02(nm)=c
          end select
        if (kkk/=1) print *,10765
        kkk=0
          select type(r=>q(nm)%z02)
            type is(ww)
        kkk=1
          r(nm)%w01(nm)=c
          r(nm)%w02(nm)=c
          end select
        if (kkk/=1) print *,107652
        kkk=0
          select type(r=>q(nm)%z11)
            type is(ww)
        kkk=1
          r(nm)%w01(nm)=c
          r(nm)%w02(nm)=c
          end select
        if (kkk/=1) print *,107651
        kkk=0
          select type(r=>q(nm)%z12)
            type is(ww)
        kkk=1
          r(nm)%w01(nm)=c
          r(nm)%w02(nm)=c
          end select
        if (kkk/=1) print *,107751
        kkk=0
          select type(r=>q(nm)%z21)
            type is(ww)
        kkk=1
          r(nm)%w01(nm)=c
          r(nm)%w02(nm)=c
          end select
        if (kkk/=1) print *,107691
        kkk=0
          select type(r=>q(nm)%z22)
            type is(ww)
        kkk=1
          r(nm)%w01(nm)=c
          r(nm)%w02(nm)=c
          end select
        if (kkk/=1) print *,107661
       end select
    if (kk/=1) print *,67332
    end select
    if (k/=1) print *,6738

    k=0
    select type(p=>xv(nm)%v)
      type is(ext)
        k=1
        if (  p(nm)   %n(nm)/=b) print *,1029
        if (  p(nm)   %na(nm)/=b) print *,10292
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
        kkk=0
          select type(r=>q(nm)%z01)
            type is(ww)
        kkk=1
          if (r(nm)%w01(nm)/=b) print *,93011
          if (r(nm)%w02(nm)/=b) print *,93012
          end select
        if (kkk/=1) print *,207691
        kkk=0
          select type(r=>q(nm)%z02)
            type is(ww)
        kkk=1
          if (r(nm)%w01(nm)/=b) print *,94011
          if (r(nm)%w02(nm)/=b) print *,94012
          end select
        if (kkk/=1) print *,1076615
        kkk=0
          select type(r=>q(nm)%z11)
            type is(ww)
        kkk=1
          if (r(nm)%w01(nm)/=b) print *,90111
          if (r(nm)%w02(nm)/=b) print *,90112
          end select
        if (kkk/=1) print *,2076912
        kkk=0
          select type(r=>q(nm)%z12)
            type is(ww)
        kkk=1
          if (r(nm)%w01(nm)/=b) print *,91511
          if (r(nm)%w02(nm)/=b) print *,91512
          end select
        if (kkk/=1) print *,107661
        kkk=0
          select type(r=>q(nm)%z21)
            type is(ww)
        kkk=1
          if (r(nm)%w01(nm)/=b) print *,90611
          if (r(nm)%w02(nm)/=b) print *,90612
          end select
        if (kkk/=1) print *,207691
        kkk=0
          select type(r=>q(nm)%z22)
            type is(ww)
        kkk=1
          if (r(nm)%w01(nm)/=b) print *,91711
          if (r(nm)%w02(nm)/=b) print *,91712
          end select
        if (kkk/=1) print *,107661
      end select
      if (kk/=1) print *,773382
    end select
    if (k/=1) print *,67383
end do
     end
use mod
do n=1,30
      call s1(2)
end do
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(14)
!call chk(21)
!call chk(22)
!call chk(23)
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
!call chk(61)
!call chk(62)
!call chk(71)
!call chk(72)
!call chk(73)
     print *,'sngg992q : pass'
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
