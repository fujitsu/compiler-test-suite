subroutine s2
data     p/ null() /
pointer:: p
if (associated(p)) print *,202
end
subroutine s12
pointer:: p
data     p/ null() /
if (associated(p)) print *,302
end
subroutine s32
pointer:: p
data     p/ null() /
integer:: p
if (associated(p)) print *,402
end
subroutine s41
data     p/ null() /
pointer:: p
real   :: p
if (associated(p)) print *,501
end
subroutine s42
pointer:: p
data     p/ null() /
real       :: p
if (associated(p)) print *,502
end
call s2
call s12
call s32
call s41
call s42
print *,'pass'
end
