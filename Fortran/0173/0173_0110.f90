subroutine s1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x),target :: v(6)
  TYPE(x),pointer :: p
  integer,pointer ::z(:)
allocate(v(1)% z(-100:1),source=-1)
allocate(v(2)% z(-1:1),source=-2)
z=> v(2)%z
p=> v(1)
v=  p 
if (any(v(1)%z/=-1 )) print *,104
if (any(v(2)%z/=-1 )) print *,204
if (any(v(3)%z/=-1 )) print *,304
if (any(v(4)%z/=-1 )) print *,404
if (associated(z, v(2)%z) ) print *,200 
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
