subroutine s1

  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(1),w
allocate(w% z(1),source=1)
v= w 
if (v(1)%z(1)/=1 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
