subroutine s1
type x
 integer,allocatable::x1(:)
end type
type(x):: v
v=x(null())
if (allocated(v%x1))print *,101
end
call s1
do k=1,100
call s1
end do
print *,'pass'
end
