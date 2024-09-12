module m1
implicit none
integer,parameter::n=2,a(2)=[1,2],k=8
integer:: x01(n)
data ( x01(k01), integer*8::k01=1,n) /1,2/
integer :: x02(n)= [ (k02 , integer*8::k02=1,n) ] 
integer :: x03(n)= [ (k01 , integer*8::k01=1,n) ] 
integer :: x04(n), x05(n),x06(n), x07(n)

contains
subroutine s1
if (any(x01/=a)) print *,201
if (any(x02/=a)) print *,202
if (any(x03/=a)) print *,203
x04= [ (k04 , integer*8::k04=1,n) ] 
if (any(x04/=a)) print *,204
x05= [ (k01 , integer*8::k01=1,n) ] 
if (any(x05/=a)) print *,205
if (kind( [ (k01 , integer*8::k01=1,n) ] )/= k) print *,206
do concurrent( integer*8 :: k05=1:n)
  x06(k05)= k05
end do
if (any(x06/=a)) print *,206
forall       ( integer*8 :: k06=1:n)
  x07(k06)= k06
end forall
if (any(x07/=a)) print *,207
end
end
use m1
call s1
print *,'pass'
end
