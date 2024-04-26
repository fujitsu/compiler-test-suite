module m0
  type ty
    integer :: x  =9
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1
    end subroutine
end
module mx
 integer:: xz=11
end
module m1
use m0
interface write(unformatted)
   procedure :: wunform
end interface
end
module m2
use m1
use mx
private
public::z
contains
  subroutine z
  TYPE (ty) :: t1
      character(100) :: iomsg=''
  OPEN(1,file='fort.1',form="unformatted")
  WRITE(1,iostat=ios,iomsg=iomsg) t1
  if (ios/=0) print *,101
  if (iomsg/='') print *,102
  if (xz/=11) print *,501
  end subroutine
end
module m3 
use m2
end
use m3
call z
rewind 1
read(1)n
if (n/=10) print *,201
print *,'pass'
end
  function x(x1,x2)
    logical::x,x1,x2
     intent(in) x1,x2
     x=.false.
     if (x1.and.x2) x=.true.
  end function
  function y(y1,y2)
    logical::y,y1,y2
     intent(in) y1,y2
     y=.false.
     if (y1.and.y2) y=.true.
  end function
