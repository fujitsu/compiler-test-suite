subroutine s(b,k2,k1)
complex ,allocatable:: a(:)
complex :: b(k1:k2),c(-2:1)
type x
complex ::c(-2:1)
complex ,allocatable:: a(:)
end type
type(x):: v1
type(x),allocatable:: v2

allocate( a(-2:1))
allocate( v2 )
allocate( v1%a(-2:1))
allocate( v2%a(-2:1))
if (ubound( a% im,1) /= 4) print *,101
if (ubound( b% im,1) /= 4) print *,102
if (ubound( c% im,1) /= 4) print *,103
if (ubound( v1%a% im,1) /= 4) print *,104
if (ubound( v2%a% im,1) /= 4) print *,105
if (ubound( v1%c% im,1) /= 4) print *,106
if (ubound( v2%c% im,1) /= 4) print *,107
end
parameter( k1=-2, k2=1)
complex :: b(k1:k2)
call s(b,k2,k1)
print *,'pass'
end
