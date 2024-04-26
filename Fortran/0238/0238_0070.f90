subroutine s1
integer,allocatable::x1
type y
 integer,allocatable::x1
end type
type(y)::yv
allocate(x1,source=1)
if (x1/=1) print *,101
allocate(yv%x1,source=1)
if (yv%x1/=1) print *,101
end
call s1
print *,'pass'
end
