call sub
contains
subroutine sub
integer,pointer::ii(:)
character(LEN=:),pointer::ch1
character(LEN=:),pointer::ch2(:)
complex,pointer::com(:)

call s1(ii,ch1,ch2,com)
print*,"pass"
end subroutine

subroutine s1(d1,d2,d3,d4)
integer,pointer::d1(:)
character(LEN=:),pointer::d2
character(LEN=:),pointer::d3(:)
complex,pointer::d4(:)

allocate(d1(2:5))
allocate(character(8)::d2)
allocate(character(10)::d3(3:6))
allocate(d4(4:6))

call s2(d2(3:5))
end subroutine

subroutine s2(a2)
character(LEN=:),pointer,intent(in)::a2
if (.not.associated(a2))print*,102
end subroutine
end
