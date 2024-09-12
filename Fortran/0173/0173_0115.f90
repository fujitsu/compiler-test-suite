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
w= f(  v )
if (w(1)%z(1)/=1 ) print *,101
if (w(2)%z(1)/=2 ) print *,102
if (w(3)%z(1)/=3 ) print *,103
!call chk
print *,'pass'
end

     subroutine print1
write(1,*) 1
     end subroutine
     subroutine print2
 write(1,*)2
     end subroutine
subroutine chk 
rewind 1
read(1,*) k;if (k/=1) print *,301
read(1,*) k;if (k/=1) print *,302
read(1,*) k;if (k/=1) print *,303
read(1,*) k;if (k/=2) print *,305
read(1,*) k;if (k/=1) print *,306
read(1,*,end=10) k; print *,304
10 end 
