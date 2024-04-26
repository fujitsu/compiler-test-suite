MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
  TYPE(x) :: v(3),w(3)
logical:: mask(3)=[.true.,.false.,.false.]
integer::n=3
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
  ELEMENTAL FUNCTION elm_f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
where (mask)
w(:n)= elm_f( f(  v(:n) ) )
end where
if (w(1)%z(1)/=1) print *,101
if (allocated(w(2)%z)) print *,102
if (allocated(w(3)%z)) print *,102
w(1)%z(1)=-1
where (mask(:n))
w(:n)=v(1)
end where
if (w(1)%z(1)/=1) print *,111
if (allocated(w(2)%z)) print *,103
if (allocated(w(3)%z)) print *,104
w(1)%z(1)=-1
where (mask(:n))
w(:n)=v(:n)
end where
if (w(1)%z(1)/=1) print *,111
if (allocated(w(2)%z)) print *,103
if (allocated(w(3)%z)) print *,104
w(1)%z(1)=-1
where (mask(:n))
w(:n)=f(v(:n))
end where
if (w(1)%z(1)/=1) print *,111
if (allocated(w(2)%z)) print *,103
if (allocated(w(3)%z)) print *,104
end
use m1
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
do k=1,1000
call s1
end do
print *,'pass'
end
