module m1
contains
subroutine s1(a1,k)
character( len ( [character(k) :: '' ] ) ) :: a1
character( len ( [character(k) :: '' ] ) ) :: a2
character( len ( [character(k) :: '' ] ) ) :: a3
character( len ( [character(k+1) :: '' ] ) ) :: a4
character( len ( [character(k+1) :: '' ] ) ) :: a5
character( len ( [character(k+1) :: '' ] ) ) :: a6
a2='123456'
a3='123456'
a4='123456'
a5='123456'
a6='123456'
call ss( a1, k )
call ss( a2, k )
call ss( a3, k )
call ss( a4, k+1 )
call ss( a5, k+1 )
call ss( a6, k+1 )
end subroutine
subroutine ss( a ,k)
character(*):: a
if (len(a)/=k) print *,1001,len(a),k
if (a/='1234'(:k))print *,2001,a
end subroutine
end
use m1
parameter (k=2)
character( len ( [character(k) :: ''] ) ):: a1
a1='123456'
call s1(a1,k)
print *,'pass'
end


