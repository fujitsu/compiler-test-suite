subroutine s1
character,pointer:: c,ca(:)
call s(null(ca))
call t(null(c))
call ss(null(ca))
call tt(null(c))
contains
subroutine s(p)
character(*),pointer,optional::p(:)
if (.not.present(p))print *,'error-01'
if (associated(p))print *,'error-02'
if (len(p)/=1)print *,'error-3'
end subroutine
subroutine t(p)
character(*),pointer,optional::p
if (.not.present(p))print *,'error-11'
if (associated(p))print *,'error-12'
if (len(p)/=1)print *,'error-13'
end subroutine
subroutine ss(p)
character(*),pointer::p(:)
if (associated(p))print *,'error-22'
if (len(p)/=1)print *,'error-23'
end subroutine
subroutine tt(p)
character(*),pointer::p
if (associated(p))print *,'error-32'
if (len(p)/=1)print *,'error-23'
end subroutine
end
call s1
print *,'pass'
end
