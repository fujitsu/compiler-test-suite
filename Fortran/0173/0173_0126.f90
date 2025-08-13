MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
    contains
     FINAL:: d1,d2
  END TYPE
   interface
     pure subroutine print1
     end subroutine
     pure subroutine print2
     end subroutine
   end interface
CONTAINS
pure SUBROUTINE d1(bv)
  TYPE(x),intent(in)::bv
   call print1
END SUBROUTINE
pure SUBROUTINE d2(bv)
  TYPE(x),intent(in)::bv(:)
   call print2
END SUBROUTINE
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(3),w(3)
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=1)
allocate(v(3)% z(1),source=1)
w= f(  v ) 
if (w(1)%z(1)/=2 ) print *,101
if (w(2)%z(1)/=2 ) print *,102
if (w(3)%z(1)/=2 ) print *,103
!call chk
print *,'pass'
end

     subroutine print1
  write(15,*)1
     end subroutine
     subroutine print2
  write(15,*)2
     end subroutine
subroutine chk
rewind 15
read(15,*) k;if (k/=1) print *,301
read(15,*) k;if (k/=1) print *,302
read(15,*) k;if (k/=1) print *,303
read(15,*) k;if (k/=2) print *,304
read(15,*) k;if (k/=1) print *,304
read(15,*,end=10) k; print *,305
10 end
