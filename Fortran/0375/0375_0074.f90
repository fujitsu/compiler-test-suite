use,intrinsic :: iso_c_binding
type,bind(c) :: str
  integer :: iii
end type
type(str),allocatable,target :: aaa(:)
type(str),allocatable,target :: bbb(:)
type(c_ptr) :: cptr1
type(c_ptr) :: cptr2

allocate(aaa(1))
allocate(bbb(1))
aaa(1)%iii = 10
bbb = aaa
cptr1 = c_loc(aaa)
cptr2 = c_loc(aaa)

if (.not. c_associated(cptr1,cptr2)) print *,'error'
print *,'pass'
end
