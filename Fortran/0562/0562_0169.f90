interface
subroutine s(d1,d2,d3,d4)
integer,pointer,intent(in)::d1
character(LEN=*),pointer,intent(in)::d2
real,pointer,intent(in)::d3(:)
complex,pointer,intent(in)::d4
end subroutine
end interface

integer,target::tar1
character(LEN=10),target::tar2
Real,target::tar3(3:6)
complex,target::tar4
tar2="fortran"
call sub
contains
subroutine sub
call s(tar1,tar2(5:7),tar3,tar4)
print*,"Pass"
end subroutine
end

subroutine s(ptr1,ptr2,ptr3,ptr4)
integer,pointer,intent(in)::ptr1
character(LEN=*),pointer,intent(in)::ptr2
real,pointer,intent(in)::ptr3(:)
complex,pointer,intent(in)::ptr4
if (.NOT.associated(ptr1))print*,"error",101
if (.NOT.associated(ptr2))print*,102
if (.NOT.associated(ptr3))print*,103
if (.NOT.associated(ptr4))print*,104
if (size(ptr3) /= 4)print*,105,size(ptr3)
if (lbound(ptr3,1)/=3 .or. ubound(ptr3,1)/=6)print*,106
if (LEN(ptr2)/=3)print*,107
if (ptr2 /= "ran")print*,108
end subroutine
