module m1
type x
  integer::a
  integer,allocatable::z(:)
end type
type y
  integer::a
   type(x):: b(2)
end type
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION 
  ELEMENTAL FUNCTION ff( d ) RESULT( r ) 
    integer, INTENT(IN) :: d
    integer :: r
   r=d 
  END FUNCTION 
end
subroutine s1
use m1
  TYPE(y) :: v(2)
type(x):: b(2)
allocate(b(1)%z(2),source=[1,2])
allocate(b(2)%z(2),source=[1,2])
v=y( 1 ,   b )
end
do k=1,100
call s1
end do
print *,'pass'
end

