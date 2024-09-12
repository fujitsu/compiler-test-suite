subroutine s1
integer,allocatable:: x(:)
allocate(x(2),source=1)
if (any(x/=1)) print *,101
end
call s1
print *,'pass'
end
