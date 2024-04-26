module m1
contains
subroutine s1(a1,k)
implicit integer(a)
dimension:: a1( len ( [character(k) :: '' ] ) ) 
dimension:: a2( len ( [character(k) :: '' ] ) )
dimension:: a3( len ( [character(k) :: '' ] ) ) 
dimension:: a4( len ( [character(k+1) :: '' ] ) ) 
dimension:: a5( len ( [character(k+1) :: '' ] ) )
dimension:: a6( len ( [character(k+1) :: '' ] ) ) 
a2=123456
a3=123456
a4=123456
a5=123456
a6=123456
call ss( a1, k )
call ss( a2, k )
call ss( a3, k )
call ss( a4, k+1 )
call ss( a5, k+1 )
call ss( a6, k+1 )
end subroutine
subroutine ss( a ,k)
integer     :: a(:)
if (size(a)/=k) print *,1001,size(a),k
if (any(a/=123456))print *,2001,a
end subroutine
end
use m1
implicit integer(a)
parameter (k=2)
dimension ::a1( len ( [character(k) :: ''] ) )
a1=123456
call s1(a1,k)
print *,'pass'
end


