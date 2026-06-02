     module mod
       integer,parameter::m=10000
       type :: b1
         integer(8)::z00(6)
          character(:),allocatable::z01(:)
          character(:),allocatable::z02(:)
       end type
       type, extends(b1) :: b2
         integer(8)::z10(7)
          character(:),allocatable::z11(:)
          character(:),allocatable::z12(:)
       end type
       type, extends(b2) :: b3
         integer(8)::d20(8)
          character(:),allocatable::z21(:)
          character(:),allocatable::z22(:)
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
             write (2231,"(z16.16)") loc(xv )
             write (2232,"(z16.16)") loc(yv )
      allocate(e ::xv(nm)%v(nm))
    k=0
    select type(p=>xv(nm)%v)
      type is(e)
        k=1
             write (2211,"(z16.16)") loc(xv(nm)%v   )
          allocate(p(nm)%n(nm),source=a)
             write (2212,"(z16.16)") loc(xv(nm)%v(nm)%n   )
          allocate(p(nm)   %na(nm),source=a)
             write (2213,"(z16.16)") loc(p(nm)   %na  )
          allocate(p(nm)   %nam(nm),source=a)
             write (2214,"(z16.16)") loc(p(nm)   %nam )
     allocate(b3::p(nm)   %b2v(nm))
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
         write (2241,"(z16.16)") loc(q      )
          allocate(q(nm)%z01(nm),source=a)
           write (2242,"(z16.16)") loc(q(nm) %z01(nm))
          allocate(q(nm)%z02(nm),source=a)
           write (2243,"(z16.16)") loc(q(nm) %z02(nm))
          allocate(q(nm)%z11(nm),source=a)
           write (2244,"(z16.16)") loc(q(nm) %z11(nm))
          allocate(q(nm)%z12(nm),source=a)
           write (2245,"(z16.16)") loc(q(nm) %z12(nm))
          allocate(q(nm)%z21(nm),source=a)
           write (2246,"(z16.16)") loc(q(nm) %z21(nm))
          allocate(q(nm)%z22(nm),source=a)
           write (2247,"(z16.16)") loc(q(nm) %z22(nm))
       end select
    if (kk/=1) print *,6733
    end select

      allocate(ext::yv(nm)%v(nm))
             write (2221,"(z16.16)") loc(yv(nm)%v(nm)%d1  )
      yv(nm)%v(nm)%d1(1)=1
    k=0
    select type(p=>yv(nm)%v)
      type is(ext)
        k=1
          allocate(p(nm)   %n(nm),source=b)
             write (2222,"(z16.16)") loc(p(nm)   %n   )
          allocate(p(nm)   %na(nm),source=b)
             write (2223,"(z16.16)") loc(p(nm)   %na  )
     allocate(b3::p(nm)   %b2v(nm))
    kk=0
      select type(q=>p(nm)%b2v)
      type is(b3)
        kk=1
          allocate(q(nm)%z01(nm),source=b)
          allocate(q(nm)%z02(nm),source=b)
          allocate(q(nm)%z11(nm),source=b)
          allocate(q(nm)%z12(nm),source=b)
          allocate(q(nm)%z21(nm),source=b)
          allocate(q(nm)%z22(nm),source=b)
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
        q(nm)%z01(nm)=c
        q(nm)%z02(nm)=c
        q(nm)%z11(nm)=c
        q(nm)%z12(nm)=c
        q(nm)%z11(nm)=c
        q(nm)%z12(nm)=c
      end select
      if (kk/=1) print *,67338
    end select
    if (k/=1) print *,67382
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
        if (q(nm)%z01(nm)/=b) print *,501
        if (q(nm)%z02(nm)/=b) print *,502
        if (q(nm)%z11(nm)/=b) print *,511
        if (q(nm)%z12(nm)/=b) print *,512
        if (q(nm)%z21(nm)/=b) print *,521
        if (q(nm)%z22(nm)/=b) print *,522
      end select
      if (kk/=1) print *,77338
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
     print *,'sngg989q : pass'
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
