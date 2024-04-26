subroutine s1
type x
 integer,allocatable::x1(:)
end type
type(x):: v
v=v     
if (allocated(v%x1))print *,101
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
