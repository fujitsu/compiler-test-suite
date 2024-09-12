subroutine sub
logical,pointer::tar1
complex,target::tar2
logical,target::tar3
tar1=>NULL()
call s1(tar1,tar2,tar3)
if (.NOT.tar1)print*,104
print*,"Pass"
contains
subroutine s1(p1,p2,p3)
logical,pointer::p1
complex,pointer,intent(in)::p2
logical,pointer,intent(in)::p3
if (.NOT.associated(p2))print*,"error",101
if (.NOT.associated(p3))print*,102
call s2(p1,p3)
end subroutine
subroutine s2(d1,d2)
logical,pointer::d1
logical,pointer::d2
if (associated(d1))print*,"error",103
if (.NOT.associated(d2))print*,104
d1=>d2
d1 = .TRUE.
end subroutine
end subroutine

call sub
end


