use,intrinsic :: iso_c_binding
integer,allocatable,target :: aaa(:)
integer,allocatable,target :: bbb(:)
type(c_ptr) :: cptr1
type(c_ptr) :: cptr2

allocate(aaa(10))
allocate(bbb(10))
aaa = 10
bbb = aaa
cptr1 = c_loc(aaa)
cptr2 = c_loc(bbb)

if (c_associated(cptr1,cptr2)) print *,'error'
print *,'pass'
end
