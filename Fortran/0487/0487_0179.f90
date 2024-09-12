module m1
contains
subroutine s1
use IEEE_ARITHMETIC
real a
integer  b( nf( IEEE_SUPPORT_DATATYPE( a ) ) )
if (size( b ) /=4) print *,101,size(b)
end subroutine
pure function nf( x )
logical,intent(in):: x
nf=10
if (x) nf=4
end function
end
use m1
call s1
print *,'pass'
end
