subroutine s1
integer,dimension(*):: a
parameter(a=[1,2,3])
if (any(a/=[1,2,3])) print *,102
end
call s1
print *,'pass'
end
