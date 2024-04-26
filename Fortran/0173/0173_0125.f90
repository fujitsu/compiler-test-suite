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
  TYPE(x) :: v(3),w
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=1)
allocate(v(3)% z(1),source=1)
call s( f(  v ) )
call chk
print *,'pass'
contains
subroutine s(dd)
    TYPE(x), INTENT(IN) :: dd(:)
if (dd(1)%z(1)/=2 ) print *,101
if (dd(2)%z(1)/=2 ) print *,102
if (dd(3)%z(1)/=2 ) print *,103
end subroutine
end

     subroutine print1
  write(1,*)1
     end subroutine
     subroutine print2
  write(1,*)2
     end subroutine
subroutine chk
rewind 1
read(1,*) k;if (k/=1) print *,301
read(1,*) k;if (k/=1) print *,302
read(1,*) k;if (k/=1) print *,303
read(1,*) k;if (k/=1) print *,304
read(1,*,end=10) k; print *,305
10 end
