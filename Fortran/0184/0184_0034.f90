subroutine s1
save
type y
  integer:: z(1)
end type
type x
  integer::c(1)=1
end type
type(x)::d
integer:: b(1)=1
type(y) :: a22(1,1),a21(1,1),a23(1,1),a24(1,1),a25(1,1)
do concurrent ( k32=1:1) 
  a21(1,1)=y([ k32 ])
end do
do concurrent ( k31=1:1) 
  a22(1,1)= y([ ( f(k31) , k=1,1) ])
end do
do concurrent ( k33=1:1) 
  a23(1,1)=  y([ int(k33) ])
end do
do concurrent ( k34=1:1) 
  a24(1,1)=  y([ b  ((k34)) ])
end do
do concurrent ( k35=1:1) 
  a25(1,1)=  y([ d%c((k35)) ])
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
write(1,'(z16.16)')loc(k32)
write(1,'(z16.16)')loc(k31)
write(1,'(z16.16)')loc(k33)
write(1,'(z16.16)')loc(k34)
write(1,'(z16.16)')loc(k35)
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
