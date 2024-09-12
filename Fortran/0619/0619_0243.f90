subroutine s1
integer,allocatable::a(:)
allocate (a,source=[1])
if (any(a/=1))print *,101
end
call s1
print *,'pass'
end


