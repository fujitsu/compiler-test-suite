subroutine s1

  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(3),w(1)
allocate(w(1)% z(1),source=1)
v= w(1) 
if (v(1)%z(1)/=1 ) print *,101
if (v(2)%z(1)/=1 ) print *,102
if (v(3)%z(1)/=1 ) print *,103
end
do k=1,100
call s1
end do
print *,'pass'
end
