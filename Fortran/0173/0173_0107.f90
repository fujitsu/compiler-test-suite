subroutine s1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x),target :: v(6)
  TYPE(x),pointer :: p
  integer,pointer ::z(:)
allocate(v(4)% z(-100:1),source=-1)
z=> v(4)%z
p=> v(4)
v(4)=  p 
if (.not.allocated(v(4)%z) ) print *,101
if (v(4)%z(1)/=-1 ) print *,104
if (.not.associated(z,v(4)%z)) print *,30
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
