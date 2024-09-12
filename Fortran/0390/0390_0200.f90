use , intrinsic :: iso_c_binding
type(c_ptr) :: cptr
integer, pointer :: iipp_01(:)
integer, pointer,CONTIGUOUS :: iipp_02(:, :)
type ty01
 integer, pointer :: iipp_01(:)
end type
type (ty01) :: tt01

iipp_01(1:2) => iipp_02

cptr = c_loc(iipp_01)
cptr = c_loc(iipp_01(1:2))
cptr = c_loc(tt01%iipp_01)
cptr = c_loc(cfunc01())

print *,'pass'

contains
 function cfunc01() result(crst01)
  integer, pointer :: crst01(:)
  crst01 => null()
 end function
end
