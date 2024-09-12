subroutine s1
type x
integer t
integer,allocatable:: a(:)
end type
type (x):: v
v=x(1)
if (v%t/=1) print *,1
if (allocated(v%a)) print *,2
end
call s1
print *,'pass'
end

