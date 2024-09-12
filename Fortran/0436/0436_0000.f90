MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  TYPE(x) :: w(1)
  integer:: var(2)=[1,2]
  integer,allocatable:: var2(:)
w= x(    var  )
if (any(w(1)%z/=[1,2]) ) print *,101
call sub( x( var ) )
allocate(var2(2),source=[1,2])
call sub( x( var2 ) )
end
do k=1,130
call s1
end do
print *,'pass'
end
subroutine sub(w)
use m1
  TYPE(x) :: w
if (any(w%z/=[1,2]) ) print *,101
deallocate (w%z)
end

