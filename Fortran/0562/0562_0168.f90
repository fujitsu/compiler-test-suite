interface
subroutine s(d1,d2,d3,d4)
integer,pointer,intent(in)::d1
integer,pointer,intent(in)::d2
integer,pointer,intent(in)::d3(:)
integer,pointer,intent(in)::d4
end subroutine
end interface

integer,allocatable,target::tar1
integer,target::tar2
integer,allocatable,target::tar3(:)
integer,pointer::tar4=>null()
allocate(tar1)
allocate(tar3(2:5))
call sub
contains
subroutine sub
call s(tar1,tar2,tar3,tar4)
call r(tar3)
if (tar3(2)/=0)print*,110
if (tar3(3)/=3)print*,111
end subroutine
subroutine r(dmy)
integer,pointer,intent(in)::dmy(:)
if (.NOT.associated(dmy))print*,105
if (size(dmy) /= 4)print*,106
if (lbound(dmy,1)/=2 .or. ubound(dmy,1)/=5)print*,107
if (dmy(4)/=0)print*,109
dmy(3)=3
dmy(4)=4
print*,"Pass"
end subroutine
end

subroutine s(ptr1,ptr2,ptr3,ptr4)
integer,pointer,intent(in)::ptr1
integer,pointer,intent(in)::ptr2
integer,pointer,intent(in)::ptr3(:)
integer,pointer,intent(in)::ptr4
if (.not.associated(ptr1))print*,"error",101
if (.NOT.associated(ptr2))print*,102
if (.not.associated(ptr3))print*,103
if (associated(ptr4))print*,104
if (size(ptr3)/=4)print*,108
ptr3=0
ptr2=4
end subroutine
