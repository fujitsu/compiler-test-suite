module m1
  contains
  subroutine sub(x)
  integer,optional::x(2)
  if (present(x)) then
     print *,101
  endif
  end subroutine
  subroutine foo( a )
  integer,optional:: a(:)
  call sub( a )
  end subroutine
end
use m1
call foo( )
print *,'pass'
end
