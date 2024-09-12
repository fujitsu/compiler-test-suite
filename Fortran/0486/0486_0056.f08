MODULE m1
  TYPE :: x
    integer :: z(1)
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
  END FUNCTION 
END MODULE 
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(3),w(3)
v(1)% z(1)=1
v(2)% z(1)=2
v(3)% z(1)=3
w=   v 
if (w(1)%z(1)/=1 ) print *,101
if (w(2)%z(1)/=2 ) print *,102
if (w(3)%z(1)/=3 ) print *,103
print *,'pass'
end

     pure subroutine print1
     end subroutine
     pure subroutine print2
     end subroutine
