subroutine s1
dimension a(*)
integer,parameter::a=[1,2,3]
if (any(a/=[1,2,3])) print *,102
end
call s1
print *,'pass'
end
