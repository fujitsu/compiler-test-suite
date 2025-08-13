module m1
type y
  integer:: z(1)
end type
type x
  integer::c(1)=1
end type
interface operator(+)
 procedure :: xxxyyy,yyyxxx
end interface
contains
elemental function xxxyyy(xx,yy)
type(y),intent(in)::xx
integer,intent(in)::yy
type(y)::xxxyyy
xxxyyy%z=xx%z+min(0,yy)
end function 
elemental function yyyxxx(yy,xx)
type(y),intent(in)::xx
integer,intent(in)::yy
type(y)::yyyxxx
yyyxxx%z=xx%z+min(0,yy)
end function 
end
subroutine s1
use m1
save
type(x)::d
integer:: b(1)=1
type(y) :: a22(1,1),a21(1,1),a23(1,1),a24(1,1),a25(1,1)
do concurrent ( k32=1:1) 
  a21(1,1)=y([ 1   ])+ k32
end do
do concurrent ( k31=1:1) 
  a22(1,1)= k31 +y([ ( f(1) , k=1,1) ]) 
end do
do concurrent ( k33=1:1) 
  a23(1,1)=  y([ int( 1) ]) + k33
end do
do concurrent ( k34=1:1) 
  a24(1,1)=  y([ b  (( 1 )) ]) + k34
end do
do concurrent ( k35=1:1) 
  a25(1,1)=  k35 + y([ d%c(( 1 )) ])
end do
n=0
call ss(n)
contains
pure function f(k) result(r)
integer,intent(in)::k
integer::r
r=k
end function
recursive subroutine ss(n)
integer::n
if (a21(1,1)%z(1)/=1) print *,601
if (a22(1,1)%z(1)/=1) print *,602
if (a23(1,1)%z(1)/=1) print *,603
if (a24(1,1)%z(1)/=1) print *,604
if (a25(1,1)%z(1)/=1) print *,605
  k32=n
  k31=n
  k33=n
  k34=n
  k35=n
write(29,'(z16.16)')loc(k32)
write(29,'(z16.16)')loc(k31)
write(29,'(z16.16)')loc(k33)
write(29,'(z16.16)')loc(k34)
write(29,'(z16.16)')loc(k35)
n=n+1
if (n<2) call ss(n)
n=n-1
if (k35/=n) print *,52204,k34,n
if (k34/=n) print *,42204,k34,n
if (k33/=n) print *,32204,k33,n
if (k32/=n) print *,12204,k32,n
if (k31/=n) print *,22204,k31,n
end subroutine
end
call s1
print *,'pass'
end
