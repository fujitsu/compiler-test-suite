subroutine s1
type x
  integer,allocatable::z(:)
end type
  TYPE(x) :: v,w
allocate(v% z(1),source=1)
w= v
if (w%z(1)/=1 ) print *,101
end
do k=1,1000
call s1
end do
print *,'pass'
end
