module m1
  contains
  subroutine sub(x)
  integer,optional::x(2)
  if (present(x)) then
     print *,101
  endif
  end subroutine
  subroutine foo( )
  integer,pointer:: p(:)
  p=>null()
  call sub( p )
  end subroutine
end
use m1
call foo( )
print *,'pass'
end
  
