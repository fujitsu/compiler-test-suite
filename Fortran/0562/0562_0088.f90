subroutine sub1
character(len=:),pointer::ch

allocate(character(20)::ch)
ch = "fantasyfortran"

call sub2(ch(3:5),ch(8:11))
if(ch /= "fantasy1234ran")print*,"331"
print*,"Pass"

contains
subroutine sub2(ptr1,ptr2)
character(:),pointer,intent(in)::ptr1
character(:),pointer,intent(in)::ptr2
if (.NOT.associated(ptr1))print*,"error",101
if (.NOT.associated(ptr2))print*,"error",102
if (LEN(ptr1) /= 3 .or. LEN(ptr2) /= 4)print*,103
if (ptr1 /= "nta")print*,104
if (ptr2 /= "fort")print*,105
ptr2 = "1234"
end subroutine
end subroutine

call sub1
end
