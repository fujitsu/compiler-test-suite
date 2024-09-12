subroutine s1
type x
  integer,allocatable::z(:)
end type
type y
   type(x):: b(10)
end type
  TYPE(y) :: v
   type(x):: bb(10)
allocate(bb(1)%z(2),source=[1,2])
v=y(  bb  )
if (any(v%b(1)%z/=[1,2])) print *,101
if (size(v%b(1)%z)/=2) print *,102
do n=2,size(bb)
if (allocated(v%b(n)%z)) print *,101
end do
end
do n=1,100
call s1
end do
print *,'pass'
end
