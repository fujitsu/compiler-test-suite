module m1
use IEEE_ARITHMETIC 
contains
 subroutine s1
   type( IEEE_FLAG_TYPE) :: FLAG= IEEE_UNDERFLOW
  integer a( if ( IEEE_SUPPORT_HALTING( FLAG ) ) )
  if (size( a )/=2 ) print *,101
 end subroutine
 pure function if( f )
  logical,intent(in):: f
  if=1
  if( f ) if=2
 end function

end
use m1
call s1
print *,'pass'
end
