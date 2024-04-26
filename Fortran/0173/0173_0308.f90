MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(3),w(3000)
logical:: vmask(3)=.true.
logical:: wmask(3000)
CONTAINS
  ELEMENTAL FUNCTION a( d ,k) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    integer, INTENT(IN) :: k
    TYPE(x) :: r
   r = d
   r%z = d%z+k
  END FUNCTION 
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
            FUNCTION noelm_f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x) :: r(3000)
do k=1,size(r)
   allocate(r(k)%z(1),source=1)
end do
if (d(1)%z(1)/=1) print *,1101
if (d(2)%z(1)/=2) print *,1102
if (d(3)%z(1)/=3) print *,1103
if (size(d)/=3) print *,1104
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
where (wmask)
w= noelm_f( f(  v ) )
end where
do k=1,300
if (w(k)%z(1)/=1) print *,101
end do
where (vmask)
v=a(v,1)
end where
if (v(1)%z(1)/=2) print *,91101
if (v(2)%z(1)/=3) print *,91102
if (v(3)%z(1)/=4) print *,91103
where (.not.vmask)
v=a(v,1)
end where
if (v(1)%z(1)/=2) print *,11012
if (v(2)%z(1)/=3) print *,11023
if (v(3)%z(1)/=4) print *,11034
where (vmask)
v=a(v,-2)
end where
if (v(1)%z(1)/=0) print *,11012
if (v(2)%z(1)/=1) print *,11023
if (v(3)%z(1)/=2) print *,11034
where (.not.wmask)
w= noelm_f( a(  v,1 ) )
end where
do k=1,300
if (w(k)%z(1)/=1) print *,101
end do
where (.not.wmask)
w= noelm_f( a(  v ,1) )
end where
do k=1,300
if (w(k)%z(1)/=1) print *,101
end do
deallocate(w(1)%z)
where (wmask)
w=f(w(1))
end where
where (vmask)
v=f(w(1:3))
end where
end
use m1
do k=1,1000
wmask=.true.
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
call s1
end do
print *,'pass'
end
