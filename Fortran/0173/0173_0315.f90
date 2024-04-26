MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(2,2,2),w(2,2,2)
logical:: mask(2,2,2)=.false.
integer::n=2
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
            FUNCTION noelm_f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:,:,:)
    TYPE(x) :: r(2,2,2)
   r = d
do k1=1,2
do k2=1,2
do k3=1,2
if (r(k1,k2,k3)%z(1)/=1) print *,1101
end do
end do
end do
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
where (mask(:n,:n,:n))
w(:n,:n,:n)= noelm_f( f(  v(:n,:n,:n) ) )
end where
if (w(1,1,1)%z(1)/=1) print *,101
do k1=2,2
do k2=1,2
do k3=1,2
if (allocated(w(k1,k2,k3)%z)) print *,102
end do
end do
end do
where (mask(:n,:n,:n))
w(:n,:n,:n)=v(1,1,1)
end where
if (w(1,1,1)%z(1)/=1) print *,101
do k1=2,2
do k2=1,2
do k3=1,2
if (allocated(w(k1,k2,k3)%z)) print *,102
end do
end do
end do
end
use m1
mask(1,1,1)=.true.
do k1=1,2
do k2=1,2
do k3=1,2
allocate(v(k1,k2,k3)% z(1),source=1)
end do
end do
end do
call s1
print *,'pass'
end
