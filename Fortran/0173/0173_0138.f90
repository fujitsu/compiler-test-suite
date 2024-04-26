subroutine s1
type x
 integer,allocatable::x1(:)
 integer,allocatable::x2
end type
type(x):: v
v=x(null(),null())
if (allocated(v%x1))print *,101
if (allocated(v%x2))print *,102
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
