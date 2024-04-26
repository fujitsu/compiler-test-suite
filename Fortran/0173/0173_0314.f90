MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: w(3),v(3000)
logical:: wmask(3)
logical:: vmask(3000)
integer::n=3000,m=3
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
    TYPE(x) :: r(3)
do k=1,size(r)
   allocate(r(k)%z(1),source=1)
end do
do k=1,size(d)
if (d(k)%z(1)/=k) print *,1101,k, d(k)%z(1)
end do
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
where (wmask(:m))
w(:m)= noelm_f( f(  v(:n) ) )
end where
do k=1,3
if (w(k)%z(1)/=1) print *,101
end do
where (vmask(:n))
v(:n)=a(v(:n),1)
end where
do k=1,size(v)
if (v(k)%z(1)/=k+1) print *,911012
end do
where (.not.vmask(:n))
v(:n)=a(v(:n),1)
end where
do k=1,size(v)
if (v(k)%z(1)/=k+1) print *,91101
end do
where (vmask(:n))
v(:n)=a(v(:n),-2)
end where
do k=1,size(v)
if (v(k)%z(1)/=k-1) print *,92101
end do
where (.not.wmask(:m))
w(:m)= noelm_f( a(  v(:n),1 ) )
end where
do k=1,3
if (w(k)%z(1)/=1) print *,101
end do
where (.not.wmask(:m))
w(:m)= noelm_f( a(  v(:n),1 ) )
end where
do k=1,3
if (w(k)%z(1)/=1) print *,101
end do
deallocate(w(1)%z)
where (wmask(:m))
w(:m)=f(w(1))
end where
where (vmask(:n))
v(:n)=f(w(1))
end where
end
use m1
do kk=1,1000
wmask=.true.
vmask=.true.
do k=1,size(v)
allocate(v(k)% z(1),source=k)
end do
call s1
end do
print *,'pass'
end
