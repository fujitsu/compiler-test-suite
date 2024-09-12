module m1
use IEEE_ARITHMETIC 
contains
 subroutine s1
   type( IEEE_FLAG_TYPE) :: FLAG= IEEE_UNDERFLOW
  integer a( if ( IEEE_SUPPORT_FLAG( FLAG ) ) )
  if (size( a )/=2 ) print *,101
 end subroutine
 subroutine s2
   type( IEEE_FLAG_TYPE) :: FLAG= IEEE_UNDERFLOW
  integer a( if ( IEEE_SUPPORT_FLAG( FLAG ,X) ) )
  if (size( a )/=2 ) print *,101
 end subroutine
 subroutine s3(i)
   type( IEEE_FLAG_TYPE) :: FLAG= IEEE_UNDERFLOW
   real(4):: x(2)
  integer a( if ( IEEE_SUPPORT_FLAG( FLAG ,X(:i)) ) )
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
call s2
call s3(2)
print *,'pass'
end
