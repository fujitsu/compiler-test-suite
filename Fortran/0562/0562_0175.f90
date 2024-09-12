subroutine sub
character(LEN=:),allocatable::alc
integer::ii=5
call s1(alc,ii)
if (alc /= "alloc")print*,103
if (LEN(alc)==5)print*,"pass"
contains
subroutine s1(d1,d2)
character(LEN=:),allocatable,target::d1
integer::d2
allocate(character(LEN=d2)::d1)
call s2(d1)
end subroutine
subroutine s2(dmy1)
character(LEN=:),pointer,intent(in)::dmy1
if (.NOT.associated(dmy1))print*,"error",101
if (LEN(dmy1)/=5)print*,102
dmy1="alloc"
end subroutine
end subroutine
call sub
end
