subroutine s1
dimension a(*)
integer,parameter::a=[1,2,3]
integer,parameter::b(2:*)=a
integer,parameter::c(*)=ubound(b)
if (any(c/=4)) print *,101
if (any(b/=[1,2,3])) print *,102
if (any(c/=[4])) print *,103
if (ubound(b,1)/=4) print *,104
end
call s1
print *,'pass'
end
