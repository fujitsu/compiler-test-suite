module m
implicit none
 type x
   integer::x1=2
 end type
 integer,target::t=3
 type y
   integer,pointer::x1=>t
 end type
 interface
  subroutine sub(xv)
  import
  type(x)::xv
  end subroutine
 module subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(y), intent(in) :: dtv
    integer(kind=4), intent(in) :: unit
    character(*), intent(in) :: iotype
    integer, intent(in) :: vlist(:)
    integer, intent(out) :: iostat
    character(*), intent(inout) :: iomsg
  end
 end interface
 interface  write(formatted)
     procedure :: wform
  end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  wform
    !print *, dtv%x1+1,unit
    write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x1+1
    !print *, iostat,trim(iomsg)
  end
end

 subroutine sub(xv)
  use m
  type(x)::xv
  type(y)::yv
integer::ios=0
!print *,'x1',yv%x1
write(103,*,iostat=ios) yv
if (ios/=0) print *,901
 end subroutine

use m
 implicit none
integer::kk
  type(x)::xv
call sub(xv)
rewind 103
read(103,*) kk
if (kk/=4) print *,304
print *,'sngg229h : pass'
end
