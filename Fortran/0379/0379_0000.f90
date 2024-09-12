subroutine sub() bind(C)
end subroutine

use,intrinsic :: iso_c_binding
interface
subroutine sub() bind(C)
end subroutine
end interface
integer,target :: aaa
integer,target :: bbb
type(c_ptr) :: cptr1
type(c_ptr) :: cptr2
type(c_ptr) :: cptr3(1)
type(c_ptr) :: cptr4(1)
type(c_funptr) :: cfunptr1
type(c_funptr) :: cfunptr2
type(c_funptr) :: cfunptr3(1)
type(c_funptr) :: cfunptr4(1)
cptr1 = c_loc(aaa)
cptr2 = c_loc(bbb)
cptr3(1) = c_loc(aaa)
cptr4(1) = c_loc(bbb)
cfunptr1 = c_funloc(sub)
cfunptr2 = c_funloc(sub)
cfunptr3(1) = c_funloc(sub)
cfunptr4(1) = c_funloc(sub)
if (.not. c_associated(cptr1,cptr2)) print *,'ok1'
if (.not. c_associated(cptr3(1),cptr4(1))) print *,'ok2' 
if (.not. c_associated(cptr1,cptr4(1))) print *,'ok3' 
if (c_associated(cptr3(1),cptr1)) print *,'ok4' 
if (c_associated(cfunptr1,cfunptr2)) print *,'ok5'
if (c_associated(cfunptr3(1),cfunptr4(1))) print *,'ok6' 
print *,'ok'
end
