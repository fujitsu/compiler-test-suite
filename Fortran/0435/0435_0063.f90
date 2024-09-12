subroutine s1
type x
  integer,allocatable::z(:)
end type
type y
   type(x):: b(10)
end type
  TYPE(y) :: v(5),vv
allocate(vv%b(5)%z(2),source=[1,2])
v=vv
do n=1,size(v)
do m=1,size(v(1)%b)
if (m==5) then
if (any(v(n)%b(m)%z/=[1,2])) print *,101
else
if (allocated(v(n)%b(m)%z)) print *,102
endif
end do
end do
end
do k=1,100
call s1
end do
print *,'pass'
end
