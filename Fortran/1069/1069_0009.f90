     module mod
       type :: bb
         integer(8)::d2(4)
          contains
            final::sbb
       end type
       type :: b
         integer(8)::d1(2)
         type(bb),allocatable::n
          contains
            final::sb
       end type
       type x
         integer(8)::d
         type (b),allocatable::v
          contains
            final::sx
       end type
contains
  subroutine sbb(d)
    type(bb)::d
      write(625,*) "'sbb'"
  end subroutine
  subroutine sb(d)
    type(b)::d
      write(625,*) "'sb'"
  end subroutine
  subroutine sx(d)
    type(x)::d
      write(625,*) "'sx'"
  end subroutine
end module mod

     subroutine s1
     use mod
     type (x) ,save:: xv,yv
      allocate(b::xv%v)
             write (3100,"(z16.16)") loc(xv%v   )
      allocate(bb::xv%v%n)
             write (3101,"(z16.16)") loc(xv%v%n   )
      yv%d=1
      allocate(b::yv%v)
             write (3102,"(z16.16)") loc(yv%v   )
      yv%v%d1(1)=1
      allocate(bb::yv%v%n)
             write (624,"(z16.16)") loc(yv%v%n   )
      yv%v%n%d2(1)=1
      xv=yv
      if (xv%d/=1) print *,1000
      if (xv%v%d1(1)/=1) print *,1001
      if (xv%v%n%d2(1)/=1) print *,1002
     end
use mod
character(10)::r
do n=1,1
      call s1
end do
rewind 625
read(625,*    ) r
if (r/='sx') print *,80021
read(625,*    ) r
if (r/='sb') print *,80023
read(625,*    ) r
if (r/='sbb') print *,80022
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(14)
     print *,'sngg907q : pass'
     end
