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
public :: zz
contains
  subroutine zz
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
private
public:: z
contains
  subroutine z
call zz
  end subroutine
end
module m4 
use m3
end
use m4
call z
rewind 1
read(1)n
if (n/=10) print *,201
print *,'pass'
end
