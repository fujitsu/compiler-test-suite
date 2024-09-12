subroutine s1
character ::x1='1'
call c1([character(2)::x1//x1])
contains
subroutine c1(z)
character(*)::z(:)
if (len(z)/=2)print *,101
if (any(shape(z)/=(/1/)))print *,102
if (z(1)/='11')print *,103
end subroutine
end
call s1
print *,'pass'
end
