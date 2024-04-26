subroutine s1
type x
 integer,allocatable::x1(:)
end type
type(x):: v
integer,allocatable::y(:)
v=x( y )
if (allocated(v%x1))print *,101
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
