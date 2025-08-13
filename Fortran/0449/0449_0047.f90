module m1
  integer,parameter::n=1000
  type x
     integer::x1=1
     integer,allocatable::x2(:)
  end type
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION
  subroutine s1
   type(x):: v(n)
   do k=1,n
     allocate( v(k)%x2(10))
   end do
   do k=1,n
     v(k)= f(v(k))
     write(103,'(z16.16)') loc( v(k)% x2 )
   end do
  end subroutine
end

use m1
call s1
print *,'pass'
end
