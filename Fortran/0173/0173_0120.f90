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
  END FUNCTION 
END MODULE 
use  m1
  IMPLICIT NONE
  TYPE(x) :: v,w
allocate(v% z(1),source=1)
w= f(  v )
if (w%z(1)/=1 ) print *,101
call chk
print *,'pass'
end

     subroutine print1
  write(9,*)1
     end subroutine
     subroutine print2
  write(9,*)2
     end subroutine
subroutine chk
rewind 9
read(9,*) k;if (k/=1) print *,301
read(9,*) k;if (k/=1) print *,302
read(9,*) k;if (k/=1) print *,303
read(9,*,end=10) k; print *,304
10 end
