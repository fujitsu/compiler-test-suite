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
         class(base),allocatable::v
         integer(8)::dx(m)
       end type
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1(nn)
     use mod
     type (x),allocatable :: xv(:),yv(:)
do nm=2,nn
     allocate(xv(nm),yv(nm))
             write (1931,"(z16.16)") loc(xv(nm) )
             write (1932,"(z16.16)") loc(yv(nm) )
      allocate(e ::xv(nm)%v)
    k=0
    select type(p=>xv(nm)%v)
      type is(e)
        k=1
             write (1911,"(z16.16)") loc(xv(nm)%v   )
          allocate(p%n,source=a)
             write (1912,"(z16.16)") loc(xv(nm)%v%n   )
          allocate(p   %na,source=a)
             write (1913,"(z16.16)") loc(p   %na  )
          allocate(p   %nam,source=a)
             write (1914,"(z16.16)") loc(p   %nam )
       end select
    if (k/=1) print *,6733

      allocate(ext::yv(nm)%v)
             write (1921,"(z16.16)") loc(yv(nm)%v%d1  )
      yv(nm)%v%d1(1)=1
    k=0
    select type(p=>yv(nm)%v)
      type is(ext)
        k=1
          allocate(p   %n,source=b)
             write (1922,"(z16.16)") loc(p   %n   )
          allocate(p   %na,source=b)
             write (1923,"(z16.16)") loc(p   %na  )
    end select
    if (k/=1) print *,6738

      xv=yv

    k=0
    select type(p=>yv(nm)%v)
      type is(ext)
        k=1
          p   %n=c
          p   %na=c
    end select
    if (k/=1) print *,67382
    k=0
    select type(p=>xv(nm)%v)
      type is(ext)
        k=1
        if (  p   %n/=b) print *,1029
        if (  p   %na/=b) print *,10292
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
     print *,'sngg984q : pass'
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
