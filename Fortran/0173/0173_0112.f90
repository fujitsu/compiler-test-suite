subroutine s1

  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(3)
do k=1,100
allocate(v(1)% z(1),source=1)
v= v(1) 
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=1 ) print *,102
if (v(3)%z(1)/=1 ) print *,103
deallocate(v(1)%z)
deallocate(v(2)%z)
deallocate(v(3)%z)
end do
end
do k=1,100
call s1
end do
print *,'pass'
end
