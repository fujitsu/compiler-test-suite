subroutine s1
integer,allocatable::x(:)
allocate(x(2),stat=k)
x=[1,2]
if (k/=0)print *,101
if (any(x/=[1,2]))print *,102
if (any(shape(x)/=[2]))print *,103
if (any(ubound(x)/=[2]))print *,104
end
call s1
print *,'pass'
end
