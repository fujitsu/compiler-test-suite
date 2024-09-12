subroutine s1
character(:),pointer:: c
call s(null(  ))
call s(null(c ))
contains
subroutine s(p)
character(:),pointer::p
if (associated(p))print *,'error-1'
end subroutine
end
call s1
print *,'pass'
end
