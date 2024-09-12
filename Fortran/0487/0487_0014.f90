module m1
  type x1
    integer:: xx
  end type
  type,extends(x1):: x2
    integer:: xxx
  end type
 contains
  subroutine s( d )
   class(x1)::d
   if (rank(d)/=0) print *,101
  end subroutine
end
use m1
type(x2)::a
call s( a )
print *,'pass'
end
