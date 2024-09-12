module m1
  type x
    integer:: a
  end type
  type(x),allocatable:: c(:)
contains
  subroutine chk( x )
integer:: x(:)
if (x(1)/=10) print *,101,x(1)
  end subroutine
  subroutine chk2( x )
integer:: x(:)
if (x(1)/=1) print *,201,x(1)
  end subroutine
end
use m1

  allocate( c(10:13) )
  call chk2( lbound(c  % a))
print *,'pass'
end
