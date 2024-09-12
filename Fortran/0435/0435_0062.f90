subroutine s1
type x
  integer,allocatable::z(:)
end type
type y
   type(x):: b(100)
end type
  TYPE(y) :: v(50)
   type(x):: bb(100)
allocate(bb(1)%z(2),source=[1,2])
v=y(  bb  )
do n=1,size(v)
do m=1,size(v(1)%b)
if (m==1) then
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
