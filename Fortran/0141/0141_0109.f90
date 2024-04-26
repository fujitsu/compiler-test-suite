module m1
interface gnr
   procedure s1i4,s1i8,s1i2,s1i1
end interface
real(8):: a=-1.9_8
contains
subroutine s1
call gnr( floor( a ) ,1)
call gnr( floor( a,kind=1 ),2 )
call gnr( floor( a,kind=2 ),3 )
call gnr( floor( a,kind=4 ),4 )
call gnr( floor( a,kind=8 ),5 )
end subroutine
subroutine s1i4(k,kk)
integer(4):: k
if (k/=-2) print *,101,k,kk
if (kk/=4 .and. kk/=1) print *,111,kk
end subroutine
subroutine s1i8(k,kk)
integer(8):: k
if (k/=-2) print *,102,k,kk
if (kk/=5 ) print *,112,kk
end subroutine
subroutine s1i1(k,kk)
integer(1):: k
if (k/=-2) print *,103,k,kk
if (kk/=2 ) print *,113,kk
end subroutine
subroutine s1i2(k,kk)
integer(2):: k
if (k/=-2) print *,104,k,kk
if (kk/=3 ) print *,114,kk
end subroutine
end
use m1
call s1
print *,'pass'
end
