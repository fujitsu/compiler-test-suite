module m1
contains
subroutine ss(a01,a02,a03,a04,a05,a11,a12,a13,a14,a15,k1,k2,k3,k4,p)
integer::a01(k2:k3)
integer::a02(k2:k3,k1:k3)
integer::a03(k2:k3-k1,k2:k3,k1:k3)
integer::a04(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a05(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a11(k2:k3)
integer::a12(k2:k3,k1:k3)
integer::a13(k2:k3-k1,k2:k3,k1:k3)
integer::a14(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a15(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b01(k2:k3)
integer::b02(k2:k3,k1:k3)
integer::b03(k2:k3-k1,k2:k3,k1:k3)
integer::b04(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b05(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b11(k2:k3)
integer::b12(k2:k3,k1:k3)
integer::b13(k2:k3-k1,k2:k3,k1:k3)
integer::b14(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b15(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer,pointer::p(:)
namelist /nam/a01,a02,a03,a04,a05,p
namelist /nam/a11,a12,a13,a14,a15
namelist /nam/b01,b02,b03,b04,b05
namelist /nam/b11,b12,b13,b14,b15
allocate(p(2),source=[10,11])
a01=reshape([1,2,3,4,5,6],[2])
a02=reshape([1,2,3,4,5,6],[2,3])
a03=reshape([1,2,3,4,5,6],[1,2,3])
a04=reshape([1,2,3,4,5,6],[1,1,2,3])
a05=reshape([1,2,3,4,5,6],[1,1,1,2,3])
a11=reshape([1,2,3,4,5,6],[2])
a12=reshape([1,2,3,4,5,6],[2,3])
a13=reshape([1,2,3,4,5,6],[1,2,3])
a14=reshape([1,2,3,4,5,6],[1,1,2,3])
a15=reshape([1,2,3,4,5,6],[1,1,1,2,3])
b01=reshape([1,2,3,4,5,6],[2])
b02=reshape([1,2,3,4,5,6],[2,3])
b03=reshape([1,2,3,4,5,6],[1,2,3])
b04=reshape([1,2,3,4,5,6],[1,1,2,3])
b05=reshape([1,2,3,4,5,6],[1,1,1,2,3])
b11=reshape([1,2,3,4,5,6],[2])
b12=reshape([1,2,3,4,5,6],[2,3])
b13=reshape([1,2,3,4,5,6],[1,2,3])
b14=reshape([1,2,3,4,5,6],[1,1,2,3])
b15=reshape([1,2,3,4,5,6],[1,1,1,2,3])
write(1,nam)
p=[20,21]
a01=10+reshape([1,2,3,4,5,6],[2])
a02=10+reshape([1,2,3,4,5,6],[2,3])
a03=10+reshape([1,2,3,4,5,6],[1,2,3])
a04=10+reshape([1,2,3,4,5,6],[1,1,2,3])
a05=10+reshape([1,2,3,4,5,6],[1,1,1,2,3])
a11=10+reshape([1,2,3,4,5,6],[2])
a12=10+reshape([1,2,3,4,5,6],[2,3])
a13=10+reshape([1,2,3,4,5,6],[1,2,3])
a14=10+reshape([1,2,3,4,5,6],[1,1,2,3])
a15=10+reshape([1,2,3,4,5,6],[1,1,1,2,3])
b01=10+reshape([1,2,3,4,5,6],[2])
b02=10+reshape([1,2,3,4,5,6],[2,3])
b03=10+reshape([1,2,3,4,5,6],[1,2,3])
b04=10+reshape([1,2,3,4,5,6],[1,1,2,3])
b05=10+reshape([1,2,3,4,5,6],[1,1,1,2,3])
b11=10+reshape([1,2,3,4,5,6],[2])
b12=10+reshape([1,2,3,4,5,6],[2,3])
b13=10+reshape([1,2,3,4,5,6],[1,2,3])
b14=10+reshape([1,2,3,4,5,6],[1,1,2,3])
b15=10+reshape([1,2,3,4,5,6],[1,1,1,2,3])
write(1,nam)
end subroutine
subroutine chk(a01,a02,a03,a04,a05,a11,a12,a13,a14,a15,k1,k2,k3,k4,p)
integer::a01(k2:k3)
integer::a02(k2:k3,k1:k3)
integer::a03(k2:k3-k1,k2:k3,k1:k3)
integer::a04(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a05(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a11(k2:k3)
integer::a12(k2:k3,k1:k3)
integer::a13(k2:k3-k1,k2:k3,k1:k3)
integer::a14(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a15(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b01(k2:k3)
integer::b02(k2:k3,k1:k3)
integer::b03(k2:k3-k1,k2:k3,k1:k3)
integer::b04(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b05(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b11(k2:k3)
integer::b12(k2:k3,k1:k3)
integer::b13(k2:k3-k1,k2:k3,k1:k3)
integer::b14(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::b15(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer,pointer::p(:)
namelist /nam/a01,a02,a03,a04,a05,p
namelist /nam/a11,a12,a13,a14,a15
namelist /nam/b01,b02,b03,b04,b05
namelist /nam/b11,b12,b13,b14,b15
allocate(p(2))
rewind 1
do k=1,10
read(1,nam,end=100)
if (any(p/=[10,11])) print *,1111
if(any(a01/=reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(a02/=reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(a03/=reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(a04/=reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(a05/=reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
if(any(a11/=reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(a12/=reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(a13/=reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(a14/=reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(a15/=reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
if(any(b01/=reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(b02/=reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(b03/=reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(b04/=reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(b05/=reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
if(any(b11/=reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(b12/=reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(b13/=reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(b14/=reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(b15/=reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
read(1,nam)
if (any(p/=[20,21])) print *,2111
if(any(a01/=10+reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(a02/=10+reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(a03/=10+reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(a04/=10+reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(a05/=10+reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
if(any(a11/=10+reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(a12/=10+reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(a13/=10+reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(a14/=10+reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(a15/=10+reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
if(any(b01/=10+reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(b02/=10+reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(b03/=10+reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(b04/=10+reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(b05/=10+reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
if(any(b11/=10+reshape([1,2,3,4,5,6],[2]))) print *,1001
if(any(b12/=10+reshape([1,2,3,4,5,6],[2,3]))) print *,1001
if(any(b13/=10+reshape([1,2,3,4,5,6],[1,2,3]))) print *,1001
if(any(b14/=10+reshape([1,2,3,4,5,6],[1,1,2,3]))) print *,1001
if(any(b15/=10+reshape([1,2,3,4,5,6],[1,1,1,2,3]))) print *,1001
end do
100 continue
if (k/=11) print *,20001
end subroutine

end
subroutine s1
use m1
parameter(k1=1,k2=2,k3=3,k4=4)
integer,pointer::p(:)
integer::a01(k2:k3)
integer::a02(k2:k3,k1:k3)
integer::a03(k2:k3-k1,k2:k3,k1:k3)
integer::a04(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a05(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a11(k2:k3)
integer::a12(k2:k3,k1:k3)
integer::a13(k2:k3-k1,k2:k3,k1:k3)
integer::a14(k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
integer::a15(k3:k3,k4-k1:k4-k1,k2:k3-k1,k2:k3,k1:k3)
do k=1,10
call       ss(a01,a02,a03,a04,a05,a11,a12,a13,a14,a15,k1,k2,k3,k4,p)
end do
call     chk(a01,a02,a03,a04,a05,a11,a12,a13,a14,a15,k1,k2,k3,k4,p)
end
call s1
print *,'pass'
end
