subroutine s1
type x
  integer,allocatable::z(:)
end type
type y
   type(x):: b(100)
end type
  TYPE(y) :: v(5)
do n=1,size(v)
do m=1,size(v(1)%b)
if (allocated(v(n)%b(m)%z)) print *,102
end do
end do
end
do k=1,100
call s1
end do
print *,'pass'
end
