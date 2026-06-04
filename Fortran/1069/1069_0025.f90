     module mod
       type :: base
         integer(8)::d1(2)
          character(:),allocatable::n(:)
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
       end type
       integer,parameter::m=10000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1(nnn)
     use mod
     type (x) :: xv(nnn),yv(nnn)
do nn=2,nnn
      allocate(e ::xv(nn)%v(nn))
    k=0
    select type(p=>xv(nn)%v)
      type is(e)
        k=1
             write (1811,"(z16.16)") loc(xv(nn)%v   )
          allocate(p(nn)%n(nn),source=a)
             write (1812,"(z16.16)") loc(xv(nn)%v(nn)%n   )
          allocate(p(nn)   %na(nn),source=a)
             write (1813,"(z16.16)") loc(p(nn)   %na  )
          allocate(p(nn)   %nam(nn),source=a)
             write (1814,"(z16.16)") loc(p(nn)   %nam )
       end select
    if (k/=1) print *,6733

      allocate(ext::yv(nn)%v(nn))
             write (1821,"(z16.16)") loc(yv(nn)%v(nn)%d1  )
      yv(nn)%v(nn)%d1(1)=1
    k=0
    select type(p=>yv(nn)%v)
      type is(ext)
        k=1
          allocate(p(nn)   %n(nn),source=b)
             write (1822,"(z16.16)") loc(p(nn)   %n(nn)   )
          allocate(p(nn)   %na(nn),source=b)
             write (1823,"(z16.16)") loc(p(nn)   %na(nn)  )
    end select
    if (k/=1) print *,6738

      xv=yv

    k=0
    select type(p=>yv(nn)%v)
      type is(ext)
        k=1
          p(nn)   %n(nn)=c
          p(nn)   %na(nn)=c
    end select
    if (k/=1) print *,67382
    k=0
    select type(p=>xv(nn)%v)
      type is(ext)
        k=1
        if (  p(nn)   %n(nn)/=b) print *,1029
        if (  p(nn)   %na(nn)/=b) print *,10292
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
     print *,'sngg983q : pass'
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
