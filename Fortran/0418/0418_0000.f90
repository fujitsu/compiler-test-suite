module m1
type w1
private
real :: x
contains
procedure, private :: w1_wf
generic :: write(formatted) => w1_wf
end type w1
type u2
private
real :: x
type(w1) :: y(5)
contains
procedure, private :: u2_wf
generic :: write(formatted) => u2_wf
end type u2
interface w1
module procedure :: w1_q
end interface w1
interface u2
module procedure :: u2_q
end interface u2
contains
pure function w1_q( z ) result( iuy )
real, intent(in) :: z
type(w1) :: iuy
iuy%x = z
end function w1_q
pure function u2_q( z ) result( iuy )
real, intent(in) :: z
type(u2) :: iuy
iuy%x = z
iuy%y = w1(z*2.0)
end function u2_q
subroutine w1_wf( sw, unit, iotype, v_list, iostat, iomsg )
class(w1), intent(in):: sw
integer , intent(in):: unit
character(*), intent(in):: iotype
integer , intent(in):: v_list(:)
integer , intent(out) :: iostat
character(*), intent(inout) :: iomsg
character(:), allocatable :: ffff
if (len_trim(iotype) > 0) then
if (iotype(1:2) == 'DT') then
if (len_trim(iotype) > 2) then
ffff = '('//iotype(3:)//')'
write(unit, fmt=ffff, iostat=iostat, iomsg=iomsg) sw%x
deallocate(ffff)
else
write(unit, *, iostat=iostat, iomsg=iomsg) sw%x
end if
else if (iotype == 'LISTDIRECTED') then
write(unit, *, iostat=iostat, iomsg=iomsg) sw%x
else if (iotype == 'NAMELIST') then
write(unit, *, iostat=iostat, iomsg=iomsg) sw%x
end if
end if
end subroutine w1_wf
subroutine u2_wf( sw, unit, iotype, v_list, iostat, iomsg )
class(u2), intent(in):: sw
integer , intent(in):: unit
character(*), intent(in):: iotype
integer , intent(in):: v_list(:)
integer , intent(out) :: iostat
character(*), intent(inout) :: iomsg
character(:), allocatable :: ffff
allocate(character(1000):: ffff)
if (len_trim(iotype) > 0) then
if (iotype(1:2) == 'DT') then
if (len_trim(iotype) > 2) then
ffff = '('//iotype(3:)//')'
write(unit, fmt=ffff, iostat=iostat, iomsg=iomsg) sw%x
deallocate(ffff)
else
write(unit, *, iostat=iostat, iomsg=iomsg) sw%x
end if
else if (iotype == 'LISTDIRECTED') then
write(unit, *, iostat=iostat, iomsg=iomsg) sw%x
else if (iotype == 'NAMELIST') then
write(unit, *, iostat=iostat, iomsg=iomsg) sw%x
end if
end if
end subroutine
end 
subroutine s1
use m1
type(u2) :: var
var = u2(1.0)
k1=1
write(k1,'(A)') 'formatting: unspecified'
write(k1,*) var
write(k1,'(A)') ''
write(k1,'(A)') 'formatting: specified'
write(k1,'(DT"F10.4")') var
end
call s1
print *,'pass'
end
