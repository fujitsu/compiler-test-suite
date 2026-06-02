module m1
 contains
  subroutine s( d )
   integer:: d(..)
   if (rank(d)/=0) print *,101
  end subroutine
end
use m1
call s( 1 )
print *,'pass'
end
