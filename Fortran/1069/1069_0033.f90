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
       type x
         integer(8)::d
         class(base),allocatable::v(:)
         integer(8)::dx(m)
       end type
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1(nn)
     use mod
     class (x),allocatable :: xv(:),yv(:)
do nm=2,nn
     allocate(xv(nm),yv(nm))
             write (2431,"(z16.16)") loc(xv )
             write (2432,"(z16.16)") loc(yv )
      allocate(e ::xv(nm)%v(nm))
    k=0
    select type(p=>xv(nm)%v)
      type is(e)
        k=1
             write (2411,"(z16.16)") loc(xv(nm)%v   )
          allocate(p(nm)%n(nm),source=a)
             write (2412,"(z16.16)") loc(xv(nm)%v(nm)%n   )
          allocate(p(nm)   %na(nm),source=a)
             write (2413,"(z16.16)") loc(p(nm)   %na  )
          allocate(p(nm)   %nam(nm),source=a)
             write (2414,"(z16.16)") loc(p(nm)   %nam )
     allocate(b3::p(nm)   %b2v(nm))
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
         write (2441,"(z16.16)") loc(q      )
          allocate(ww::q(nm)%z01(nm))
        kkk=0
          select type(r=>q(nm)%z01)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2442,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2443,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,862
          allocate(ww::q(nm)%z02(nm))
        kkk=0
          select type(r=>q(nm)%z02)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2444,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2445,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,86223
          allocate(ww::q(nm)%z11(nm))
        kkk=0
          select type(r=>q(nm)%z11)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2446,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2447,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,8624
          allocate(ww::q(nm)%z12(nm))
        kkk=0
          select type(r=>q(nm)%z12)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2448,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2449,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,86225
          allocate(ww::q(nm)%z21(nm))
        kkk=0
          select type(r=>q(nm)%z21)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2450,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2451,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,8664
          allocate(ww::q(nm)%z22(nm))
        kkk=0
          select type(r=>q(nm)%z22)
            type is(ww)
        kkk=1
              allocate(r(nm)%w01(nm),source=a)
              write (2452,"(z16.16)") loc(r(nm) %w01  )
              allocate(r(nm)%w02(nm),source=a)
              write (2453,"(z16.16)") loc(r(nm) %w02  )
           end select
        if (kkk/=1) print *,86275
       end select
    if (kk/=1) print *,6733
    end select

      allocate(ext::yv(nm)%v(nm))
             write (2421,"(z16.16)") loc(yv(nm)%v(nm)%d1  )
      yv(nm)%v(nm)%d1(1)=1
    k=0
    select type(p=>yv(nm)%v)
      type is(ext)
        k=1
          allocate(p(nm)   %n(nm),source=b)
             write (2422,"(z16.16)") loc(p(nm)   %n   )
          allocate(p(nm)   %na(nm),source=b)
             write (2423,"(z16.16)") loc(p(nm)   %na  )
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
!        kkk=0
!          allocate(ww::q(nm)%z11(nm))
!          select type(r=>q(nm)%z11)
!            type is(ww)
!        kkk=1
!          allocate(r(nm)%w01(nm),source=b)
!          allocate(r(nm)%w02(nm),source=b)
!          end select
!        if (kkk/=1) print *,7651
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
!        kkk=0
!          select type(r=>q(nm)%z11)
!            type is(ww)
!        kkk=1
!          r(nm)%w01(nm)=c
!          r(nm)%w02(nm)=c
!          end select
!        if (kkk/=1) print *,107651
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
!        kkk=0
!          select type(r=>q(nm)%z11)
!            type is(ww)
!        kkk=1
!          if (r(nm)%w01(nm)/=b) print *,90111
!          if (r(nm)%w02(nm)/=b) print *,90112
!          end select
!        if (kkk/=1) print *,2076912
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
do n=1,20
      call s1(2)
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
     print *,'sngg991q : pass'
     end
     subroutine  chk(k)
     character(16)::n1,n2
     rewind (k)
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=100) n2
       if (n1==n2) return
     end do
  100 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=200) n2
       if (n1==n2) return
     end do
  200 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=300) n2
       if (n1==n2) return
     end do
  300 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=400) n2
       if (n1==n2) return
     end do
  400 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do
       read(k ,'(a)',end=500) n2
       if (n1==n2) return
     end do
  500 print *,"Please check UNIT",k
     end
