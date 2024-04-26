MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d,a ) RESULT( r )
    TYPE(x), INTENT(IN) :: d,a
    TYPE(x) :: r
   r=d
   r%z=d%z+a%z+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(2,3,1),w(2,3,1)
  logical::mask(1,3,1)
allocate(v(2,1,1)% z(2),source=[01,02])
allocate(v(2,2,1)% z(2),source=[11,12])
allocate(v(2,3,1)% z(2),source=[21,22])
mask=.false.
mask(1,1,1)=.true.
where(mask)
v(:1,:,:)= f(  v(2:,:,:) , v(2,2,1) )
end where
if (any(v(1,1,1)%z/=[13,15]) ) print *,101
if (allocated(v(1,2,1)%z )) print *,2019
if (allocated(v(1,3,1)%z )) print *,2029
if (.not.allocated(v(2,1,1)%z )) print *,201
if (.not.allocated(v(2,2,1)%z )) print *,202
if (.not.allocated(v(2,3,1)%z )) print *,203
if (any(v(2,1,1)%z/=[01,02]) ) print *,101
if (any(v(2,2,1)%z/=[11,12]) ) print *,102
if (any(v(2,3,1)%z/=[21,22]) ) print *,103
end
do k=1,100
call s1
end do
print *,'pass'
end
