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
  module subroutine sub(xv)
  type(x)::xv
  end subroutine
 end interface
end
submodule (m) xx
 implicit none
 interface write(formatted)
       procedure :: wform
 end interface
contains
 module subroutine sub(xv)
  type(x)::xv
  type(y)::yv
integer::ios=0
write(4,*,iostat=ios) yv
if (ios/=0) print *,901
 end subroutine
 subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
    class(y), intent(in) :: dtv
    integer(kind=4), intent(in) :: unit
    character(*), intent(in) :: iotype
    integer, intent(in) :: vlist(:)
    integer, intent(out) :: iostat
    character(*), intent(inout) :: iomsg

    write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x1+1
  end subroutine wform
end

use m
 implicit none
integer::kk
  type(x)::xv
call sub(xv)
rewind 4
read(4,*) kk
if (kk/=4) print *,304
print *,'pass'
end
